import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder:(context,index)=> Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: NoteItem(),
    ));
  }
}
