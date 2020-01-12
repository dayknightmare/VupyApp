import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_mob.g.dart';

class LoginControl = _LoginControl with _$LoginControl;

abstract class _LoginControl with Store{
  @observable
  TextEditingController userctrl = TextEditingController();

  @observable
  TextEditingController passwordctrl = TextEditingController();
}