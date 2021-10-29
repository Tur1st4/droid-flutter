import 'package:android_design/models/page.model.dart';
import 'package:android_design/widgets/active.icon.dart';
import 'package:android_design/widgets/app.bar.widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final List<DroidPage> pages;
  const MainPage({Key? key, required this.pages}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _current = 0;

  void changePage(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DroidBar(
        title: widget.pages[_current].textTitle,
      ),
      body: widget.pages[_current].page,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: (Colors.grey[200])!,
            ),
            bottom: BorderSide(
              color: (Colors.grey[200])!,
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedFontSize: 12.0,
          backgroundColor: Theme.of(context).backgroundColor,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: _current,
          onTap: changePage,
          items: widget.pages
              .map(
                (page) => BottomNavigationBarItem(
                  icon: page.icon,
                  label: page.textTitle,
                  activeIcon: DroidIconActive(
                    icon: page.icon,
                  ),
                ),
              )
              .toList(),
        ),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    );
  }
}
