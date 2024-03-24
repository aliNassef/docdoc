import 'package:dio/dio.dart';
import 'package:docdoc/core/api/service_locator.dart';

import '../cache/cache_helper.dart';
import 'end_ponits.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        getIt.get<CacheHelper>().getData(key: ApiKey.token) != null
            ? '${getIt.get<CacheHelper>().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
