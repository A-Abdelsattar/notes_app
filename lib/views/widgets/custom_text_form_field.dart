import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final int maxLines;
  final String title;
  const CustomTextFormField({Key? key,  this.maxLines=1, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        maxLines: maxLines,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: title,
            border:const OutlineInputBorder(
            ),
            enabledBorder:const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder:const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            )
        ),
      ),

    );
  }
}
