part of 'audit_entity_bloc.dart';

abstract class AuditEntityEvent extends Equatable {
  final AuditEntityData? auditEntities;
  const AuditEntityEvent({this.auditEntities});
  @override
  List<Object> get props => [auditEntities!];
}

class GetAllAuditEntityEvent extends AuditEntityEvent {
  const GetAllAuditEntityEvent();
}

class DeleteAuditEntityEvent extends AuditEntityEvent {
  const DeleteAuditEntityEvent(AuditEntityData auditEntities) : super(auditEntities: auditEntities);
}

class AddAuditEntityEvent extends AuditEntityEvent {
  const AddAuditEntityEvent() : super();
}

class UpdateAuditEntityEvent extends AuditEntityEvent {
  const UpdateAuditEntityEvent(AuditEntityData auditEntities) : super(auditEntities: auditEntities);
}