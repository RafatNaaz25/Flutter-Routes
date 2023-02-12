// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routes_flutter/app_screens/next.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Builder(builder: (context){
              return(ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2(),
                ));
              },child: Text("Next"),));
            })
          ],
        ),
        appBar: AppBar(
          title: const Text("Routes"),
        ),
      ),
    ));
  }
}
