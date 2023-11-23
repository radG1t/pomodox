import 'package:flutter/material.dart';

class noteBox extends StatelessWidget {
  const noteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromRGBO(255, 255, 255, 0.498),
        border: Border.all(color: Colors.white60, width: 1.5),
      ),
      child: const TextField(
        style: TextStyle(
          fontSize: 18,
        ),
        showCursor: true,
        textAlign: TextAlign.center,
        cursorColor: Color.fromARGB(115, 75, 70, 70),
        cursorRadius: Radius.circular(12),
        cursorHeight: 18,
        autofillHints: Characters.empty,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: ' any note :',
          labelStyle: TextStyle(color: Colors.black38),
          border: InputBorder.none,
        ),
        maxLines: null,
        maxLength: 300,
      ),
    );
  }
}
