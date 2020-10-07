
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:welcome_app/views/welcome_page/welcome_page_bloc.dart';
import 'package:welcome_app/views/welcome_page/welcome_page_event.dart';
import 'package:welcome_app/views/welcome_page/welcome_page_state.dart';

class WelcomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomePageBloc, WelcomePageState>(
      builder: (BuildContext context, WelcomePageState state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                state.text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: state.textColor),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                child: Text('Cambiar texto'),
                onPressed: () {
                  BlocProvider.of<WelcomePageBloc>(context).add(WelcomePageEvent.textChangePressed);
                },
              ),
              RaisedButton(
                child: Text('Cambiar color de texto'),
                onPressed: () {
                  BlocProvider.of<WelcomePageBloc>(context).add(WelcomePageEvent.textColorPressed);
                },
              ),
              RaisedButton(
                child: Text('Cambiar color de fondo'),
                onPressed: () {
                  BlocProvider.of<WelcomePageBloc>(context).add(WelcomePageEvent.backgroundColorPressed);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}