import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
           Colors.yellow.withOpacity(.8),
           Colors.orange,

        ])
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            iconColor: Colors.black,
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Build your career with ahmed abdelsattar',
                style:
                TextStyle(color: Colors.black.withOpacity(.4), fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('11April, 2023',style: TextStyle(color: Colors.black.withOpacity(.4)),),
          ),
        ],
      ),
    );
  }
}
