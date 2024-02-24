import 'package:flutter/material.dart';

class Facrbook extends StatelessWidget {
  const Facrbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ahmed"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Ahmed Abdp'),
          Image.asset("filepath.png"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Heko it is m acacnook accaount "),
              Text("Enter Your data"),
             Image(image: AssetImage('file path .dart'),
            ),
            Text('Center title please '),
            Text('column widggrt  please hello ')
            ],
          )
        ],
      ),
    );
  }
}
