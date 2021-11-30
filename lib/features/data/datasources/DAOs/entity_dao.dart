import 'package:drift/drift.dart';
import 'package:entity_sql_app/features/data/model/entity_model.dart';

import '../app_database.dart';
part 'entity_dao.g.dart';

@DriftAccessor(tables: [AuditEntity])
class EntityDao extends DatabaseAccessor<AppDatabase> with _$EntityDaoMixin {

  EntityDao(AppDatabase db) : super(db);

  //Future<List<AuditEntityData>> get getAllAuditEntity => select(auditEntity).get();

  Future<List<AuditEntityData>> watchAllEntity() => select(auditEntity).get();

  Future<void> addAuditEntity(List<AuditEntityCompanion> auditEntities) async{
    await batch((batch) {
      batch.insertAll(auditEntity, auditEntities);
    });
  }

  Future<void> updateEntity(AuditEntityData entityData) => update(auditEntity).replace(entityData);

  Future<void> deleteEntity(AuditEntityData entityData) => delete(auditEntity).delete(entityData);

}

