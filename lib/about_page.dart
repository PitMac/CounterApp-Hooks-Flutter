import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AboutPage extends HookWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);

    useEffect(() {
      log('Hello');
      return () => {log('Bye')};
    }, []);

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
    );
  }
}
