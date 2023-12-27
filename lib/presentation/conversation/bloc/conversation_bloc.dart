import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:openai_chat/core/enums/role.dart';
import 'package:openai_chat/data/models/chat_response/message.dart';
import 'package:openai_chat/domain/usecase/gpt_usecase.dart';
import 'package:openai_chat/presentation/conversation/bloc/conversation_data.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';
part 'conversation_bloc.freezed.dart';

@injectable
class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final GPTUseCase _gptUseCase;

  ConversationBloc(this._gptUseCase)
      : super(const _Initial(data: ConversationData())) {
    on<_Chat>(_onChat);
    on<_GetAllMessageWithTitle>(_getAllMessageWithTitle);
    on<_SaveMessage>(_saveMessage);
    on<_GetAllTitle>(_getAllTitle);
    on<_Reset>(_reset);
  }

  FutureOr<void> _onChat(_Chat event, Emitter<ConversationState> emit) async {
    emit(_Loading(data: state.data.copyWith(isTyping: true)));
    try {
      emit(
        state.copyWith(
          data: state.data.copyWith(
            messages: [
              ...state.data.messages ?? [],
              Message(
                content: event.message,
                role: Role.user.name,
              ),
            ],
          ),
        ),
      );

      final res = await _gptUseCase.getMessageResponseFromGPT(
          messages: state.data.messages!);

      emit(_Success(
        data: state.data.copyWith(
          messages: [
            ...state.data.messages ?? [],
            Message(
              content: res,
              role: Role.assistant.name,
            ),
          ],
          isTyping: false,
        ),
      ));
    } catch (e) {
      emit(state.copyWith(
        data: state.data.copyWith(
          messages: [
            ...state.data.messages ?? [],
            Message(
              content: e.toString().split(': ')[1],
              role: Role.assistant.name,
            ),
          ],
          isTyping: false,
        ),
      ));
    }
  }

  FutureOr<void> _getAllMessageWithTitle(
      _GetAllMessageWithTitle event, Emitter<ConversationState> emit) async {
    final res = await _gptUseCase.getMessagesWithTitle(title: event.title);
    emit(state.copyWith(data: state.data.copyWith(messages: res)));
  }

  FutureOr<void> _saveMessage(
      _SaveMessage event, Emitter<ConversationState> emit) async {
    try {
      await _gptUseCase.saveMessage(
          title: event.title, message: state.data.messages ?? []);
      emit(_SaveMessageSuccess(data: state.data));
    } catch (e) {
      emit(_SaveMessageFailed(data: state.data));
    }
  }

  FutureOr<void> _getAllTitle(
      _GetAllTitle event, Emitter<ConversationState> emit) async {
    final res = await _gptUseCase.getAllTitle();
    emit(state.copyWith(data: state.data.copyWith(choices: res)));
  }

  FutureOr<void> _reset(event, Emitter<ConversationState> emit) {
    emit(const _Initial(data: ConversationData()));
  }
}
