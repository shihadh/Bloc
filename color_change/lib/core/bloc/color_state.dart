import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class ColorState extends Equatable{

  final int countValue;
  static const List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blueAccent,
    Colors.brown,
  ];
  const ColorState(this.countValue);

  Color get currentColor => colors[countValue % colors.length]; // it will not break even the length is 5 , it repeat again from 0 

  @override
  List<Object> get props => [countValue];
}