// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class MyApp5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyArgsValues {
  String? fname;
  MyArgsValues(this.fname);
}

class MyState extends State<MyApp5> {
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          Builder(builder: (context) {
            return (ElevatedButton(
              onPressed: () {
                var s = t1.text;
                print(s);
                Navigator.pushNamed(context, '/second',
                    arguments: MyArgsValues(s));
              },
              child: Text("Next2"),
            ));
          })
        ],
      ),
      appBar: AppBar(
        title: const Text("Passing Arguments"),
      ),
    ));
  }
}
