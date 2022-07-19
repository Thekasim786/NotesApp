import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/styles/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Appstyle.cardsColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            doc["note_title"],
            style: Appstyle.mainTitle,
          ),
          Text(
            doc["creation_date"],
            style: Appstyle.dateTitle,
          ),
          Text(
            doc["note_content"],
            style: Appstyle.mainContent,
          ),
        ],
      ),
    ),
  );
}
