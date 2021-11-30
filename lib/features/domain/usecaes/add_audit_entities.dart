import 'package:dartz/dartz.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/core/usecase/usecase.dart';
import 'package:entity_sql_app/features/domain/repositories/entities_repository.dart';

class AddAuditEntities extends UseCase<void, NoParams> {
  final EntitiesRepository repository;

  AddAuditEntities(this.repository);

  @override
  Future<Either<Failure, void>?>? call(NoParams params) async {
    return await repository.addAuditEntities();
  }
}