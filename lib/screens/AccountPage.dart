import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(CupertinoIcons.question,
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Account',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6),
                        child: Icon(
                          Icons.exit_to_app,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/ic_profile.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    color: Colors.indigo[400],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fateme',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Personal Information',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 35,
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Account Settings',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 35,
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Favorite',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 35,
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.lock,
                          size: 30,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Privacy',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 35,
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.indigo,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Notifications',
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 35,
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
