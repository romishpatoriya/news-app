import 'package:dartz/dartz.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/core/usecase/usecase.dart';
import 'package:entity_sql_app/features/data/datasources/app_database.dart';
import 'package:entity_sql_app/features/domain/repositories/entities_repository.dart';

class DeleteAuditEntities extends UseCase<void, AuditEntityData> {
  final EntitiesRepository repository;

  DeleteAuditEntities(this.repository);

  @override
  Future<Either<Failure, void>?>? call(AuditEntityData params) async {
    return await repository.deleteAuditEntities(params);
  }
}