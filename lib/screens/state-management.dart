// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String name = 'Sahan';

  void changeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Screen2(
        name: name,
        changeName: changeName,
      ),
    );
  }
}

// ignore: must_be_immutable
class Screen2 extends StatelessWidget {
  Screen2({Key? key, required this.name, required this.changeName})
      : super(key: key);
  String name;
  Function changeName;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Screen3(name: name, changeName: changeName),
    );
  }
}

// ignore: must_be_immutable
class Screen3 extends StatelessWidget {
  Screen3({Key? key, required this.name, required this.changeName})
      : super(key: key);
  String name;
  Function changeName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Screen4(name: name, changeName: changeName),
    );
  }
}

// ignore: must_be_immutable
class Screen4 extends StatelessWidget {
  Screen4({Key? key, required this.name, required this.changeName})
      : super(key: key);
  String name;
  Function changeName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(name),
        ElevatedButton(
          onPressed: () {
            changeName('Sulakshana');
          },
          child: const Text('Change Data'),
        )
      ]),
    );
  }
}
