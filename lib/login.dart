import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vupyapp/widgets/urls.dart';
import 'mobx/login_mob.dart';

final loginctrl = LoginControl();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextField(
              controller: loginctrl.userctrl,
              decoration: InputDecoration(
                labelText: "Usuário",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey[600]),
                ),
              ),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            TextField(
              controller: loginctrl.passwordctrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey[600]),
                ),
              ),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            MaterialButton(
              onPressed: () async {
                var prefs = await SharedPreferences.getInstance();
                var data = {
                  "user": loginctrl.userctrl.text,
                  "password": loginctrl.passwordctrl.text,
                };

                var r = await http.post(
                    Uri.encodeFull(Urls().getUrl() + "/webwork/login/"),
                    body: json.encode(data));

                if (r.body == "notExist") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Usuário ou/e senha incorretos"),
                      );
                    },
                  );
                  return;
                }

                var response = jsonDecode(r.body);

                prefs.setString("user", response['user']);
                prefs.setString("api", response['api']);

                Navigator.pushReplacementNamed(context, "/vupy");
              },
              child: Text(
                "Fazer login",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              color: Color(0xffe7002a),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minWidth: 150,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
