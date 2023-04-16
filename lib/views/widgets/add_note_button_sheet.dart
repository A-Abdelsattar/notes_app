import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

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
      child: BlocConsumer<AddNoteCubit,AddNoteState>(
        listener: (context,state){
          if(state is AddNoteErrorState){
            print('error ${state.errorMassage}');
          }
        if (state is AddNoteSuccessState){
            Navigator.pop(context);
          }

        },
        builder: (context,state) {
          return state is AddNoteLoadingState?const Center(child: CircularProgressIndicator(),): Form(
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
          );
        }
      ),
    );
  }
}

