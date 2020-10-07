
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class WelcomePageState extends Equatable {
  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  List<Object> get props => [
    text,
    textColor,
    backgroundColor,
  ];

  const WelcomePageState({this.text, this.textColor, this.backgroundColor});

  WelcomePageState copyWith({String text, Color textColor, Color backgroundColor}) {
    return WelcomePageState(
      text: text ?? this.text,
      textColor: textColor ?? this.textColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}