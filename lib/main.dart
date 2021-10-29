import 'package:android_design/models/page.model.dart';
import 'package:android_design/pages/article.page.dart';
import 'package:android_design/pages/texts.page.dart';
import 'package:android_design/pages/main.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);
  final _pages = <DroidPage>[
    DroidPage(
      icon: const Icon(CupertinoIcons.news_solid),
      page: TextsPage(
        items: [
          DroidPage(
            title: const Text('Article'),
            page: const ArticlePage(),
            icon: const Icon(
              CupertinoIcons.news,
            ),
            textTitle: 'Article',
          ),
        ],
      ),
      title: const Text('Text\'s'),
      textTitle: 'Text\'s',
    ),
    DroidPage(
      icon: const Icon(CupertinoIcons.home),
      page: TextsPage(
        items: [
          DroidPage(
            title: const Text('Article'),
            page: const ArticlePage(),
            icon: const Icon(
              CupertinoIcons.news,
            ),
            textTitle: 'Article',
          ),
        ],
      ),
      title: const Text('Home'),
      textTitle: 'Home',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Design',
      builder: (context, widget) {
        return ScrollConfiguration(
          behavior: const ScrollBehaviorModified(),
          child: widget ?? Container(),
        );
      },
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 61, 220, 132),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 51, 51, 51),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: const Color.fromARGB(255, 51, 51, 51),
          ),
          bodyText2: GoogleFonts.inter(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(pages: _pages),
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
