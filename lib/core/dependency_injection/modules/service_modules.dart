import 'package:injectable/injectable.dart';
import 'package:openai_chat/core/dependency_injection/app_core_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

@module
abstract class ServiceModules {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Named("BaseUrl")
  String get baseUrl => 'https://api.openai.com/v1';

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => AppCoreFactory.createDio(url);
}
