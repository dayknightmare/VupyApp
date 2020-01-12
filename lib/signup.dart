import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 50),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: "Usuário",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey[600]))),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Nome",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey[600]))),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey[600]))),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey[600]))),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Confirme",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey[600]))),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            Divider(
              color: Color(0x01000001),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Fazer cadastro",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              color: Color(0xffe7002a),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              minWidth: 150,
              height: 50,
            )
          ],
        ),
      )
    );
  }
}
