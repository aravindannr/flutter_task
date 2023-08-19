import 'package:flutter/material.dart';

import '../widgets/Button.dart';
import '../widgets/loginContainer.dart';
import '../widgets/textformField.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;
  void _login() {
    if (formkey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  heightFactor: 2,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black),
                  ),
                ),
                Text(
                  "Welcome back! Login with your credentials",
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
                SizedBox(height: 25),
                CustromTextformField(
                    hintText: "Enter your username",
                    textInputAction: TextInputAction.next,
                    validator: (uname) {
                      if (uname!.isEmpty || !uname.contains('@')) {
                        return 'Enter a valid Email ID';
                      } else {
                        return null;
                      }
                    },
                ),
                SizedBox(
                  height: 25,
                ),
                CustromTextformField(
                  hintText: 'Enter your password',
                  textInputAction: TextInputAction.done,
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true ? Icons.visibility_off : Icons
                            .visibility,
                      )),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter a valid Password, length should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                          style: TextStyle(fontSize: 15, color: Colors.black45)
                      )),
                ],
              ),),
                SizedBox(height: 15),
                MyButton(onTap: _login, text: 'Login',),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 1,
                      color: Colors.black,
                    ),

                    Text("Or Continue with"),

                    Container(
                      width: 100,
                      height: 1,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginContainer(
                      text: 'google',
                      onTap: () {},
                      imagePath: 'assets/images/google.png',
                    ),
                    LoginContainer(
                      text: 'email',
                      onTap: () {},
                      imagePath: 'assets/images/gmail.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 110),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    child: Text(
                      "Or Create a New Account",
                        style: TextStyle(fontSize: 14, color: Colors.black45)
                    ),
                  ),
                ),
              ],
            )));
  }
}
