import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_form_field.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({Key? key}) : super(key: key);

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
  final GlobalKey<FormState> formKey=GlobalKey();
  String? title,subTitle;
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          children: [
            CustomTextFormField(title: 'Title',
              onSaved: (value){
              title=value;
              },
            ),
            CustomTextFormField(title:'content',maxLines: 6,
              onSaved: (value){
              subTitle=value;
              },
            ),
            CustomButton(
              onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autoValidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

