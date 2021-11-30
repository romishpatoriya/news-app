import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'DAOs/entity_dao.dart';

part 'app_database.g.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

class AuditEntity extends Table {

  IntColumn get auditEntityId => integer().nullable()();
  IntColumn get auditId => integer().nullable()();
  TextColumn get auditEntityName => text().nullable()();
  IntColumn get auditEntityTypeId => integer().nullable()();
  IntColumn get auditParentEntityId => integer().nullable()();
  IntColumn get sequenceNo => integer().nullable()();
  DateTimeColumn get entityEndDate => dateTime().nullable()();
  BoolColumn get isLeafNode => boolean().nullable()();
  TextColumn get barcodeNFC => text().nullable()();
  IntColumn get entityLevel => integer().nullable()();
  BoolColumn get entityException => boolean().nullable()();
  TextColumn get scheduleOccurrenceIds => text().nullable()();

  @override
  Set<Column> get primaryKey => {auditEntityId};

}

@DriftDatabase(tables: [AuditEntity],daos: [EntityDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;
}



