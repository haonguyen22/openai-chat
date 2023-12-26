import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi()
@injectable
abstract class AuthService {
  static const String loginApi = '/auth/login';

  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

}
