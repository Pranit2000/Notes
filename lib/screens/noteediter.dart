import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notetakingapp/style/appstyle.dart';

class Noteediter extends StatefulWidget {
  const Noteediter({Key? key}) : super(key: key);

  @override
  State<Noteediter> createState() => _NoteediterState();
}

class _NoteediterState extends State<Noteediter> {
  @override
  Widget build(BuildContext context) {
    int color_id = Random().nextInt(Appstyle.cardscolor.length);
    String date = DateTime.now().toString();
    TextEditingController _titleController = TextEditingController();
    TextEditingController _mainController = TextEditingController();
    return Scaffold(
      backgroundColor: Appstyle.cardscolor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardscolor[color_id],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Add a new Note",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Note Title'),
              style: Appstyle.mainTitle,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: Appstyle.datetitle,
            ),
            SizedBox(
              height: 28,
            ),
            TextFormField(
              controller: _mainController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Main content'),
              style: Appstyle.mainContent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Appstyle.accentcolor,
        onPressed: () async {
          FirebaseFirestore.instance.collection("Notes").add({
            "note_title": _titleController.text,
            "creation_date": date,
            "note_content": _mainController.text,
            "color_id": color_id
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError(
              (error) => print("Failed to add new Note due to $error"));
        },
        label: Text("Save"),
        icon: Icon(Icons.save),
      ),
    );
  }
}
