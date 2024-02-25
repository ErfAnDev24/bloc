import 'package:bussinuslogic/HomeScreen.dart';
import 'package:bussinuslogic/bloc/HomeBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) {
        return HomeBloc();
      },
      child: HomeScreen(),
    ));
  }
}
