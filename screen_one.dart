import 'package:flutter/material.dart';
import 'package:gpa_calculator/constants.dart';
import 'package:gpa_calculator/dropdown.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: teal,
            centerTitle: true,
            title: const Text(
              'CS Department',
              style: TextStyle(fontSize: 25),
            ),
            bottom: const TabBar(
              tabs: [
                Text(
                  'GPA',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'CGPA',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [DropDown(), DropDown()],
          ),
        ),
      ),
    );
  }
}
