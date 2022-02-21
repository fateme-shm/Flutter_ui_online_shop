import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop_design/screens/AccountPage.dart';
import 'package:online_shop_design/screens/LoginPage.dart';
import 'package:online_shop_design/screens/CardPage.dart';
import 'package:online_shop_design/screens/DetailPage.dart';
import 'package:online_shop_design/screens/HomaPage.dart';
import 'package:online_shop_design/screens/ListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          headline1: GoogleFonts.lato(
            fontSize: 18,
            color: Colors.black,
          ),
          button: GoogleFonts.lato(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/homePage': (context) => HomePage(),
        '/cardPage': (context) => CardPage(),
        '/detailPage': (context) => DetailPage(),
        '/loginPage': (context) => LoginPage(),
        '/listPage': (context) => ListPage(),
        '/accountPage': (context) => AccountPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ListPage(),
    CardPage(),
    AccountPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cube_box),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.shopping_cart),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person),
                  label: "",
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTap,
              type: BottomNavigationBarType.fixed,
              iconSize: 25,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
          ),
        ),
      ),
    );
  }
}
