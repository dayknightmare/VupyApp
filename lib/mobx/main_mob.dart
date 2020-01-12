import 'package:mobx/mobx.dart';

part 'main_mob.g.dart';

class MainControl = _MainControl with _$MainControl;

abstract class _MainControl with Store{
  @observable
  int indexbottom = 0;

  @action
  void changeIndexBottom(int index){
    indexbottom = index;
  }
}