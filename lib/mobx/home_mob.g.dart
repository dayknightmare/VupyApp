// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeControl on _HomeControl, Store {
  final _$msgsAtom = Atom(name: '_HomeControl.msgs');

  @override
  List get msgs {
    _$msgsAtom.context.enforceReadPolicy(_$msgsAtom);
    _$msgsAtom.reportObserved();
    return super.msgs;
  }

  @override
  set msgs(List value) {
    _$msgsAtom.context.conditionallyRunInAction(() {
      super.msgs = value;
      _$msgsAtom.reportChanged();
    }, _$msgsAtom, name: '${_$msgsAtom.name}_set');
  }

  final _$changerAtom = Atom(name: '_HomeControl.changer');

  @override
  int get changer {
    _$changerAtom.context.enforceReadPolicy(_$changerAtom);
    _$changerAtom.reportObserved();
    return super.changer;
  }

  @override
  set changer(int value) {
    _$changerAtom.context.conditionallyRunInAction(() {
      super.changer = value;
      _$changerAtom.reportChanged();
    }, _$changerAtom, name: '${_$changerAtom.name}_set');
  }

  final _$msgctrlAtom = Atom(name: '_HomeControl.msgctrl');

  @override
  TextEditingController get msgctrl {
    _$msgctrlAtom.context.enforceReadPolicy(_$msgctrlAtom);
    _$msgctrlAtom.reportObserved();
    return super.msgctrl;
  }

  @override
  set msgctrl(TextEditingController value) {
    _$msgctrlAtom.context.conditionallyRunInAction(() {
      super.msgctrl = value;
      _$msgctrlAtom.reportChanged();
    }, _$msgctrlAtom, name: '${_$msgctrlAtom.name}_set');
  }

  final _$_HomeControlActionController = ActionController(name: '_HomeControl');

  @override
  void addItem(List post) {
    final _$actionInfo = _$_HomeControlActionController.startAction();
    try {
      return super.addItem(post);
    } finally {
      _$_HomeControlActionController.endAction(_$actionInfo);
    }
  }

  @override
  void append(List post) {
    final _$actionInfo = _$_HomeControlActionController.startAction();
    try {
      return super.append(post);
    } finally {
      _$_HomeControlActionController.endAction(_$actionInfo);
    }
  }
}
