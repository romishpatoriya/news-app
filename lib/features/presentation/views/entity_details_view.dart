import 'package:entity_sql_app/features/presentation/blocs/audit_entity_bloc.dart';
import 'package:entity_sql_app/features/presentation/widgets/display_entity.dart';
import 'package:entity_sql_app/features/presentation/widgets/loading.dart';
import 'package:entity_sql_app/features/presentation/widgets/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Audit Entities'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildState(context)),
          ],
        ));
  }
}

Widget _buildState(BuildContext context) {
  return BlocBuilder<AuditEntityBloc, AuditEntityState>(
    builder: (context, state) {
      if (state is Empty) {
        return const MessageDisplay(
          message: 'Start now!',
        );
      } else if (state is Loading) {
        return const LoadingWidget();
      } else if (state is Loaded) {
        return AuditEntityDisplay(
          auditEntitiesList: state.auditEntitiesList!,
        );
      } else if (state is Error) {
        return MessageDisplay(
          message: state.message,
        );
      }
      return Container();
    },
  );
}