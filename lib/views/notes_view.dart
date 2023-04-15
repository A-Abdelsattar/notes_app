import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'widgets/add_note_button_sheet.dart';
import 'widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){
        showModalBottomSheet(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),context: context, builder: (context)=>const AddNoteButtonSheet());
      },child:const Icon(Icons.add),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Column(
            children:const [
              CustomAppBar(title: 'Notes',icon: Icons.search,),
              Expanded(
                  child: NotesListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
