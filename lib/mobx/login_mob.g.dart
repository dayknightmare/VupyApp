// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginControl on _LoginControl, Store {
  final _$userctrlAtom = Atom(name: '_LoginControl.userctrl');

  @override
  TextEditingController get userctrl {
    _$userctrlAtom.context.enforceReadPolicy(_$userctrlAtom);
    _$userctrlAtom.reportObserved();
    return super.userctrl;
  }

  @override
  set userctrl(TextEditingController value) {
    _$userctrlAtom.context.conditionallyRunInAction(() {
      super.userctrl = value;
      _$userctrlAtom.reportChanged();
    }, _$userctrlAtom, name: '${_$userctrlAtom.name}_set');
  }

  final _$passwordctrlAtom = Atom(name: '_LoginControl.passwordctrl');

  @override
  TextEditingController get passwordctrl {
    _$passwordctrlAtom.context.enforceReadPolicy(_$passwordctrlAtom);
    _$passwordctrlAtom.reportObserved();
    return super.passwordctrl;
  }

  @override
  set passwordctrl(TextEditingController value) {
    _$passwordctrlAtom.context.conditionallyRunInAction(() {
      super.passwordctrl = value;
      _$passwordctrlAtom.reportChanged();
    }, _$passwordctrlAtom, name: '${_$passwordctrlAtom.name}_set');
  }
}
