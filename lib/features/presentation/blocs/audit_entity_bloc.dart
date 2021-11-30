import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/core/usecase/usecase.dart';
import 'package:entity_sql_app/features/data/datasources/app_database.dart';
import 'package:entity_sql_app/features/domain/usecaes/add_audit_entities.dart';
import 'package:entity_sql_app/features/domain/usecaes/get_audit_entities.dart';
import 'package:entity_sql_app/features/domain/usecaes/remove_audit_entity.dart';
import 'package:entity_sql_app/features/domain/usecaes/update_audit_antity.dart';
import 'package:equatable/equatable.dart';

part 'audit_entity_event.dart';
part 'audit_entity_state.dart';

const String FAILURE_MESSAGE = 'Failure';
class AuditEntityBloc extends Bloc<AuditEntityEvent, AuditEntityState> {
  final GetAuditEntities getAuditEntities;
  final AddAuditEntities addAuditEntities;
  final DeleteAuditEntities deleteAuditEntities;
  final UpdateAuditEntities updateAuditEntities;

  AuditEntityBloc(this.getAuditEntities, this.updateAuditEntities,
      this.deleteAuditEntities, this.addAuditEntities)
      :  super(Empty()); /*{
    on<GetAllAuditEntityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }*/
    @override
    Stream<AuditEntityState> mapEventToState(AuditEntityEvent event,) async* {
      if (event is GetAllAuditEntityEvent) {
        yield* _getAllEntities();
      }
      if (event is DeleteAuditEntityEvent) {
        await deleteAuditEntities(event.auditEntities!);
        yield* _getAllEntities();
      }
      if (event is AddAuditEntityEvent) {
        await addAuditEntities(NoParams());
        yield* _getAllEntities();
      }
      if (event is UpdateAuditEntityEvent) {
        await updateAuditEntities(event.auditEntities!);
        yield* _getAllEntities();
      }
    }
    Stream<AuditEntityState> _getAllEntities() async* {
      yield Loading();
      final getAuditEntitiesList = await getAuditEntities(NoParams());
      yield* _eitherLoadedOrErrorState(getAuditEntitiesList);
    }

    Stream<AuditEntityState> _eitherLoadedOrErrorState(
        Either<Failure, List<AuditEntityData?>?>? either,) async* {
      if (either != null) {
        yield either.fold(
              (failure) => Error(message: _mapFailureToMessage(failure)),
              (list) => Loaded(auditEntitiesList: list),
        );
      }
    }
    String _mapFailureToMessage(Failure failure) {
      switch (failure.runtimeType) {
        case LocalFailure:
          return FAILURE_MESSAGE;
        default:
          return 'Unexpected Error';
      }
    }
  }