import 'package:dio/dio.dart';
import '../constants/constants.dart';
import 'interceptor.dart';
import 'logger.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectionTimeout,
            receiveTimeout: receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio dio;
}
