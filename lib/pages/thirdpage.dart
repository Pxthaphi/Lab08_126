import 'package:flutter/material.dart';
import 'package:lab08_126/pages/secondpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key, required this.data, required this.name});

  final String data;
  final String name;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThirdPage 126"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("This is Third Page"),
          Text(widget.data),
          Text(widget.name),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Text('Go Back.'),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
            ),
          ),
          ],
      )),
    );
  }
}