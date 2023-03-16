import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

launchUrl(url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Container(
          color: const Color(0xFF212738),
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [
          //       Color(0xFF212730),
          //       Color(0xFF212740),
          //     ],
          //   ),
          // ),
          child: SingleChildScrollView(
            child: SafeArea(
              child:
                  //Profile Pic
                  // ignore: prefer_const_literals_to_create_immutables
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/aayush.jpg'),
                    ),
                  ),

                  // NAME

                  const Text(
                    "Aayush Paigwar",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 35,
                      color: Color(0xFFEDF2EF),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                  //SPACE BETWEEN NAME AND BIO
                  const SizedBox(
                    height: 15,
                  ),

                  //BIO

                  const Text(
                    'ARTIFICIAL INTELLIGENCE STUDENT',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEDF2EF),
                        wordSpacing: 2),
                  ),

                  const SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Color(0xFFEDF2EF),
                    ),
                  ),

                  //SOCIAL HANDLES

                  // Row(
                  //   children: const [
                  //     SizedBox(
                  //       width: 110,
                  //     ),
                  //     IconButton(
                  //       icon: Icon(
                  //         FontAwesomeIcons.instagram,
                  //         color: Color.fromARGB(255, 255, 0, 191),
                  //         size: 50,
                  //       ),

                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Icon(
                  //       FontAwesomeIcons.linkedin,
                  //       color: Colors.blueAccent,
                  //       size: 50,
                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Icon(
                  //       FontAwesomeIcons.github,
                  //       size: 50,
                  //       color: Color.fromARGB(255, 255, 255, 255),
                  //     )
                  //   ],
                  // ),

                  //FOR MAKING SPACE BETWEEN "CARD" AND "DETAILS"

                  const SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),

                  // CARD FOR ADDING PRSL DETAILS

                  //CARD-1 (GITHUB)
                  ElevatedButton(
                    // ignore: deprecated_member_use
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF212738),
                    ),
                    // ignore: unused_local_variable
                    onPressed: () {
                      const url = 'https://github.com/AayushPaigwar';
                      launchUrl(url);
                    },
                    child: const Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.github,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'GitHub',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SourceSansPro'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-2 (LINKEDIN)
                  ElevatedButton(
                    // ignore: deprecated_member_use
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF212738),
                    ),
                    onPressed: () {
                      const url =
                          'https://www.linkedin.com/in/aayush-paigwar-457946225/';
                      launchUrl(url);
                    },
                    child: const Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Color.fromARGB(255, 0, 68, 255),
                          ),
                          title: Text(
                            'LinkedIn',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SourceSansPro'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-3 (INSTAGRAM)
                  ElevatedButton(
                    // ignore: deprecated_member_use
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF212738),
                    ),
                    onPressed: () {
                      const url = 'https://www.instagram.com/aayush___27/';
                      launchUrl(url);
                    },
                    child: const Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.instagram,
                            color: Color.fromARGB(255, 255, 0, 221),
                          ),
                          title: Text(
                            'Instagram',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SourceSansPro'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // CARD-4 (PHONE NO.)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0xFF212738),
                    ),
                    onPressed: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(url);
                    },
                    child: const Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'Contact Me!',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SourceSansPro'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-5 (DUMMY)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0xFF212738),
                    ),
                    onPressed: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(url);
                    },
                    child: const Card(
                      color: Color(0xFFEDF2EF),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            // ignore: deprecated_member_use
                            FontAwesomeIcons.smile,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'DUMMY',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF212738),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-6 (DUMMY)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0xFF212738),
                    ),
                    onPressed: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(url);
                    },
                    child: const Card(
                      color: Color(0xFFEDF2EF),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            // ignore: deprecated_member_use
                            FontAwesomeIcons.code,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            "Yes it's my First Scrollable App",
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF212738),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
