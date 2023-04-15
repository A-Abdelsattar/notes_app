import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 4.0),
          child: Column(
            children:const [
              CustomAppBar(title: 'Edit Note', icon: Icons.done)
            ],
          ),
        ),
      ),
    );
  }
}
