import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_style.dart';

class NoteReadrerScreen extends StatefulWidget {
  NoteReadrerScreen(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteReadrerScreen> createState() => _NoteReadrerScreenState();
}

class _NoteReadrerScreenState extends State<NoteReadrerScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: Appstyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["note_title"],
              style: Appstyle.mainTitle,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              widget.doc["creation_date"],
              style: Appstyle.dateTitle,
            ),
            SizedBox(
              height: 28.0,
            ),
            Text(
              widget.doc["note_content"],
              style: Appstyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
