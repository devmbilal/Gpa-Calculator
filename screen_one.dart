import 'package:flutter/material.dart';
import 'package:gpa_calculator/constants.dart';
import 'package:gpa_calculator/dropdown.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  double gpa=0;
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
          body: TabBarView(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: teal,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Subjects',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: ('Pop one'),
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: VerticalDivider(
                            color: grey,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: teal,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: ('Pop one'),
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: VerticalDivider(
                            color: grey,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: teal,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Obtain',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: ('Pop one'),
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DropDown(),
                        const SizedBox(
                          height: 30,
                          child: VerticalDivider(
                            color: grey,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: teal,
                          ),
                          child: const Center(
                            child: Text(
                              '100',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: VerticalDivider(
                            color: grey,
                            thickness: 3,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: teal,
                              ),
                            ],
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontFamily: ('Pop one'),
                              fontSize: 14,
                              color: red,
                            ),

                            decoration: InputDecoration(
                              labelText: ('0-100'),
                              labelStyle: const TextStyle(
                                fontSize: 14,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: red, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: teal, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onChanged: (val)
                            {

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DropDown(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: teal,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
