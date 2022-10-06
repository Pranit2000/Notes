import 'package:flutter/material.dart';
import 'package:notetakingapp/style/appstyle.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.maincolor,
      appBar: AppBar(
        elevation: 0,
        title: Text("FireNotes"),
        centerTitle: true,
        backgroundColor: Appstyle.maincolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your recent Notes",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          
        ],
      ),
    );
  }
}
