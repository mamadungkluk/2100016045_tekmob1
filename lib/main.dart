import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

    return MaterialApp(
      title: 'welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome to Flutter'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10.0),
           itemCount: items.length,
           itemBuilder: (BuildContext ctx, int index) {
            return SizedBox(
              height:  100,
              child: Text('level ${items[index]}'),);
           },
           separatorBuilder: (BuildContext context, int index) => const Divider() ,
           )
        ),
      );
  }
}