import 'dart:async';
import 'dart:developer';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:openai_chat/presentation/conversation/bloc/conversation_bloc.dart';
import 'package:openai_chat/routes/route_list.dart';
import 'package:openai_chat/core/dependency_injection/di.dart';
import 'package:openai_chat/presentation/app_setting/bloc/app_setting_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'application.dart';

// import 'data/datasource/local/preferences.dart';
final rootNavigationKey = GlobalKey<NavigatorState>();

class AppDelegate {
  Future<Widget> build() async {
    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    return Application(
      title: 'LetTutor',
      navigationKey: rootNavigationKey,
      providers: [
        BlocProvider<AppSettingBloc>(create: (_) => injector.get()),
        BlocProvider<ConversationBloc>(create: (_) => injector.get()),
      ],
      themeSaved: savedThemeMode,
      initialRoute: RouteList.home,
    );
  }

  Future<void> run() async {
    await runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      configurationInjection();

      final app = await build();

      runApp(app);
    }, (e, trace) {
      log('${e.toString()}  ${trace.toString()}');
    });
  }
}
