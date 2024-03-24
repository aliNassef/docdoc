import 'package:dio/dio.dart';
import 'package:docdoc/core/api/dio_consumer.dart';
import 'package:docdoc/core/cache/cache_helper.dart';
import 'package:docdoc/features/auth/data/repo/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<CacheHelper>(
    CacheHelper(),
  );

  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(api: DioConsumer(dio: Dio())),
  );
}
