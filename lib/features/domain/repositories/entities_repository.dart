import 'package:dartz/dartz.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/features/data/datasources/app_database.dart';

abstract class EntitiesRepository {

  Future<Either<Failure, void>?>? addAuditEntities();
  Future<Either<Failure, List<AuditEntityData?>>?>? getAuditEntities();
  Future<Either<Failure, void>?>? updateAuditEntities(AuditEntityData auditEntities);
  Future<Either<Failure, void>?>? deleteAuditEntities(AuditEntityData auditEntities);
}