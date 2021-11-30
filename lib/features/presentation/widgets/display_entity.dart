import 'package:entity_sql_app/features/data/datasources/app_database.dart';
import 'package:entity_sql_app/features/presentation/blocs/audit_entity_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'display.dart';

class AuditEntityDisplay extends StatefulWidget {
  const AuditEntityDisplay({required this.auditEntitiesList, Key? key}) : super(key: key);
  final List<AuditEntityData?> auditEntitiesList;

  @override
  State<AuditEntityDisplay> createState() => _AuditEntityDisplayState();
}

class _AuditEntityDisplayState extends State<AuditEntityDisplay> {
  @override
  Widget build(BuildContext context) {
    if (widget.auditEntitiesList.isEmpty) {
      _onAddAuditEntity(context);
    }
    return ListView.builder(
      itemCount: widget.auditEntitiesList.length,
      itemBuilder: (_, index) {
        final itemAuditEntity = widget.auditEntitiesList[index];
        return _buildListItem(context,itemAuditEntity);
      },
    );
  }

  Widget _buildListItem(BuildContext context,AuditEntityData? auditEntities) {
    return Card(
      elevation: 2.0,
      child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
          SlidableAction(
          label: 'Edit',
          backgroundColor: Colors.blue,
          icon: Icons.edit,
          onPressed: (_) => _onEditAuditEntity(context,auditEntities),
        ),
  ]
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              label: 'Delete',
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (_) => _onDeleteAuditEntity(context,auditEntities),
            ),
          ],
        ),
        child: ListTile(
            title: Text(auditEntities!.auditEntityName.toString(),style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
            subtitle: Text((auditEntities.entityEndDate).toString(),style: Theme.of(context).textTheme.subtitle1,)
        ),
      ),
    );
  }

  Future<void> _onDeleteAuditEntity(BuildContext context, AuditEntityData? auditEntities) async {
    final didRequestDelete = await showAlertDialog(context,
        content: 'Are you sure that you want to delete?',
        title: 'Delete Audit Entity',
        cancelActionText: 'Cancel',
        defaultsActionText: 'OK');
    if(didRequestDelete == true)
    {
      BlocProvider.of<AuditEntityBloc>(context).add(DeleteAuditEntityEvent(auditEntities!));
    }
  }

  Future<void> _onEditAuditEntity(BuildContext context, AuditEntityData? auditEntities) async {
    var values = auditEntities!.auditEntityName.toString();
    final didRequestDelete = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Update Audit Entity'),
        content: TextField(
          controller: TextEditingController()..text = values,
          onChanged:(value) {
            setState(() {
              values = value;
            });
          },
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('update'),
          ),
        ],
      ),
    );
    if(didRequestDelete == true)
    {
      BlocProvider.of<AuditEntityBloc>(context).add(UpdateAuditEntityEvent(auditEntities.copyWith(auditEntityName: values)));
    }
  }
  void _onAddAuditEntity(BuildContext context) {
    BlocProvider.of<AuditEntityBloc>(context)
        .add(const AddAuditEntityEvent());
  }
}