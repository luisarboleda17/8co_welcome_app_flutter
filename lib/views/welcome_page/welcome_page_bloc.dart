
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:welcome_app/views/welcome_page/welcome_page_event.dart';
import 'package:welcome_app/views/welcome_page/welcome_page_state.dart';

class WelcomePageBloc extends Bloc<WelcomePageEvent, WelcomePageState> {
  static final String _welcomeText = '¡Bienvenidos a la aplicación!';
  static final String _myName = 'Luis Arboleda';

  WelcomePageBloc():
        super(WelcomePageState(
          text: _welcomeText,
          textColor: Colors.red,
          backgroundColor: Colors.blue,
        ));

  @override
  Stream<WelcomePageState> mapEventToState(WelcomePageEvent event) async* {
    if (event == WelcomePageEvent.textChangePressed)
      yield* _mapTextChangeToState();
    else if (event == WelcomePageEvent.textColorPressed)
      yield* _mapTextColorChangeToState();
    else if (event == WelcomePageEvent.backgroundColorPressed)
      yield* _mapBackgroundColorToState();
  }

  Stream<WelcomePageState> _mapTextChangeToState() async* {
    yield state.copyWith(
      text: state.text == _welcomeText ? _myName : _welcomeText
    );
  }

  Stream<WelcomePageState> _mapTextColorChangeToState() async* {
    yield state.copyWith(
      textColor: state.textColor == Colors.red ? Colors.yellow : Colors.red,
    );
  }

  Stream<WelcomePageState> _mapBackgroundColorToState() async* {
    yield state.copyWith(
      backgroundColor: state.backgroundColor == Colors.white ? Colors.blue : Colors.white,
    );
  }
}
