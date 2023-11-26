import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact_screen.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/journal_screen.dart';
import 'package:portfolio/screens/skills_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff001A2C),
      ),
      home: const MyHomePage(title: 'Flutter App Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabEntry = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
            vertical: MediaQuery.of(context).size.height * 0.02),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const Image(image: AssetImage('assets/R.png')),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 1;
                              });
                            },
                            child: const Text(
                              'Home',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 2;
                              });
                            },
                            child: const Text(
                              'Experience',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 3;
                              });
                            },
                            child: const Text(
                              'Skills',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 4;
                              });
                            },
                            child: const Text(
                              'Journal',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              setState(() {
                                tabEntry = 5;
                              });
                            },
                            child: const Text(
                              'Contact',
                              style: TextStyle(
                                  fontFamily: 'scope',
                                  color: Colors.white,
                                  fontSize: 20.0),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ]),
          ),
          if (tabEntry == 0 || tabEntry == 1) const HomeScreen(),
          if (tabEntry == 2) const ExperienceScreen(),
          if (tabEntry == 3) const SkillsScreen(),
          if (tabEntry == 4) const JournalScreen(),
          if (tabEntry == 5) const ContactScreen(),
        ]),
      ),
    );
  }
}
