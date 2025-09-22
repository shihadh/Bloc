import 'package:color_change/core/bloc/color_bloc.dart';
import 'package:color_change/core/bloc/color_state.dart';
import 'package:color_change/core/bloc/couter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ColorBloc>();
    return Scaffold(
      body: Center(
        child: BlocBuilder<ColorBloc,ColorState>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.countValue.toString(),style: TextStyle(color: state.currentColor,fontSize: 50),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    bloc.add(Increment());
                  }, child: Text("+")),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                    bloc.add(Decrement());
                  }, child: Text("-")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}