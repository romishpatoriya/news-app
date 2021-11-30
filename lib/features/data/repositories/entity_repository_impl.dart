import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:entity_sql_app/core/error/failure.dart';
import 'package:entity_sql_app/features/data/datasources/app_database.dart';
import 'package:entity_sql_app/features/data/model/entity_model.dart';
import 'package:entity_sql_app/features/domain/repositories/entities_repository.dart';
import 'package:flutter/services.dart';

class EntitiesRepositoryImpl implements EntitiesRepository {

  final AppDatabase appDatabase;
   const EntitiesRepositoryImpl({required this.appDatabase});

  @override
  Future<Either<Failure, void>?>? addAuditEntities() async {
    try {
      var jsonText = await rootBundle.loadString('assets/Entity.json');
      Map<String, dynamic> map = json.decode(jsonText);
      List<dynamic> data = map["auditEntity"];
      List<AuditEntitiesModel> subList = data.map((e) => AuditEntitiesModel.fromJson(e)).toList();
      List<AuditEntityCompanion> list = [];

      for (var element in subList) {
        final data = AuditEntityCompanion.insert(
          entityException: Value(element.entityException),
          entityEndDate: Value(element.entityEndDate),
          entityLevel: Value(element.entityLevel),
          auditEntityName: Value(element.auditEntityName),
          auditEntityId: Value(element.auditEntityId),
          auditEntityTypeId: Value(element.auditEntityTypeId),
          auditId: Value(element.auditId),
          auditParentEntityId: Value(element.auditParentEntityId),
          barcodeNFC: Value(element.barcodeNfc),
          isLeafNode: Value(element.isLeafNode),
          scheduleOccurrenceIds: Value(element.scheduleOccurrenceIds),
          sequenceNo: Value(element.sequenceNo),
        );
        list.add(data);
      }
      print(list);
      final add = await appDatabase.entityDao
          .addAuditEntity(list);
      return Right(add);
    } catch (e) {
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, void>?>? deleteAuditEntities(AuditEntityData auditEntities) async {
    final delete = await appDatabase.entityDao
        .deleteEntity(auditEntities);
    return Right(delete);
  }

  @override
  Future<Either<Failure, List<AuditEntityData?>>?>? getAuditEntities() async {

    try{
      final get = await appDatabase.entityDao.watchAllEntity();
      return Right(get);
    }on Exception{
      return Left(LocalFailure());
    }

  }

  @override
  Future<Either<Failure, void>?>? updateAuditEntities(AuditEntityData auditEntities) async {
    final update = await appDatabase.entityDao
        .updateEntity(auditEntities);
    return Right(update);
  }

  
}