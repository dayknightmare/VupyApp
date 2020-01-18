import 'package:mobx/mobx.dart';

part 'home_mob.g.dart';

class HomeControl = _HomeControl with _$HomeControl;

abstract class _HomeControl with Store {
  @observable
  List msgs = [];

  @observable
  int changer = 0;

  @action
  void addItem(List post) {
    if (post == []) {
      return;
    }
    msgs.addAll(post);
  }
}
