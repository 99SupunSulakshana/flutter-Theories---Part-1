import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mynewone/screens/provider-package.dart';
//import 'package:mynewone/screens/state-management.dart';
//import 'package:mynewone/screens/form-test.dart';
//import 'screens/form-test.dart';
import 'screens/home_page.dart';
//import 'screens/streams.dart';
//import 'screens/second_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const MainPagep(),
      routes: <String, WidgetBuilder>{
        '/second': (context) => const MyColumnPage(),
      },
    );
  }
}

// App Bar & Tab Bar..................................
class MyHomePageAppBar extends StatelessWidget {
  const MyHomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter'),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
            //flexibleSpace: Image.asset("assests/Suppa.jpg", fit: BoxFit.cover),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Cars",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: "Train",
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "Bike",
                ),
              ],
            ),
            elevation: 30.0,
            backgroundColor: Colors.orange,
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

// Columns......
// class MyColumnPage extends StatefulWidget {
//   const MyColumnPage({Key? key}) : super(key: key);

//   @override
//   State<MyColumnPage> createState() => _MyColumnPageState();
// }

// class _MyColumnPageState extends State<MyColumnPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red[600],
//           title: const Text('Flutter Example'),
//         ),
//         body: Container(
//           color: Colors.pink,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: const <Widget>[
//               Text(
//                 'Text 01',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Text 01',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Text 01',
//                 style: TextStyle(fontSize: 20.0),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//Rows...................................

class MyRowsPage extends StatefulWidget {
  const MyRowsPage({Key? key}) : super(key: key);
  @override
  State<MyRowsPage> createState() => _MyRowsPageState();
}

class _MyRowsPageState extends State<MyRowsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Rows Examples'),
        ),
        body: Container(
          color: Colors.pink,
          width: double.infinity,
          height: 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              Icon(
                Icons.brush,
                color: Colors.lightGreen,
                size: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateful widgets

// int count = 0;

// class SFul extends StatelessWidget {
//   const SFul({Key? key}) : super(key: key);
//   void increment() {
//     count = count + 1;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: const Text("Flutter Examples"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed button times',
//               style: TextStyle(fontSize: 25.0),
//             ),
//             Text(
//               '$count',
//               style: const TextStyle(
//                 color: Colors.amber,
//                 fontSize: 30.0,
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.amber,
//         child: const Icon(
//           Icons.add,
//           color: Colors.black,
//           size: 20.0,
//         ),
//         onPressed: increment,
//       ),
//     );
//   }
// }

class SFul extends StatefulWidget {
  const SFul({Key? key}) : super(key: key);
  @override
  State<SFul> createState() => _SFulState();
}

class _SFulState extends State<SFul> {
  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Flutter Examples"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed button times',
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              '$count',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 30.0,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 20.0,
        ),
        onPressed: increment,
      ),
    );
  }
}

class TextFields extends StatefulWidget {
  const TextFields({
    Key? key,
  }) : super(key: key);
  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    title.text = 'Supun Sulakshana';

    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFields'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              maxLength: 20,
              controller: title,
              cursorColor: Colors.pink,

              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.edit),
              ),
              //obscureText: true,
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              maxLength: 8,
              autofocus: true,
              //obscureText: true,
              cursorColor: Colors.pink,
              keyboardType: TextInputType.number,
              //enabled: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.looks),
                hintText: 'Enter the password',
                hintStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
