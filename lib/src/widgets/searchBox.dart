// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchbox extends StatelessWidget {
  // const searchbox({super.key, required onChanges});
  const searchbox({super.key, required onChanges});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Search Task",
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
