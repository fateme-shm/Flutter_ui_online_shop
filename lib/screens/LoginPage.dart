import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/otherPage'),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/ic_menu.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/'),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.home,
                                size: 25,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('assets/images/ic_login.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.indigo.shade100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your Email';
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'email',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 20,
                              color: Colors.indigo,
                            )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.indigo.shade100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        obscureText: _isHidden,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your Password';
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: 'password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35, right: 35, bottom: 30),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        child: Text('Sign in', style: GoogleFonts.lato()),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account ?',
                      style: GoogleFonts.lato(),
                    ),
                    Text(
                      '  Sign up',
                      style: GoogleFonts.lato(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Divider(
                    color: Colors.indigo.shade900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
