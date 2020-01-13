import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';
part 'signup_mob.g.dart';

class SignupControl = _SignupControl with _$SignupControl;

abstract class _SignupControl with Store {
  @observable
  TextEditingController userctrl = TextEditingController();

  @observable
  TextEditingController password1ctrl = TextEditingController();

  @observable
  TextEditingController password2ctrl = TextEditingController();

  @observable
  TextEditingController namectrl = TextEditingController();

  @observable
  TextEditingController emailctrl = TextEditingController();

  @observable
  bool form = false;

  @action
  void resetform() {
    emailctrl.text = "";
    userctrl.text = "";
    password1ctrl.text = "";
    password2ctrl.text = "";
    namectrl.text = "";

    form = false;
  }

  @action
  void checkform() {
    var regex = RegExp(
      r'^[\w.@+-]+$',
      caseSensitive: false,
      multiLine: false,
    );

    if (!regex.hasMatch(userctrl.text)) {
      form = false;
      return;
    }

    if (!EmailValidator.validate(emailctrl.text)) {
      form = false;
      return;
    }

    if (password2ctrl.text != password2ctrl.text) {
      form = false;
      return;
    }

    if (emailctrl.text.length < 5 ||
        userctrl.text.length < 3 ||
        namectrl.text.length < 3 ||
        password2ctrl.text.length < 8) {
      form = false;
      return;
    }

    form = true;
  }
}
