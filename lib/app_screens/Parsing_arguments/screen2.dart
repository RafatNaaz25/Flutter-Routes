// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routes_flutter/app_screens/Parsing_arguments/screen1.dart';

class MyApp6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp6> {
  @override
  Widget build(BuildContext context) {
    MyArgsValues args = ModalRoute.of(
      context)?.settings.arguments as MyArgsValues;
    
    return (Scaffold(
      body: Column(
        children: [
          Builder(builder: (context) {
            return (ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: Text("Previous"),
            ));
          }),
          Text("Args is ${args.fname}")
        ],
      ),
      appBar: AppBar(title: const Text("Second Screen")),
    ));
  }
}
