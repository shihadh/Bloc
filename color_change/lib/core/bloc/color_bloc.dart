import 'package:color_change/core/bloc/color_state.dart';
import 'package:color_change/core/bloc/couter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<CouterEvent,ColorState>{
  ColorBloc() :super (const ColorState(0)){
    on<Increment>((event, emit) => emit(ColorState(state.countValue + 1)),);
    on<Decrement>((event, emit) => emit(ColorState(state.countValue -1)),);
  } 
} 