import 'package:entity_sql_app/features/presentation/blocs/audit_entity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/presentation/views/entity_details_view.dart';
import 'injector.dart' as i;
import 'injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await i.init();
  return runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<AuditEntityBloc>()..add(const GetAllAuditEntityEvent()),
        child: const MaterialApp(
      title: "Sqlite app",
      home: HomePage(),
    ),
    );
      
  }
}


