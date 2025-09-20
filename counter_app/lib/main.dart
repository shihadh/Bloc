import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/bloc/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => CounterBloc(), child: HomePage()),
    );
  }
}