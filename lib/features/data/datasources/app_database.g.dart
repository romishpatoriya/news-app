// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AuditEntityData extends DataClass implements Insertable<AuditEntityData> {
  final int? auditEntityId;
  final int? auditId;
  final String? auditEntityName;
  final int? auditEntityTypeId;
  final int? auditParentEntityId;
  final int? sequenceNo;
  final DateTime? entityEndDate;
  final bool? isLeafNode;
  final String? barcodeNFC;
  final int? entityLevel;
  final bool? entityException;
  final String? scheduleOccurrenceIds;
  AuditEntityData(
      {this.auditEntityId,
      this.auditId,
      this.auditEntityName,
      this.auditEntityTypeId,
      this.auditParentEntityId,
      this.sequenceNo,
      this.entityEndDate,
      this.isLeafNode,
      this.barcodeNFC,
      this.entityLevel,
      this.entityException,
      this.scheduleOccurrenceIds});
  factory AuditEntityData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityData(
      auditEntityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_entity_id']),
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_id']),
      auditEntityName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_entity_name']),
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_entity_type_id']),
      auditParentEntityId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_parent_entity_id']),
      sequenceNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sequence_no']),
      entityEndDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_end_date']),
      isLeafNode: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_leaf_node']),
      barcodeNFC: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barcode_n_f_c']),
      entityLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_level']),
      entityException: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_exception']),
      scheduleOccurrenceIds: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}schedule_occurrence_ids']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || auditEntityId != null) {
      map['audit_entity_id'] = Variable<int?>(auditEntityId);
    }
    if (!nullToAbsent || auditId != null) {
      map['audit_id'] = Variable<int?>(auditId);
    }
    if (!nullToAbsent || auditEntityName != null) {
      map['audit_entity_name'] = Variable<String?>(auditEntityName);
    }
    if (!nullToAbsent || auditEntityTypeId != null) {
      map['audit_entity_type_id'] = Variable<int?>(auditEntityTypeId);
    }
    if (!nullToAbsent || auditParentEntityId != null) {
      map['audit_parent_entity_id'] = Variable<int?>(auditParentEntityId);
    }
    if (!nullToAbsent || sequenceNo != null) {
      map['sequence_no'] = Variable<int?>(sequenceNo);
    }
    if (!nullToAbsent || entityEndDate != null) {
      map['entity_end_date'] = Variable<DateTime?>(entityEndDate);
    }
    if (!nullToAbsent || isLeafNode != null) {
      map['is_leaf_node'] = Variable<bool?>(isLeafNode);
    }
    if (!nullToAbsent || barcodeNFC != null) {
      map['barcode_n_f_c'] = Variable<String?>(barcodeNFC);
    }
    if (!nullToAbsent || entityLevel != null) {
      map['entity_level'] = Variable<int?>(entityLevel);
    }
    if (!nullToAbsent || entityException != null) {
      map['entity_exception'] = Variable<bool?>(entityException);
    }
    if (!nullToAbsent || scheduleOccurrenceIds != null) {
      map['schedule_occurrence_ids'] = Variable<String?>(scheduleOccurrenceIds);
    }
    return map;
  }

  AuditEntityCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityCompanion(
      auditEntityId: auditEntityId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityId),
      auditId: auditId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditId),
      auditEntityName: auditEntityName == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityName),
      auditEntityTypeId: auditEntityTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityTypeId),
      auditParentEntityId: auditParentEntityId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditParentEntityId),
      sequenceNo: sequenceNo == null && nullToAbsent
          ? const Value.absent()
          : Value(sequenceNo),
      entityEndDate: entityEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(entityEndDate),
      isLeafNode: isLeafNode == null && nullToAbsent
          ? const Value.absent()
          : Value(isLeafNode),
      barcodeNFC: barcodeNFC == null && nullToAbsent
          ? const Value.absent()
          : Value(barcodeNFC),
      entityLevel: entityLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(entityLevel),
      entityException: entityException == null && nullToAbsent
          ? const Value.absent()
          : Value(entityException),
      scheduleOccurrenceIds: scheduleOccurrenceIds == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleOccurrenceIds),
    );
  }

  factory AuditEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEntityData(
      auditEntityId: serializer.fromJson<int?>(json['auditEntityId']),
      auditId: serializer.fromJson<int?>(json['auditId']),
      auditEntityName: serializer.fromJson<String?>(json['auditEntityName']),
      auditEntityTypeId: serializer.fromJson<int?>(json['auditEntityTypeId']),
      auditParentEntityId:
          serializer.fromJson<int?>(json['auditParentEntityId']),
      sequenceNo: serializer.fromJson<int?>(json['sequenceNo']),
      entityEndDate: serializer.fromJson<DateTime?>(json['entityEndDate']),
      isLeafNode: serializer.fromJson<bool?>(json['isLeafNode']),
      barcodeNFC: serializer.fromJson<String?>(json['barcodeNFC']),
      entityLevel: serializer.fromJson<int?>(json['entityLevel']),
      entityException: serializer.fromJson<bool?>(json['entityException']),
      scheduleOccurrenceIds:
          serializer.fromJson<String?>(json['scheduleOccurrenceIds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityId': serializer.toJson<int?>(auditEntityId),
      'auditId': serializer.toJson<int?>(auditId),
      'auditEntityName': serializer.toJson<String?>(auditEntityName),
      'auditEntityTypeId': serializer.toJson<int?>(auditEntityTypeId),
      'auditParentEntityId': serializer.toJson<int?>(auditParentEntityId),
      'sequenceNo': serializer.toJson<int?>(sequenceNo),
      'entityEndDate': serializer.toJson<DateTime?>(entityEndDate),
      'isLeafNode': serializer.toJson<bool?>(isLeafNode),
      'barcodeNFC': serializer.toJson<String?>(barcodeNFC),
      'entityLevel': serializer.toJson<int?>(entityLevel),
      'entityException': serializer.toJson<bool?>(entityException),
      'scheduleOccurrenceIds':
          serializer.toJson<String?>(scheduleOccurrenceIds),
    };
  }

  AuditEntityData copyWith(
          {int? auditEntityId,
          int? auditId,
          String? auditEntityName,
          int? auditEntityTypeId,
          int? auditParentEntityId,
          int? sequenceNo,
          DateTime? entityEndDate,
          bool? isLeafNode,
          String? barcodeNFC,
          int? entityLevel,
          bool? entityException,
          String? scheduleOccurrenceIds}) =>
      AuditEntityData(
        auditEntityId: auditEntityId ?? this.auditEntityId,
        auditId: auditId ?? this.auditId,
        auditEntityName: auditEntityName ?? this.auditEntityName,
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
        auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
        sequenceNo: sequenceNo ?? this.sequenceNo,
        entityEndDate: entityEndDate ?? this.entityEndDate,
        isLeafNode: isLeafNode ?? this.isLeafNode,
        barcodeNFC: barcodeNFC ?? this.barcodeNFC,
        entityLevel: entityLevel ?? this.entityLevel,
        entityException: entityException ?? this.entityException,
        scheduleOccurrenceIds:
            scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityData(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityEndDate: $entityEndDate, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('barcodeNFC: $barcodeNFC, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('entityException: $entityException, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditEntityId,
      auditId,
      auditEntityName,
      auditEntityTypeId,
      auditParentEntityId,
      sequenceNo,
      entityEndDate,
      isLeafNode,
      barcodeNFC,
      entityLevel,
      entityException,
      scheduleOccurrenceIds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityData &&
          other.auditEntityId == this.auditEntityId &&
          other.auditId == this.auditId &&
          other.auditEntityName == this.auditEntityName &&
          other.auditEntityTypeId == this.auditEntityTypeId &&
          other.auditParentEntityId == this.auditParentEntityId &&
          other.sequenceNo == this.sequenceNo &&
          other.entityEndDate == this.entityEndDate &&
          other.isLeafNode == this.isLeafNode &&
          other.barcodeNFC == this.barcodeNFC &&
          other.entityLevel == this.entityLevel &&
          other.entityException == this.entityException &&
          other.scheduleOccurrenceIds == this.scheduleOccurrenceIds);
}

class AuditEntityCompanion extends UpdateCompanion<AuditEntityData> {
  final Value<int?> auditEntityId;
  final Value<int?> auditId;
  final Value<String?> auditEntityName;
  final Value<int?> auditEntityTypeId;
  final Value<int?> auditParentEntityId;
  final Value<int?> sequenceNo;
  final Value<DateTime?> entityEndDate;
  final Value<bool?> isLeafNode;
  final Value<String?> barcodeNFC;
  final Value<int?> entityLevel;
  final Value<bool?> entityException;
  final Value<String?> scheduleOccurrenceIds;
  const AuditEntityCompanion({
    this.auditEntityId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityName = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditParentEntityId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.entityEndDate = const Value.absent(),
    this.isLeafNode = const Value.absent(),
    this.barcodeNFC = const Value.absent(),
    this.entityLevel = const Value.absent(),
    this.entityException = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
  });
  AuditEntityCompanion.insert({
    this.auditEntityId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityName = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditParentEntityId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.entityEndDate = const Value.absent(),
    this.isLeafNode = const Value.absent(),
    this.barcodeNFC = const Value.absent(),
    this.entityLevel = const Value.absent(),
    this.entityException = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
  });
  static Insertable<AuditEntityData> custom({
    Expression<int?>? auditEntityId,
    Expression<int?>? auditId,
    Expression<String?>? auditEntityName,
    Expression<int?>? auditEntityTypeId,
    Expression<int?>? auditParentEntityId,
    Expression<int?>? sequenceNo,
    Expression<DateTime?>? entityEndDate,
    Expression<bool?>? isLeafNode,
    Expression<String?>? barcodeNFC,
    Expression<int?>? entityLevel,
    Expression<bool?>? entityException,
    Expression<String?>? scheduleOccurrenceIds,
  }) {
    return RawValuesInsertable({
      if (auditEntityId != null) 'audit_entity_id': auditEntityId,
      if (auditId != null) 'audit_id': auditId,
      if (auditEntityName != null) 'audit_entity_name': auditEntityName,
      if (auditEntityTypeId != null) 'audit_entity_type_id': auditEntityTypeId,
      if (auditParentEntityId != null)
        'audit_parent_entity_id': auditParentEntityId,
      if (sequenceNo != null) 'sequence_no': sequenceNo,
      if (entityEndDate != null) 'entity_end_date': entityEndDate,
      if (isLeafNode != null) 'is_leaf_node': isLeafNode,
      if (barcodeNFC != null) 'barcode_n_f_c': barcodeNFC,
      if (entityLevel != null) 'entity_level': entityLevel,
      if (entityException != null) 'entity_exception': entityException,
      if (scheduleOccurrenceIds != null)
        'schedule_occurrence_ids': scheduleOccurrenceIds,
    });
  }

  AuditEntityCompanion copyWith(
      {Value<int?>? auditEntityId,
      Value<int?>? auditId,
      Value<String?>? auditEntityName,
      Value<int?>? auditEntityTypeId,
      Value<int?>? auditParentEntityId,
      Value<int?>? sequenceNo,
      Value<DateTime?>? entityEndDate,
      Value<bool?>? isLeafNode,
      Value<String?>? barcodeNFC,
      Value<int?>? entityLevel,
      Value<bool?>? entityException,
      Value<String?>? scheduleOccurrenceIds}) {
    return AuditEntityCompanion(
      auditEntityId: auditEntityId ?? this.auditEntityId,
      auditId: auditId ?? this.auditId,
      auditEntityName: auditEntityName ?? this.auditEntityName,
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
      sequenceNo: sequenceNo ?? this.sequenceNo,
      entityEndDate: entityEndDate ?? this.entityEndDate,
      isLeafNode: isLeafNode ?? this.isLeafNode,
      barcodeNFC: barcodeNFC ?? this.barcodeNFC,
      entityLevel: entityLevel ?? this.entityLevel,
      entityException: entityException ?? this.entityException,
      scheduleOccurrenceIds:
          scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityId.present) {
      map['audit_entity_id'] = Variable<int?>(auditEntityId.value);
    }
    if (auditId.present) {
      map['audit_id'] = Variable<int?>(auditId.value);
    }
    if (auditEntityName.present) {
      map['audit_entity_name'] = Variable<String?>(auditEntityName.value);
    }
    if (auditEntityTypeId.present) {
      map['audit_entity_type_id'] = Variable<int?>(auditEntityTypeId.value);
    }
    if (auditParentEntityId.present) {
      map['audit_parent_entity_id'] = Variable<int?>(auditParentEntityId.value);
    }
    if (sequenceNo.present) {
      map['sequence_no'] = Variable<int?>(sequenceNo.value);
    }
    if (entityEndDate.present) {
      map['entity_end_date'] = Variable<DateTime?>(entityEndDate.value);
    }
    if (isLeafNode.present) {
      map['is_leaf_node'] = Variable<bool?>(isLeafNode.value);
    }
    if (barcodeNFC.present) {
      map['barcode_n_f_c'] = Variable<String?>(barcodeNFC.value);
    }
    if (entityLevel.present) {
      map['entity_level'] = Variable<int?>(entityLevel.value);
    }
    if (entityException.present) {
      map['entity_exception'] = Variable<bool?>(entityException.value);
    }
    if (scheduleOccurrenceIds.present) {
      map['schedule_occurrence_ids'] =
          Variable<String?>(scheduleOccurrenceIds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityCompanion(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityEndDate: $entityEndDate, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('barcodeNFC: $barcodeNFC, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('entityException: $entityException, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds')
          ..write(')'))
        .toString();
  }
}

class $AuditEntityTable extends AuditEntity
    with TableInfo<$AuditEntityTable, AuditEntityData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditEntityTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityIdMeta =
      const VerificationMeta('auditEntityId');
  late final GeneratedColumn<int?> auditEntityId = GeneratedColumn<int?>(
      'audit_entity_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'audit_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditEntityNameMeta =
      const VerificationMeta('auditEntityName');
  late final GeneratedColumn<String?> auditEntityName =
      GeneratedColumn<String?>('audit_entity_name', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'audit_entity_type_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditParentEntityIdMeta =
      const VerificationMeta('auditParentEntityId');
  late final GeneratedColumn<int?> auditParentEntityId = GeneratedColumn<int?>(
      'audit_parent_entity_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _sequenceNoMeta = const VerificationMeta('sequenceNo');
  late final GeneratedColumn<int?> sequenceNo = GeneratedColumn<int?>(
      'sequence_no', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _entityEndDateMeta =
      const VerificationMeta('entityEndDate');
  late final GeneratedColumn<DateTime?> entityEndDate =
      GeneratedColumn<DateTime?>('entity_end_date', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _isLeafNodeMeta = const VerificationMeta('isLeafNode');
  late final GeneratedColumn<bool?> isLeafNode = GeneratedColumn<bool?>(
      'is_leaf_node', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_leaf_node IN (0, 1))');
  final VerificationMeta _barcodeNFCMeta = const VerificationMeta('barcodeNFC');
  late final GeneratedColumn<String?> barcodeNFC = GeneratedColumn<String?>(
      'barcode_n_f_c', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _entityLevelMeta =
      const VerificationMeta('entityLevel');
  late final GeneratedColumn<int?> entityLevel = GeneratedColumn<int?>(
      'entity_level', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _entityExceptionMeta =
      const VerificationMeta('entityException');
  late final GeneratedColumn<bool?> entityException = GeneratedColumn<bool?>(
      'entity_exception', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (entity_exception IN (0, 1))');
  final VerificationMeta _scheduleOccurrenceIdsMeta =
      const VerificationMeta('scheduleOccurrenceIds');
  late final GeneratedColumn<String?> scheduleOccurrenceIds =
      GeneratedColumn<String?>('schedule_occurrence_ids', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        auditEntityId,
        auditId,
        auditEntityName,
        auditEntityTypeId,
        auditParentEntityId,
        sequenceNo,
        entityEndDate,
        isLeafNode,
        barcodeNFC,
        entityLevel,
        entityException,
        scheduleOccurrenceIds
      ];
  @override
  String get aliasedName => _alias ?? 'audit_entity';
  @override
  String get actualTableName => 'audit_entity';
  @override
  VerificationContext validateIntegrity(Insertable<AuditEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_entity_id')) {
      context.handle(
          _auditEntityIdMeta,
          auditEntityId.isAcceptableOrUnknown(
              data['audit_entity_id']!, _auditEntityIdMeta));
    }
    if (data.containsKey('audit_id')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['audit_id']!, _auditIdMeta));
    }
    if (data.containsKey('audit_entity_name')) {
      context.handle(
          _auditEntityNameMeta,
          auditEntityName.isAcceptableOrUnknown(
              data['audit_entity_name']!, _auditEntityNameMeta));
    }
    if (data.containsKey('audit_entity_type_id')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['audit_entity_type_id']!, _auditEntityTypeIdMeta));
    }
    if (data.containsKey('audit_parent_entity_id')) {
      context.handle(
          _auditParentEntityIdMeta,
          auditParentEntityId.isAcceptableOrUnknown(
              data['audit_parent_entity_id']!, _auditParentEntityIdMeta));
    }
    if (data.containsKey('sequence_no')) {
      context.handle(
          _sequenceNoMeta,
          sequenceNo.isAcceptableOrUnknown(
              data['sequence_no']!, _sequenceNoMeta));
    }
    if (data.containsKey('entity_end_date')) {
      context.handle(
          _entityEndDateMeta,
          entityEndDate.isAcceptableOrUnknown(
              data['entity_end_date']!, _entityEndDateMeta));
    }
    if (data.containsKey('is_leaf_node')) {
      context.handle(
          _isLeafNodeMeta,
          isLeafNode.isAcceptableOrUnknown(
              data['is_leaf_node']!, _isLeafNodeMeta));
    }
    if (data.containsKey('barcode_n_f_c')) {
      context.handle(
          _barcodeNFCMeta,
          barcodeNFC.isAcceptableOrUnknown(
              data['barcode_n_f_c']!, _barcodeNFCMeta));
    }
    if (data.containsKey('entity_level')) {
      context.handle(
          _entityLevelMeta,
          entityLevel.isAcceptableOrUnknown(
              data['entity_level']!, _entityLevelMeta));
    }
    if (data.containsKey('entity_exception')) {
      context.handle(
          _entityExceptionMeta,
          entityException.isAcceptableOrUnknown(
              data['entity_exception']!, _entityExceptionMeta));
    }
    if (data.containsKey('schedule_occurrence_ids')) {
      context.handle(
          _scheduleOccurrenceIdsMeta,
          scheduleOccurrenceIds.isAcceptableOrUnknown(
              data['schedule_occurrence_ids']!, _scheduleOccurrenceIdsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityId};
  @override
  AuditEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditEntityTable createAlias(String alias) {
    return $AuditEntityTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AuditEntityTable auditEntity = $AuditEntityTable(this);
  late final EntityDao entityDao = EntityDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [auditEntity];
}
