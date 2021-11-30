part of 'audit_entity_bloc.dart';

abstract class AuditEntityState extends Equatable {
  const AuditEntityState();
}

class Empty extends AuditEntityState {

  @override
  List<Object?> get props => [];
}

class Loading extends AuditEntityState {
  @override
  List<Object?> get props => [];
}

class Loaded extends AuditEntityState {
  final List<AuditEntityData?>? auditEntitiesList;

  const Loaded({required this.auditEntitiesList});

  @override
  List<Object> get props => [auditEntitiesList!];
}

class Error extends AuditEntityState {
  final String message;

  const Error({required this.message});

  @override
  List<Object?> get props => [message];
}