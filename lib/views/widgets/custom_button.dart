import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap}) : super(key: key);

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue
          ),
          child: Center(child: Text('Add')),
        ),
      ),
    );
  }
}
