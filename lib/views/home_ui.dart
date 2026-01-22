// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_awesome_app/views/signup_ui.dart';
import 'login_ui.dart';

// ignore_for_file: prefer_const_constructors
class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 200.0,
            ),
            Text(
              'ยินดีต้อนรับ DTI-SAU',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Created by Peeraphat🥽🤣😫🧑🥞',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              'Souteast Asia University',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      150.0,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
