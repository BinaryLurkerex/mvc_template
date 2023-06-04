import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  static const String _stateStorageKey = 'state';

  ThemeBloc() : super(_Light()) {
    on<_Change>(_onChangeEvent);
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final data = json[_stateStorageKey];

    switch (data) {
      case 'dark':
        return ThemeState.dark();
      case 'light':
      default:
        return ThemeState.light();
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    final String value = state.map(
      light: (_) => 'light',
      dark: (_) => 'dark',
    );

    return {_stateStorageKey: value};
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
