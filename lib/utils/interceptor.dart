import 'package:dio/dio.dart';

List<String> tokenApi = [];

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      options.headers['Authorization'] = 'Bearer getToken()';
    }
    // continue with the request
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    if (tokenApi.contains(options.path)) {
      return true;
    } else {
      return false;
    }
  }
}
/*ToDo
add token
*/
