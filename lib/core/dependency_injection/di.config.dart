// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/datasource/remote/gpt/gpt_service.dart' as _i7;
import '../../data/repositories/gpt_repository_impl.dart' as _i9;
import '../../domain/repositories/gpt_repository.dart' as _i8;
import '../../domain/usecase/shared_preferences_usecase.dart' as _i4;
import '../../presentation/app_setting/bloc/app_setting_bloc.dart' as _i5;
import 'modules/service_modules.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModules = _$ServiceModules();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => serviceModules.prefs,
      preResolve: true,
    );
    gh.singleton<_i4.SharedPreferencesUseCase>(
        _i4.SharedPreferencesUseCase(gh<_i3.SharedPreferences>()));
    gh.factory<String>(
      () => serviceModules.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i5.AppSettingBloc>(
        () => _i5.AppSettingBloc(gh<_i4.SharedPreferencesUseCase>()));
    gh.lazySingleton<_i6.Dio>(
        () => serviceModules.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.GPTService>(() => _i7.GPTService(gh<_i6.Dio>()));
    gh.factory<_i8.GPTRepository>(
        () => _i9.GPTRepositoryImpl(gh<_i7.GPTService>()));
    return this;
  }
}

class _$ServiceModules extends _i10.ServiceModules {}
