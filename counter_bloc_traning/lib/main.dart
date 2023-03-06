import 'package:counter_bloc_traning/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Counter App Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Counter App Bloc'),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is InitialState) {
                return _counter(context, 0);
              }
              if (state is UpdateState) {
                return _counter(context, state.counter);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}

Widget _counter(BuildContext context, int counter) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          counter.toString(),
          style: const TextStyle(fontSize: 50),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(NumberDecrease()),
              color: Colors.red,
              shape: const CircleBorder(),
              height: 50,
              child: const Center(
                child: Icon(
                  Icons.minimize_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(NumberIncrease()),
              color: Colors.green,
              shape: const CircleBorder(),
              height: 50,
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
