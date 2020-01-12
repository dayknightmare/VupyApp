import 'package:mobx/mobx.dart';

part 'main_mob.g.dart';

class MainControl = _MainControl with _$MainControl;

abstract class _MainControl with Store{
  @observable
  int indexbottom = 0;

  @observable
  double height;

  @observable
  double width;

  @action
  void changeIndexBottom(int index){
    indexbottom = index;
  }

  @action
  void setSize(double w , double h){
    width = w;
    height = h;
  }
}