part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.chat({required String message}) = _Chat;

  const factory ConversationEvent.getAllMessage({required String title}) =
      _GetAllMessageWithTitle;

  const factory ConversationEvent.saveMessage({required String title}) = _SaveMessage;

  const factory ConversationEvent.getAllTitle() = _GetAllTitle;

  const factory ConversationEvent.reset() = _Reset;
}
