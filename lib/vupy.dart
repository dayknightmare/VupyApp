import 'dart:async';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vupyapp/mobx/vupy_mob.dart';
import 'package:vupyapp/vupyPages/chat.dart';
import 'package:vupyapp/vupyPages/home.dart';
import 'package:vupyapp/vupyPages/profile.dart';

final vupyctrl = VupyControl();

class VupyHome extends StatelessWidget {
  final List<Widget> pages = [
    HomePage(),
    ChatPage(),
    ProfilePage(),
  ];

  final PageController _pageCon = PageController();

  void changePage(int index) {
    if (!vupyctrl.animationStop) {
      vupyctrl.changeAnimation();
      vupyctrl.changeIndex(index);
      _pageCon.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      Timer(Duration(milliseconds: 500), () {
        vupyctrl.changeAnimation();
      });
    }
  }

  void clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageCon,
        onPageChanged: (int index) => changePage(index),
        children: <Widget>[
          pages[0],
          pages[1],
          pages[2],
        ],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BubbleBottomBar(
          opacity: .3,
          inkColor: Color(0x56F20024),
          hasInk: true,
          hasNotch: true,
          elevation: 8,
          iconSize: 20,
          currentIndex: vupyctrl.bottomIndex,
          onTap: (int index) => changePage(index),
          items: [
            BubbleBottomBarItem(
              title: Text("POSTS", style: TextStyle(color: Color(0xffe7002a))),
              icon: Icon(
                IconData(0xe9cb, fontFamily: "vupyicons"),
                color: Colors.grey[600],
              ),
              activeIcon: Icon(
                IconData(0xe9cb, fontFamily: 'vupyicons'),
                color: Color(0xffe7002a),
              ),
              backgroundColor: Color(0xffe7002a),
            ),
            BubbleBottomBarItem(
              title: Text("CHAT", style: TextStyle(color: Color(0xffe7002a))),
              icon: Icon(
                IconData(0xe997, fontFamily: "vupyicons"),
                color: Colors.grey[600],
              ),
              activeIcon: Icon(
                IconData(0xe997, fontFamily: 'vupyicons'),
                color: Color(0xffe7002a),
              ),
              backgroundColor: Color(0xffe7002a),
            ),
            BubbleBottomBarItem(
              title: Text("PERFIL", style: TextStyle(color: Color(0xffe7002a))),
              icon: Icon(
                IconData(0xea00, fontFamily: "vupyicons"),
                color: Colors.grey[600],
              ),
              activeIcon: Icon(
                IconData(0xea00, fontFamily: 'vupyicons'),
                color: Color(0xffe7002a),
              ),
              backgroundColor: Color(0xffe7002a),
            ),
          ],
        ),
      ),
    );
  }
}
