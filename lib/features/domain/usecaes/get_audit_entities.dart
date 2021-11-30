import 'package:dartz/dartz.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/core/usecase/usecase.dart';
import 'package:entity_sql_app/features/data/datasources/app_database.dart';
import 'package:entity_sql_app/features/domain/repositories/entities_repository.dart';

class GetAuditEntities extends UseCase<List<AuditEntityData?>, NoParams> {
  final EntitiesRepository repository;

  GetAuditEntities(this.repository);

  @override
  Future<Either<Failure, List<AuditEntityData?>>?>? call(NoParams params) async {
    return await repository.getAuditEntities();
  }
}