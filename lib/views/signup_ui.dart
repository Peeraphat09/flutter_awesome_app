// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_ui.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 35.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Get On Board!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create your profile to start your journey',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Full Name',
                  helperStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(25.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'E-Mail',
                  helperStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(25.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  prefixIcon: Icon(
                    Icons.phone_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Phone No',
                  helperStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(25.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.fingerprint,
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                  helperStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(25.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SIGNUP',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('OR'),
              SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/googlelogo.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Sign-in with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    50.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
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
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
