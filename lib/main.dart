import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String data = 'Copy me';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Copy to clipboard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data),
                  IconButton(onPressed: () {
                    Clipboard.setData(ClipboardData(text: data));
                  }, icon: const Icon(Icons.copy))
                ],
              ),
              const TextField()
            ],
          ),
        ),
      ),
    );
  }
}