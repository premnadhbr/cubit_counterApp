import 'package:cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final int counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("First Screen"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${state.counterValue}',
                  style: const TextStyle(fontSize: 26),
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
