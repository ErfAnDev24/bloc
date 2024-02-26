import 'package:bussinuslogic/bloc/HomeBloc.dart';
import 'package:bussinuslogic/bloc/HomeEvent.dart';
import 'package:bussinuslogic/bloc/HomeState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is InitState) {
                return Text('${state.counter}');
              }

              if (state is UpdateCounterState) {
                return Text('${state.counter}');
              }

              if (state is RestCounterState) {
                return Text('${state.counter}');
              }
              return Text('error');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(IncrementEvent());
                },
                child: Text('increment'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(DecrementEvent());
                },
                child: Text('decrement'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(ResetEvent());
                },
                child: Text('rest'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
