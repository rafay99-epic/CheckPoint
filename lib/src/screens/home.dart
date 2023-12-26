// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:todo/src/constants/colors.dart';
import 'package:todo/src/widgets/appbar.dart';
import 'package:todo/src/widgets/searchBox.dart';
import 'package:todo/src/widgets/todoTask.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CAppBar(title: "Home", iconData: Icons.home),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                const searchbox(),
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 20),
                      child: const Text(
                        'All ToDos',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: tdBlack),
                      ),
                    ),
                    const todotask()
                  ],
                ))
              ],
            )));
  }
}
