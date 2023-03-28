import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:linkedin_login_screen/forgot_password_screen.dart';
import 'package:linkedin_login_screen/signup_screen.dart';

class LinkedinLoginScreen extends StatefulWidget {
  const LinkedinLoginScreen({Key? key}) : super(key: key);

  @override
  State<LinkedinLoginScreen> createState() => _LinkedinLoginScreenState();
}

class _LinkedinLoginScreenState extends State<LinkedinLoginScreen> {
  bool _showPassword = false;

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _navigateToForgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
    );
  }

  void _navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  SignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ClipRRect(
                      child: Image.asset('assets/images/linkedin.webp'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.close,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0, left: 30),
              child: Text(
                'Sign in',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 15),
                  child: Text(
                    'or',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5.0,
                  top: 15),
                  child: Text('Join Linkedin',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                  ),)
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 10, right: 30),
              child: TextFormField(
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: InkWell(
                    onTap: _togglePasswordVisibility,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0,
                      right: 12,
                      bottom: 12),
                      child: Text(
                        _showPassword ? 'Hide' : 'Show',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: RichText(
                text: TextSpan(
                  text: 'Forgot Password?',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = _navigateToForgotPassword,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 340,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[900]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.blue))),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(children: const <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 10,
                )),
                Text("or"),
                Expanded(
                    child: Divider(
                  thickness: 2,
                  indent: 10,
                  endIndent: 30,
                )),
              ]),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 340,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.black))),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/images/applelogo.png'),
                            iconSize: 50,
                            onPressed: () {},
                          ),
                          const Text(
                            'Sign in with Apple',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 340,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.black))),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/images/google.jpeg'),
                            iconSize: 50,
                            onPressed: () {},
                          ),
                          const Text(
                            'Sign in with Google',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
