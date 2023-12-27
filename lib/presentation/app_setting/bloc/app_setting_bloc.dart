import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';
import 'package:openai_chat/domain/usecase/shared_preferences_usecase.dart';
import 'package:meta/meta.dart';

part 'app_setting_event.dart';
part 'app_setting_state.dart';

@injectable
class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {
  final SharedPreferencesUseCase sharedPreferencesUseCase;

  AppSettingBloc(this.sharedPreferencesUseCase)
      : super(AppSettingInitial(
          sharedPreferencesUseCase.getLanguage(),
          sharedPreferencesUseCase.getAppearance().convertToAppearance(),
          sharedPreferencesUseCase.getApikey(),
        )) {
    on<SaveLanguageEvent>(mapSaveLanguageEvent);
    on<SaveAppearanceEvent>(mapSaveAppearanceEvent);
    on<SaveApiKeyEvent>(mapSaveApiKeyEvent);
  }

  FutureOr<void> mapSaveLanguageEvent(
      SaveLanguageEvent event, Emitter<AppSettingState> emit) async {
    var newLangCode = 'en'; // Default
    if (state.langCode == 'en') {
      newLangCode = 'vi';
    }

    final isSave = await sharedPreferencesUseCase.setLanguage(newLangCode);
    if (isSave) {
      emit(SaveSuccess(newLangCode, state.appearance, state.apiKey));
    }
  }

  FutureOr<void> mapSaveAppearanceEvent(
      SaveAppearanceEvent event, Emitter<AppSettingState> emit) async {
    var newModeTheme = Appearance.light;
    if (state.appearance.isLight) {
      newModeTheme = Appearance.dark;
    }

    final isSave =
        await sharedPreferencesUseCase.setAppearance(newModeTheme.name);
    if (isSave) {
      emit(SaveSuccess(state.langCode, newModeTheme, state.apiKey));
    }
  }

  // set api key
  FutureOr<void> mapSaveApiKeyEvent(
      SaveApiKeyEvent event, Emitter<AppSettingState> emit) async {
    final isSave = await sharedPreferencesUseCase.setApikey(event.apiKey);
    if (isSave) {
      emit(SaveSuccess(state.langCode, state.appearance, state.apiKey));
    }
  }

  FutureOr<void> mapSaveConversationEvent(
      SaveConversationEvent event, Emitter<AppSettingState> emit) async {
    // final isSave = await hiveInterface.;
    // if (isSave) {
    //   emit(SaveSuccess(state.langCode, state.appearance, state.apiKey));
    // }
  }
}
