import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatefulWidget {
  const StreamExample({Key? key}) : super(key: key);

  @override
  State<StreamExample> createState() => _StreamExampleState();
}

class _StreamExampleState extends State<StreamExample> {
  final StreamController _controller = StreamController();

  addStreamData() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      _controller.sink.add(i);
    }
  }

  Stream<int> addStreamData2() async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield i;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  void initState() {
    super.initState();
    //addStreamData();
    addStreamData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Example'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: StreamBuilder(
            stream: addStreamData2().where((event) => event.isEven),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text("Error");
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              }
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Stream Item',
                    ),
                    Text(
                      '${snapshot.data}',
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ]);
            }),
      ),
    );
  }
}
