import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vupyapp/mobx/home_mob.dart';
import 'package:vupyapp/widgets/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final homectrl = HomeControl();

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final String imgDefault = Urls().getUrl() + "/static/img/user.png";

  void start() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = prefs.getInt("user" ?? null);
    var api = prefs.getString("api" ?? null);

    if (user != null && api != null) {
      var data = {"user": user, "api": api};
      var r = await http.post(
          Uri.encodeFull(Urls().getUrl() + "/webwork/initialposts/"),
          body: json.encode(data));
      if (this.mounted) {
        setState(() {
          homectrl.addItem(jsonDecode(r.body)['posts']);
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return homectrl.msgs.length == 0
        ? Center(
            child: Container(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(),
            ),
          )
        : SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          child: TextField(
                            maxLines: 20,
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              helperMaxLines: 20,
                              labelText: "Publique uma mensagem",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.grey[600]),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0x01000001),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                MaterialButton(
                                  onPressed: () {},
                                  child: Icon(
                                    IconData(0xe92b, fontFamily: "vupyicons"),
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                  color: Color(0xffe7002a),
                                  height: 40,
                                  minWidth: 40,
                                  shape: CircleBorder(),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Icon(
                                    IconData(0xe9dc, fontFamily: "vupyicons"),
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                  color: Color(0xffe7002a),
                                  height: 40,
                                  minWidth: 40,
                                  shape: CircleBorder(),
                                ),
                              ],
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      IconData(0xe9cb, fontFamily: 'vupyicons'),
                                      size: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Publicar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(8)),
                              color: Color(0xffe7002a),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0x01000001),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Observer(
                      builder: (_) => ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: homectrl.msgs.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Color(0x01000001),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x60000000),
                                  offset: new Offset(0, 0),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5)),
                                  child: homectrl.msgs[index][6] == ""
                                      ? Container()
                                      : Image.network(
                                          Urls().getUrl() +
                                              homectrl.msgs[index][6],
                                          loadingBuilder:
                                              (context, child, progress) {
                                            return progress == null
                                                ? child
                                                : CircularProgressIndicator();
                                          },
                                        ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: homectrl.msgs[index]
                                                            [3] ==
                                                        ""
                                                    ? Image.network(
                                                        imgDefault,
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.cover,
                                                      )
                                                    : Image.network(
                                                        Urls().getUrl() +
                                                            "/media" +
                                                            homectrl.msgs[index]
                                                                [3],
                                                        width: 50,
                                                        height: 50,
                                                        fit: BoxFit.cover,
                                                      ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(homectrl.msgs[index]
                                                        [2]),
                                                    Text(
                                                        homectrl.msgs[index][4])
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Icon(
                                            IconData(0xe9a3,
                                                fontFamily: 'vupyicons'),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        color: Color(0x01000001),
                                      ),
                                      homectrl.msgs[index][5] == ""
                                          ? Container()
                                          : Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: Text(
                                                homectrl.msgs[index][5],
                                                style: TextStyle(
                                                    fontSize: 17, height: 1.5),
                                              ),
                                            ),
                                      Divider(
                                        color: Color(0x19000000),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  IconData(0xe97c,
                                                      fontFamily: 'vupyicons'),
                                                  size: 22,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5,
                                                    right: 10,
                                                  ),
                                                  child: Text(
                                                    homectrl.msgs[index][8]
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                                Icon(
                                                  IconData(0xe998,
                                                      fontFamily: 'vupyicons'),
                                                  size: 22,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5,
                                                    right: 10,
                                                  ),
                                                  child: Text(
                                                    homectrl.msgs[index][9]
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    IconData(0xe9ce,
                                                        fontFamily:
                                                            'vupyicons'),
                                                    size: 22,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: 5,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      homectrl.msgs[index][10]
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0x01000001),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
