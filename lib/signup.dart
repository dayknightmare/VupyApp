import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vupyapp/widgets/urls.dart';
import 'mobx/signup_mob.dart';
import 'package:http/http.dart' as http;

final signupctrl = SignupControl();

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 50),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (_) => signupctrl.checkform(),
              controller: signupctrl.userctrl,
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
              onChanged: (_) => signupctrl.checkform(),
              controller: signupctrl.namectrl,
              decoration: InputDecoration(
                labelText: "Nome",
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
              onChanged: (_) => signupctrl.checkform(),
              controller: signupctrl.emailctrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
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
              onChanged: (_) => signupctrl.checkform(),
              controller: signupctrl.password1ctrl,
              keyboardType: TextInputType.emailAddress,
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
            TextField(
              onChanged: (_) => signupctrl.checkform(),
              controller: signupctrl.password2ctrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirme",
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
            Observer(
              builder: (_) => MaterialButton(
                disabledColor: Colors.grey[600],
                onPressed: signupctrl.form
                    ? () async {
                        var data = {
                          "username": signupctrl.userctrl.text,
                          "password1": signupctrl.password1ctrl.text,
                          "password2": signupctrl.password2ctrl.text,
                          "email": signupctrl.emailctrl.text,
                          "name": signupctrl.namectrl.text,
                        };

                        signupctrl.resetform();

                        var r = await http.post(
                            Uri.encodeFull(
                                Urls().getUrl() + "/webwork/signup/"),
                            body: json.encode(data));

                        if (r.body == "exists") {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Usuário ou/e email já existem"),
                              );
                            },
                          );
                          return;
                        }

                        if (r.body == "error") {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Formulario invalido"),
                              );
                            },
                          );
                          return;
                        }

                        if (r.body == "ok") {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text(
                                    "Um email foi enviado para o email: ${data['email']}. \n Entre nele e faça a validação da sua conta."),
                              );
                            },
                          );
                          return;
                        }

                        // var response = jsonDecode(r.body);

                        print(r.body);
                      }
                    : null,
                child: Text(
                  "Fazer cadastro",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                color: Color(0xffe7002a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minWidth: 150,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
