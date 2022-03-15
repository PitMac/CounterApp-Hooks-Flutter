import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_app_with_hooks/about_page.dart';

class HomeHooks extends HookWidget {
  const HomeHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My App with hooks'),
      ),
      body: Center(
        child: Text(
          counter.value.toString(),
          style: const TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              counter.value--;
            },
            child: const Text(
              '-',
              style: TextStyle(fontSize: 30),
            ),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              counter.value++;
            },
            child: const Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutPage()));
            },
            child: const Text(
              '->',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
