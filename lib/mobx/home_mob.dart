import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_mob.g.dart';

class HomeControl = _HomeControl with _$HomeControl;

abstract class _HomeControl with Store {
  @observable
  List msgs = [];

  @observable
  int changer = 0;

  @observable
  TextEditingController msgctrl = TextEditingController();


  @action
  void addItem(List post) {
    if (post == []) {
      return;
    }

    msgs.addAll(post);
  }

  @action
  void append(List post) {
    msgs.insert(0, post);
  }
}
