// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          Builder(builder: (context) {
            return (ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Next"),
            ));
          })
        ],
      ),
      appBar: AppBar(
        title: const Text("Named Routes"),
      ),
    ));
  }
}
