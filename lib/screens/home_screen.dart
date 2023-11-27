import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/gradient_box.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.10),
      //decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Row(
                  children: [
                    AutoSizeText(
                      'HELLO ',
                      style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'Horizon',
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                    AutoSizeText(
                      '!!!',
                      style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                // const AutoSizeText(
                //   'I AM ROHIT BHANDWALKAR',
                //   style: TextStyle(
                //       letterSpacing: 2.0,
                //       color: Colors.white,
                //       fontSize: 40.0,
                //       fontFamily: 'Horizon'),
                // ),
                Row(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('I AM ROHIT BHARAT BHANDWALKAR',
                            textStyle: const TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontFamily: 'Horizon')),
                      ],
                      repeatForever: true,
                      displayFullTextOnTap: true,
                      pause: const Duration(milliseconds: 2000),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const AutoSizeText(
                  'Passionate tech enthusiast with a flair for creative writing. Specializing in Flutter app development and Firebase exploration, I bring hands-on experience as a web and app developer. A collaborative team player, I\'m excited to contribute to cutting-edge tech projects, bringing innovation to life. Welcome to my portfolio – where passion meets proficiency.',
                  style: TextStyle(
                      color: Color(0xffE59500),
                      fontSize: 18.0,
                      fontFamily: 'Lato'),
                ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // const AutoSizeText(
                //   'Flutter Developer',
                //   style: TextStyle(
                //       color: Color(0xffE59500),
                //       fontSize: 20.0,
                //       fontFamily: 'Horizon'),
                // ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // const AutoSizeText(
                //   'Creative Writer',
                //   style: TextStyle(
                //       color: Color(0xffE59500),
                //       fontSize: 20.0,
                //       fontFamily: 'Horizon'),
                // ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Center(
                  child: InkWell(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://drive.google.com/file/d/1Z86am44XEwJF6zeXfZsWZ4TR_wd5OK0F/view?usp=sharing'));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          gradient: const LinearGradient(
                              colors: [Colors.pinkAccent, Colors.blue]),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.pinkAccent,
                              blurRadius: 20,
                              offset: Offset(0, -1),
                            ),
                            BoxShadow(
                                color: Colors.blue,
                                blurRadius: 20,
                                offset: Offset(0, 1)),
                          ]),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            AutoSizeText(
                              'Download Resume',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          // AnimatedBuilder(
          //     animation: _controller,
          //     builder: (context, child) {
          //       final value = _controller.value;
          //       return Transform.translate(
          //         offset: Offset(0, 10 * value),
          //         child: Container(
          //           width: MediaQuery.of(context).size.width * 0.3,
          //           height: MediaQuery.of(context).size.height * 0.45,
          //           padding: EdgeInsets.all(
          //               MediaQuery.of(context).size.width * 0.01),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(25.0),
          //               gradient: const LinearGradient(
          //                   colors: [Colors.pink, Colors.blue]),
          //               boxShadow: const [
          //                 BoxShadow(
          //                     color: Colors.pink,
          //                     blurRadius: 20,
          //                     offset: Offset(-2, 0)),
          //                 BoxShadow(
          //                     color: Colors.blue,
          //                     blurRadius: 20,
          //                     offset: Offset(2, 0))
          //               ]),
          //           child: Container(
          //             alignment: Alignment.center,
          //             decoration: BoxDecoration(
          //                 image: const DecorationImage(
          //                     image: AssetImage('assets/Mic.jpg'),
          //                     fit: BoxFit.cover),
          //                 borderRadius: BorderRadius.circular(25.0)),
          //           ),
          //         ),
          //       );
          //     })
          GradientBox(
              containerWidth: 0.3,
              containerHeight: 0.45,
              duration: 500,
              imageName: 'Mic')
        ],
      ),
    );
  }
}
