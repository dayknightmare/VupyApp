import 'package:mobx/mobx.dart';
part 'vupy_mob.g.dart';

class VupyControl = _VupyControl with _$VupyControl;

abstract class _VupyControl with Store {
  @observable
  int bottomIndex = 0;

  @observable
  bool animationStop = false;

  @action
  void changeIndex(int index) {
    bottomIndex = index;
  }

  @action
  void changeAnimation() {
    animationStop = !animationStop;
  }
}
