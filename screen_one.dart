import 'package:flutter/material.dart';
import 'package:gpa_calculator/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  double gpa(String m) {
    if (double.parse(m) < 50) {
      return 0.0;
    } else if (double.parse(m) <= 54) {
      return 1.0;
    } else if (double.parse(m) <= 59) {
      return 2.0;
    } else if (double.parse(m) <= 63) {
      return 2.5;
    } else if (double.parse(m) <= 67) {
      return 2.8;
    } else if (double.parse(m) <= 71) {
      return 3.0;
    } else if (double.parse(m) <= 75) {
      return 3.5;
    } else if (double.parse(m) <= 79) {
      return 3.8;
    } else {
      return 4.0;
    }
  }

  final List<String> items = [
    'PSP-2',
    'PS',
    'ICT',
    'Calculas',
    'ENG',
  ];
  String? selectedValue;
  double credit=0;
  double gp=0;
  double totalgpa=0;
  double abc=0;
  double totalcredit=0;
  @override
  Widget build(BuildContext context) {
     abc=gp*credit;
     print(gp);
     print(credit);
     totalgpa+=abc;

     totalcredit+=credit;
     print(totalcredit);
     gp=0;

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: blackblue,
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
                                color: blackblue,
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
                                color: blackblue,
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
                                color: blackblue,
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
                         DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Icon(
                                  Icons.list,
                                  size: 16,
                                  color: white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Expanded(
                                  child: Text(
                                    'Subjects',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue=value as String;
                                int length=(selectedValue!.length)-1;
                                String mgpa=selectedValue![length];
                                credit=double.parse(mgpa);
                              });

                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                            iconSize: 14,
                            iconEnabledColor: white,
                            iconDisabledColor: Colors.grey,
                            buttonHeight: 30,
                            buttonWidth: 120,
                            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: Colors.black26,
                              ),
                              color: blackblue,
                            ),
                            buttonElevation: 2,
                            itemHeight: 40,
                            itemPadding: const EdgeInsets.only(left: 14, right: 14),
                            dropdownMaxHeight: 200,
                            dropdownWidth: 120,
                            dropdownPadding: null,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: blackblue,
                            ),
                            dropdownElevation: 8,
                            scrollbarRadius: const Radius.circular(40),
                            scrollbarThickness: 6,
                            scrollbarAlwaysShow: true,
                            offset: const Offset(-20, 0),
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
                          height: 40,
                          width: 80,
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
                                color: blackblue,
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
                                    const BorderSide(color: blackblue, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onChanged: (String val) {
                              gp=gpa(val);
                              setState(() {
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text('Hello'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: blackblue,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
