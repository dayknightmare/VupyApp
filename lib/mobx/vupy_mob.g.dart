// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vupy_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VupyControl on _VupyControl, Store {
  final _$bottomIndexAtom = Atom(name: '_VupyControl.bottomIndex');

  @override
  int get bottomIndex {
    _$bottomIndexAtom.context.enforceReadPolicy(_$bottomIndexAtom);
    _$bottomIndexAtom.reportObserved();
    return super.bottomIndex;
  }

  @override
  set bottomIndex(int value) {
    _$bottomIndexAtom.context.conditionallyRunInAction(() {
      super.bottomIndex = value;
      _$bottomIndexAtom.reportChanged();
    }, _$bottomIndexAtom, name: '${_$bottomIndexAtom.name}_set');
  }

  final _$animationStopAtom = Atom(name: '_VupyControl.animationStop');

  @override
  bool get animationStop {
    _$animationStopAtom.context.enforceReadPolicy(_$animationStopAtom);
    _$animationStopAtom.reportObserved();
    return super.animationStop;
  }

  @override
  set animationStop(bool value) {
    _$animationStopAtom.context.conditionallyRunInAction(() {
      super.animationStop = value;
      _$animationStopAtom.reportChanged();
    }, _$animationStopAtom, name: '${_$animationStopAtom.name}_set');
  }

  final _$_VupyControlActionController = ActionController(name: '_VupyControl');

  @override
  void changeIndex(int index) {
    final _$actionInfo = _$_VupyControlActionController.startAction();
    try {
      return super.changeIndex(index);
    } finally {
      _$_VupyControlActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAnimation() {
    final _$actionInfo = _$_VupyControlActionController.startAction();
    try {
      return super.changeAnimation();
    } finally {
      _$_VupyControlActionController.endAction(_$actionInfo);
    }
  }
}
