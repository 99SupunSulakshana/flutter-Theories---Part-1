import 'package:flutter/material.dart';
import 'package:mynewone/screens/second_screen.dart';

class MyColumnPage extends StatefulWidget {
  const MyColumnPage({Key? key}) : super(key: key);

  @override
  State<MyColumnPage> createState() => _MyColumnPageState();
}

class _MyColumnPageState extends State<MyColumnPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: const Text('Flutter Example'),
        ),
        body: Container(
          color: Colors.pink,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const <Widget>[
              Text(
                'Text 01',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Text 01',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Text 01',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const SecondClass();
            }));
          },
        ),
      ),
    );
  }
}
