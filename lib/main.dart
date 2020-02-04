import 'package:flutter/material.dart';
import 'package:noteapp/screens/note_list.dart';
import 'package:noteapp/screens/note_detail.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'NoteApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: NoteDetail(),
    );
  }
}