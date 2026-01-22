// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup_ui.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
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
                  'Welcome Back,',
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
                  'Make it work, make it right, make it fast. ',
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
                      FontAwesomeIcons.fingerprint,
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                    helperStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(25.0),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off_outlined,
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
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
                    "Don\'t have an account? ",
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
                          builder: (context) => SignupUi(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
