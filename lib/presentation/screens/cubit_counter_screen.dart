import 'package:flutter/material.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter'),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: Text('Counter value: xxx'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: Text('+3'),
            onPressed: () => {}
          ),
          const SizedBox( height: 15,),
          FloatingActionButton(
            heroTag: '2',
            child: Text('+2'),
            onPressed: () => {}
          ),
          const SizedBox( height: 15,),
          FloatingActionButton(
            heroTag: '3',
            child: Text('+1'),
            onPressed: () => {}
          )
        ],
      ),
    );
  }
}