// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPagep extends StatelessWidget {
  const MainPagep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyData(),
        builder: (BuildContext context, child) {
          return Scaffold(
            appBar: AppBar(
              title: Consumer<MyData>(
                builder: (context, value, child) {
                  //  Text(Provider.of<MyData>(context).name);
                  return Text(value.name);
                },
              ),
            ),
            body: const Screen2(),
          );
        });
  }
}

// ignore: must_be_immutable
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Screen3(),
    );
  }
}

// ignore: must_be_immutable
class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Center(
      child: Column(children: [
        //Text(Provider.of<MyData>(context, listen: true).name),
        Consumer<MyData>(
          builder: (context, value, child) {
            //  Text(Provider.of<MyData>(context).name);
            return Text(value.name);
          },
        ),
        ElevatedButton(
            onPressed: () {
              Provider.of<MyData>(context, listen: false).changeName("Suppa");
            },
            child: const Text('Changed'))
      ]),
    );
  }
}

class MyData extends ChangeNotifier {
  String _name = "SupunSula";

  void changeName(String name) {
    _name = name;
    notifyListeners();
  }

  String get name => _name;
}
