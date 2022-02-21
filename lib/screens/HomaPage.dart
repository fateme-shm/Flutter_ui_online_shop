import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchController = TextEditingController();
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
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/otherPage'),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
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
                      Column(
                        children: [
                          Text(
                            'Hello Fateme',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Text(
                            'Iran, Teh',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/loginPage'),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.person, color: Colors.indigo),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 10,
                        color: Colors.indigo.shade500,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                'assets/images/ic_shop_girl.png',
                                height: 200,
                                width: 180,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Big  Sale',
                                    style: GoogleFonts.lato(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Get the trandy \n fashion at  a discount\n of up to 50%',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/listPage'),
                            child: Card(
                              color: Colors.indigo.shade400,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                child: Text(
                                  'All',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Card(
                            color: Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                'Popular',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Card(
                            color: Colors.indigo.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                'Recent',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Card(
                            color: Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                'Recomended',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: SizedBox(
                                width: 150,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.asset(
                                    'assets/images/ic_row1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Casual V-Neck',
                                      style: GoogleFonts.lato(),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.money_dollar,
                                          size: 15,
                                        ),
                                        Text(
                                          '210.00',
                                          style: GoogleFonts.lato(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.indigo.shade500,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Icon(
                                          CupertinoIcons.heart,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: SizedBox(
                                width: 150,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.asset(
                                    'assets/images/ic_row2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Casual V-Shirt',
                                      style: GoogleFonts.lato(),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.money_dollar,
                                          size: 15,
                                        ),
                                        Text(
                                          '119.00',
                                          style: GoogleFonts.lato(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.indigo.shade500,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Icon(
                                          CupertinoIcons.heart,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: SizedBox(
                                width: 150,
                                height: 200,
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/detailPage'),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(35),
                                    child: Image.asset(
                                      'assets/images/ic_main_detail.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Blue Blazeer',
                                      style: GoogleFonts.lato(),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.money_dollar,
                                          size: 15,
                                        ),
                                        Text(
                                          '250.00',
                                          style: GoogleFonts.lato(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.indigo.shade500,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: SizedBox(
                                width: 150,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.asset(
                                    'assets/images/ic_row4.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Casual V-Coat',
                                      style: GoogleFonts.lato(),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.money_dollar,
                                          size: 15,
                                        ),
                                        Text(
                                          '340.00',
                                          style: GoogleFonts.lato(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.indigo.shade500,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
