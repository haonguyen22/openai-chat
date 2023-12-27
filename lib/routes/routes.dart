import 'package:flutter/material.dart';
import 'package:openai_chat/presentation/conversation/views/conversation_screen.dart';
import 'package:openai_chat/routes/route_list.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => _routes;

  static final _routes = <String, WidgetBuilder>{
    RouteList.home: (context) => const ConversationScreen(),
  };

  static Route getRouteGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteList.home:
        return _buildRoute(
          settings,
          (context) => const ConversationScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute _buildRoute(
      RouteSettings settings, WidgetBuilder builder,
      {bool fullscreenDialog = false}) {
    return MaterialPageRoute(
      settings: settings,
      builder: builder,
      fullscreenDialog: fullscreenDialog,
    );
  }

  static Route _errorRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Text(message),
        ),
      );
    });
  }
}
