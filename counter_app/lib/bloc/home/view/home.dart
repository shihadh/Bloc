import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/bloc/counter_event.dart';
import 'package:counter_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc,CounterState>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("value ${state.counterValue}",style: TextStyle(fontSize: 50),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    counterBloc.add(Increment());
                  }, child: Text('+')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: (){
                    counterBloc.add(Decrement());
                  }, child: Text('-')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}