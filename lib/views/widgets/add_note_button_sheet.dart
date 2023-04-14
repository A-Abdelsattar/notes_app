import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        CustomTextFormField(title: 'Title',),
        CustomTextFormField(title:'content',maxLines: 6,),
      ],
    );
  }
}

