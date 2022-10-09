import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notetakingapp/style/appstyle.dart';

class Notereader extends StatefulWidget {
  Notereader(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;
  @override
  State<Notereader> createState() => _NotereaderState();
}

class _NotereaderState extends State<Notereader> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: Appstyle.cardscolor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardscolor[color_id],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["note_title"],
            style: Appstyle.mainTitle,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              widget.doc["creation_date"],
            style: Appstyle.datetitle,
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              widget.doc["note_content"],
            style: Appstyle.mainContent,
            // overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
