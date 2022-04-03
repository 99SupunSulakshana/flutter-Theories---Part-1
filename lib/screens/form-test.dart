// ignore_for_file: file_names, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  const FormTest({Key? key}) : super(key: key);

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      maxLength: 100,
      maxLines: 2,
      decoration: const InputDecoration(hintText: 'Name'),
      validator: (text) {
        if (text!.isEmpty) {
          return 'Name cannot be Empty';
        }
        if (text.length < 2) {
          return 'Name must be at least 2 characters long';
        }
        if (text.length > 10) {
          return 'Name must be less than 50 characters long';
        }
        return null;
      },
      // onSaved: (text) {
      //   _name = text;
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Handling'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                _buildNameField(),
                const SizedBox(
                  height: 300.0,
                ),
                RaisedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Asynchronous programming
class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key}) : super(key: key);

  @override
  State<NetworkRequest> createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //simulate network NetwrokRequest
  void getData() async {
    String email = await Future.delayed(const Duration(seconds: 3), () {
      return ('supunsulak20@gmail.com');
    });
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return ('bubbles');
    });

    print(email + '-' + bio);
  }

  Future<String> getNet() async {
    String email = await Future.delayed(const Duration(seconds: 1), () {
      return ('supunsulak20@gmail.com');
    });
    return email;
  }

  Future<void> getNetworkRequest() async {
    print(await getNet());
  }

  @override
  void initState() {
    super.initState();
    getNetworkRequest();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
