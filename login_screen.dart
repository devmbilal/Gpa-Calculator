import 'package:flutter/material.dart';
import 'package:gpa_calculator/screen_one.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 250,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          'assets/quaid-e-azam-university-islamabad-admission-2019.png')),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Quaid-i-Azam University',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: ('Kanit'),
                    color: green,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'GPA Calculator',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: ('Kanit'),
                  color: green,
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: teal,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black12,
                    width: 2,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenOne(),
                        ));
                  },
                  child: const Center(
                    child: Text(
                      'CS Department',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Pop One',
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: teal,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black12,
                    width: 2,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenOne(),
                        ));
                  },
                  child: const Center(
                    child: Text(
                      'Other',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Pop One',
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
