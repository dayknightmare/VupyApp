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
}
