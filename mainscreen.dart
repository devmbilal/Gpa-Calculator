import 'package:flutter/material.dart';
import 'package:gpa_calculator/constants.dart';
import 'package:gpa_calculator/dropdown.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Padding> subjectlist = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0A0E21),
            title: const Center(child: Text('GPA Calculator')),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 10, 8),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/Untitled design (3).png',
                                ),
                                fit: BoxFit.fill),
                            color: blackblue,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(children: subjectlist))),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 10, 8),
                      child: GestureDetector(
                        child: Center(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: blackblue,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  radius: 11,
                                  foregroundColor: Colors.green,
                                  backgroundColor: background,
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Add Course',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          subjectlist.add(ReusableRow());
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                              child: Text(
                            'Calculate',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                        ),
                      ),
                    ),
                    const Divider(
                      color: blackblue,
                      thickness: 3,
                    ),
                    Expanded(child: Container())
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Padding ReusableRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropDown(),
            ),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: blackblue,
            ),
            child: const Center(
              child: Text(
                '100',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pop One'),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: blackblue,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    color: blackblue,
                  ),
                ],
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontFamily: ('Pop one'),
                  fontSize: 14,
                  color: white,
                ),
                cursorColor: white,
                decoration: InputDecoration(
                  labelText: ('0-100'),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    color: white,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: red, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blackblue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (String val) {
                  setState(() {});
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              subjectlist.removeLast();
              setState(() {});
            },
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: blackblue,
              child: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
