part of 'app_setting_bloc.dart';

@immutable
abstract class AppSettingState {
  final String langCode;
  final Appearance appearance;
  final String? apiKey;

  const AppSettingState(
    this.langCode,
    this.appearance,
    this.apiKey,
  );

  get languageCode => null;

  String get langIcon {
    switch (langCode) {
      case 'vi':
        return 'assets/icons/vi.png';
      default:
        return 'assets/icons/en.png';
    }
  }
}

class AppSettingInitial extends AppSettingState {
  const AppSettingInitial(super.langCode, super.appearance, super.apiKey);
}

class SaveSuccess extends AppSettingInitial {
  const SaveSuccess(super.languageCode, super.appearance, super.apiKey);

  SaveSuccess copyWith({String? newLangCode, Appearance? newAppearance}) {
    return SaveSuccess(
      newLangCode ?? langCode,
      newAppearance ?? appearance,
      apiKey,
    );
  }
}

enum Appearance {
  dark,
  light,
  ;
}

extension AppearanceExt on Appearance {
  bool get isDark => this == Appearance.dark;
  bool get isLight => this == Appearance.light;
  Appearance get diffAppearance => isDark ? Appearance.light : Appearance.dark;
}

extension ConvertToAppearance on String {
  Appearance convertToAppearance() {
    switch (this) {
      case "dark":
        return Appearance.dark;
      default:
        return Appearance.light;
    }
  }
}
