import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

@singleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(_Light()) {
    on<_Change>(_onChangeEvent);
  }

  FutureOr<void> _onChangeEvent(
    _Change event,
    Emitter<ThemeState> emit,
  ) {
    if (state is _Light) {
      emit(ThemeState.dark());
    } else {
      emit(ThemeState.light());
    }
  }
}
