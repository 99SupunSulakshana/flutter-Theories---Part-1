import 'package:flutter/material.dart';
import 'package:mynewone/screens/home_page.dart';

class SecondClass extends StatelessWidget {
  const SecondClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Navigation'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context, const MyColumnPage());
          },
        ),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Text(
              'Flutter Navigation',
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          //   return const MyColumnPage();
          // }));
          Navigator.of(context).pushNamed('/second');
        },
      ),
    );
  }
}
