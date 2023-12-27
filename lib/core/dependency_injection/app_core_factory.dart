// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:openai_chat/core/dependency_injection/di.dart';
import 'package:openai_chat/domain/usecase/shared_preferences_usecase.dart';

class AppCoreFactory {
  static Dio createDio(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          "content-type": "application/json;encoding=utf-8",
          "Accept": "*/*",
        },
      ),
    )
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
    return dio;
  }
}

class TokenInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String apiKey = injector.get<SharedPreferencesUseCase>().getApikey();

    log('🌟[key] $apiKey');

    if (apiKey.isEmpty) {
      return handler.reject(
        DioException(
          requestOptions: options,
          message: "Api key is empty, please set api key first",
        ),
      );
    }

    options.headers["Authorization"] = "Bearer $apiKey";
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
