import 'package:entity_sql_app/features/data/repositories/entity_repository_impl.dart';
import 'package:entity_sql_app/features/domain/usecaes/add_audit_entities.dart';
import 'package:entity_sql_app/features/domain/usecaes/get_audit_entities.dart';
import 'package:entity_sql_app/features/domain/usecaes/remove_audit_entity.dart';
import 'package:entity_sql_app/features/domain/usecaes/update_audit_antity.dart';
import 'package:entity_sql_app/features/presentation/blocs/audit_entity_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/data/datasources/DAOs/entity_dao.dart';
import 'features/data/datasources/app_database.dart';
import 'features/domain/repositories/entities_repository.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {

  sl.registerFactory<AuditEntityBloc>(() => AuditEntityBloc(sl(),sl(),sl(),sl()));

  sl.registerSingleton(AppDatabase(openConnection()));
  // Dependencies


  // UseCases
  sl.registerLazySingleton(() => GetAuditEntities(sl()));
  sl.registerLazySingleton(() => AddAuditEntities(sl()));
  sl.registerLazySingleton(() => UpdateAuditEntities(sl()));
  sl.registerLazySingleton(() => DeleteAuditEntities(sl()));
  //sl.registerLazySingleton(() => const GetAllAuditEntityEvent());


  sl.registerSingleton<EntitiesRepository>
    (EntitiesRepositoryImpl( appDatabase: sl()));

  sl.registerSingleton(EntityDao);
  //sl.registerSingleton(GetAllAuditEntityEvent());

}