import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    context.read<CounterCubit>().increaseBy(value);
  }

  @override
  Widget build(BuildContext context) {
    //final counterState = context.watch<CounterCubit>().state;
    final counterCubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(
        //title: Text('Cubit Counter: ${counterState.transactionCount}'),
        title: context.select((CounterCubit value) {
          return Text('Cubit Counter: ${ value.state.transactionCount }');
        }),
        actions: [
          IconButton(
            onPressed: () => {counterCubit.reset()},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          //buildWhen: (previous, current) => current.counter != previous.counter,
          builder: (context, state) {
            print('Counter cambio');
            return Text('Counter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: Text('+3'),
            onPressed: () => {counterCubit.increaseBy(3)},
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2',
            child: Text('+2'),
            onPressed: () => {counterCubit.increaseBy(2)},
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: Text('+1'),
            onPressed: () => {counterCubit.increaseBy(1)},
          ),
        ],
      ),
    );
  }
}
