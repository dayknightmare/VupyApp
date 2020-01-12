import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vupyapp/home.dart';
import 'package:vupyapp/login.dart';
import 'package:vupyapp/signup.dart';
import 'package:page_transition/page_transition.dart';
import 'mobx/main_mob.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

void main() => runApp(VupyApp());

class VupyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vupy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xffe7002a),
          primarySwatch: Colors.red
        ),
        home: StartPage(),
        navigatorKey: navigatorKey,
        onGenerateRoute: routes,
      );
  }
}

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return PageTransition(child: StartPage(), type: PageTransitionType.upToDown);

    case '/vupy':
      return PageTransition(
          child: Homepage(), type: PageTransitionType.downToUp);

    default:
      return null;
  }
}

class StartPage extends StatelessWidget {
  final mainctrl = MainControl();
  final PageController _pageCon = PageController();

  pageAnimation(int index) {
    _pageCon.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Image.asset(
                        "assets/vupylogo.png",
                        height: 100,
                      ),
                    ),
                    Text(
                      "Bem-vindo a Vupy",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width,
                child: Observer(
                  builder: (_) {
                    return PageView(
                      controller: _pageCon,
                      onPageChanged: (int index) {
                        mainctrl.changeIndexBottom(index);
                        pageAnimation(index);
                      },
                      children: <Widget>[
                        LoginPage(),
                        SignupPage()
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Observer(builder: (_) {
          return BubbleBottomBar(
            opacity: .3,
            inkColor: Color(0x56F20024),
            hasInk: true,
            hasNotch: true,
            elevation: 8,
            iconSize: 20,
            currentIndex: mainctrl.indexbottom,
            onTap: (int index) {
              mainctrl.changeIndexBottom(index);
              pageAnimation(index);
            },
            items: [
              BubbleBottomBarItem(
                title:
                    Text("LOGIN", style: TextStyle(color: Color(0xffe7002a))),
                icon: Icon(
                  IconData(0xe98e, fontFamily: "vupyicons"),
                  color: Colors.grey[600],
                ),
                activeIcon: Icon(
                  IconData(0xe98e, fontFamily: 'vupyicons'),
                  color: Color(0xffe7002a),
                ),
                backgroundColor: Color(0xffe7002a),
              ),
              BubbleBottomBarItem(
                title: Text("CADASTRAR",
                    style: TextStyle(color: Color(0xffe7002a))),
                icon: Icon(
                  IconData(0xe9fe, fontFamily: "vupyicons"),
                  color: Colors.grey[600],
                ),
                activeIcon: Icon(
                  IconData(0xe9fe, fontFamily: 'vupyicons'),
                  color: Color(0xffe7002a),
                ),
                backgroundColor: Color(0xffe7002a),
              ),
            ],
          );
        }));
  }
}
