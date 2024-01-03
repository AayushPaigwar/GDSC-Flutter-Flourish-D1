import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 0, 116, 72),
                Color.fromARGB(255, 0, 27, 16),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child:
                  //Profile Pic
                  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/aayush.jpg'),
                  ),

                  // NAME
                  const Text(
                    "Aayush Paigwar",
                    style: TextStyle(
                      fontFamily: 'MontserratAlternates',
                      fontSize: 35,
                      color: Color(0xFFEDF2EF),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                  //SPACE BETWEEN NAME AND BIO
                  const SizedBox(
                    height: 8,
                  ),

                  //BIO
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEDF2EF),
                        wordSpacing: 2),
                  ),

                  SizedBox(
                    height: 40,
                    width: 300,
                    child: Divider(
                      color: Colors.green.withOpacity(0.4),
                    ),
                  ),

                  // CARD FOR ADDING PRSL DETAILS
                  //CARD-1 (GITHUB)
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('https://github.com/AayushPaigwar');
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
                                fontFamily: 'MontserratAlternates'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-2 (LINKEDIN)
                  InkWell(
                    onTap: () {
                      final Uri url = Uri.parse(
                          'https://www.linkedin.com/in/aayush-paigwar/');
                      launchUrl(url);
                    },
                    child: const Card(
                      surfaceTintColor: Colors.amber,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'LinkedIn',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MontserratAlternates'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-3 (INSTAGRAM)
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('https://www.instagram.com/aayush___27/');
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
                            color: Colors.black,
                          ),
                          title: Text(
                            'Instagram',
                            style: TextStyle(
                                color: Color(0xFF212738),
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MontserratAlternates'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // CARD-4 (EMAIL)
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('mailto:aayush.paigwar123@gmail.com ');
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
                                fontFamily: 'MontserratAlternates'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-5 (DUMMY)
                  InkWell(
                    onTap: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(Uri.parse(url));
                    },
                    child: const Card(
                      color: Color(0xFFEDF2EF),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'DUMMY',
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
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
                  InkWell(
                    onTap: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(Uri.parse(url));
                    },
                    child: const Card(
                      color: Color(0xFFEDF2EF),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            'DUMMY',
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF212738),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-7 (DUMMY)
                  InkWell(
                    onTap: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(Uri.parse(url));
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
                            FontAwesomeIcons.faceSmileBeam,
                            color: Color(0xFF212738),
                          ),
                          title: Text(
                            "DUMMY",
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF212738),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD-8 (DUMMY)
                  InkWell(
                    onTap: () {
                      const url = 'mailto:aayush.paigwar123@gmail.com ';
                      launchUrl(Uri.parse(url));
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
                            "Yes, my First Scrollable App",
                            style: TextStyle(
                              fontFamily: 'MontserratAlternates',
                              fontSize: 16,
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
