part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial({
    required ConversationData data,
  }) = _Initial;

  const factory ConversationState.loading({
    required ConversationData data,
  }) = _Loading;

  const factory ConversationState.success({
    required ConversationData data,
  }) = _Success;

  const factory ConversationState.failure({
    required ConversationData data,
  }) = _Failure;

  const factory ConversationState.getAllMessageSuccess({
    required ConversationData data,
  }) = _GetAllMessageSuccess;

  const factory ConversationState.saveMessageSuccess({
    required ConversationData data,
  }) = _SaveMessageSuccess;

  const factory ConversationState.saveMessageFailed({
    required ConversationData data,
  }) = _SaveMessageFailed;

  const factory ConversationState.deleteMessageSuccess({
    required ConversationData data,
  }) = _DeleteMessageSuccess;

  const factory ConversationState.deleteMessageFailed({
    required ConversationData data,
  }) = _DeleteMessageFailed;
}
