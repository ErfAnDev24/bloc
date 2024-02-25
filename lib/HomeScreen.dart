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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
                if (state is InitStateNumber) {
                  return Text('${state.counter}');
                }
                if (state is UpdatedCounterState) {
                  return Text('${state.counter}');
                }
                ;

                ;

                if (state is RestNumberState) {
                  return Text('${state.counter}');
                }
                ;

                return Text('error');
              })),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(
                            IncrementNumber(),
                          );
                    },
                    child: Text('increment'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(
                            DecrementNumber(),
                          );
                    },
                    child: Text('decrement'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(
                            RestNumber(),
                          );
                    },
                    child: Text('rest'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
