import 'package:flutter/material.dart';
import 'package:flutter_lan/module/home/provider/home_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Lan'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(exampleTwoProvider.notifier).changeString('string');
            },
            child: const Text(
              'Press me',
            ),
          ),
          Text(
            ref.watch(
              exampleTwoProvider,
            ),
          ),
        ],
      ),
    );
  }
}
