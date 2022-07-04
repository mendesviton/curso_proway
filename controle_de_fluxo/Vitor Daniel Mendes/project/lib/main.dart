import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  // MaterialApp() -> responsável pelo funcionamento do app (navegação, cores de fundo etc.)
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

// StatelessWidget -> Widget que nao muda estado.
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'https://cdn.pixabay.com/photo/2022/06/02/19/25/giraffes-7238815_960_720.jpg',
    'https://cdn.pixabay.com/photo/2022/06/21/21/56/konigssee-7276585_960_720.jpg'
  ];

  String url =
      'https://cdn.pixabay.com/photo/2022/06/02/19/25/giraffes-7238815_960_720.jpg';
  @override
  Widget build(BuildContext context) {
    // Scaffold -> Esqueleto do aplicativo.
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('data'),
              SizedBox(height: 20),
              Text('data'),
              SizedBox(height: 20),
              Image.network(url),
              SizedBox(height: 20),
              Text('data'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (url == images[0]) {
                        url == images[1];
                      } else {
                        url = images[0];
                      }
                    });
                  },
                  child: Text('data'))
            ],
          ),
        ),
      ),
    );
  }
}
