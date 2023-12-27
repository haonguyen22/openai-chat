// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/adapters.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../data/datasource/remote/gpt/gpt_service.dart' as _i8;
import '../../data/repositories/gpt_repository_impl.dart' as _i10;
import '../../domain/repositories/gpt_repository.dart' as _i9;
import '../../domain/usecase/gpt_usecase.dart' as _i11;
import '../../domain/usecase/shared_preferences_usecase.dart' as _i5;
import '../../presentation/app_setting/bloc/app_setting_bloc.dart' as _i6;
import '../../presentation/conversation/bloc/conversation_bloc.dart' as _i12;
import 'modules/service_modules.dart' as _i14;
import 'modules/store_modules.dart' as _i13;

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
    final storeModules = _$StoreModules();
    final serviceModules = _$ServiceModules();
    gh.singletonAsync<_i3.HiveInterface>(() => storeModules.init());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => serviceModules.prefs,
      preResolve: true,
    );
    gh.singleton<_i5.SharedPreferencesUseCase>(
        _i5.SharedPreferencesUseCase(gh<_i4.SharedPreferences>()));
    gh.factory<String>(
      () => serviceModules.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i6.AppSettingBloc>(
        () => _i6.AppSettingBloc(gh<_i5.SharedPreferencesUseCase>()));
    gh.lazySingleton<_i7.Dio>(
        () => serviceModules.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i8.GPTService>(() => _i8.GPTService(gh<_i7.Dio>()));
    gh.factory<_i9.GPTRepository>(
        () => _i10.GPTRepositoryImpl(gh<_i8.GPTService>()));
    gh.factory<_i11.GPTUseCase>(() => _i11.GPTUseCase(
          gh<_i9.GPTRepository>(),
          gh<_i5.SharedPreferencesUseCase>(),
        ));
    gh.factory<_i12.ConversationBloc>(
        () => _i12.ConversationBloc(gh<_i11.GPTUseCase>()));
    return this;
  }
}

class _$StoreModules extends _i13.StoreModules {}

class _$ServiceModules extends _i14.ServiceModules {}
