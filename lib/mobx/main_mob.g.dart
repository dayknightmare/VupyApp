// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainControl on _MainControl, Store {
  final _$indexbottomAtom = Atom(name: '_MainControl.indexbottom');

  @override
  int get indexbottom {
    _$indexbottomAtom.context.enforceReadPolicy(_$indexbottomAtom);
    _$indexbottomAtom.reportObserved();
    return super.indexbottom;
  }

  @override
  set indexbottom(int value) {
    _$indexbottomAtom.context.conditionallyRunInAction(() {
      super.indexbottom = value;
      _$indexbottomAtom.reportChanged();
    }, _$indexbottomAtom, name: '${_$indexbottomAtom.name}_set');
  }

  final _$heightAtom = Atom(name: '_MainControl.height');

  @override
  double get height {
    _$heightAtom.context.enforceReadPolicy(_$heightAtom);
    _$heightAtom.reportObserved();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.context.conditionallyRunInAction(() {
      super.height = value;
      _$heightAtom.reportChanged();
    }, _$heightAtom, name: '${_$heightAtom.name}_set');
  }

  final _$widthAtom = Atom(name: '_MainControl.width');

  @override
  double get width {
    _$widthAtom.context.enforceReadPolicy(_$widthAtom);
    _$widthAtom.reportObserved();
    return super.width;
  }

  @override
  set width(double value) {
    _$widthAtom.context.conditionallyRunInAction(() {
      super.width = value;
      _$widthAtom.reportChanged();
    }, _$widthAtom, name: '${_$widthAtom.name}_set');
  }

  final _$_MainControlActionController = ActionController(name: '_MainControl');

  @override
  void changeIndexBottom(int index) {
    final _$actionInfo = _$_MainControlActionController.startAction();
    try {
      return super.changeIndexBottom(index);
    } finally {
      _$_MainControlActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSize(double w, double h) {
    final _$actionInfo = _$_MainControlActionController.startAction();
    try {
      return super.setSize(w, h);
    } finally {
      _$_MainControlActionController.endAction(_$actionInfo);
    }
  }
}
