// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupControl on _SignupControl, Store {
  final _$userctrlAtom = Atom(name: '_SignupControl.userctrl');

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

  final _$password1ctrlAtom = Atom(name: '_SignupControl.password1ctrl');

  @override
  TextEditingController get password1ctrl {
    _$password1ctrlAtom.context.enforceReadPolicy(_$password1ctrlAtom);
    _$password1ctrlAtom.reportObserved();
    return super.password1ctrl;
  }

  @override
  set password1ctrl(TextEditingController value) {
    _$password1ctrlAtom.context.conditionallyRunInAction(() {
      super.password1ctrl = value;
      _$password1ctrlAtom.reportChanged();
    }, _$password1ctrlAtom, name: '${_$password1ctrlAtom.name}_set');
  }

  final _$password2ctrlAtom = Atom(name: '_SignupControl.password2ctrl');

  @override
  TextEditingController get password2ctrl {
    _$password2ctrlAtom.context.enforceReadPolicy(_$password2ctrlAtom);
    _$password2ctrlAtom.reportObserved();
    return super.password2ctrl;
  }

  @override
  set password2ctrl(TextEditingController value) {
    _$password2ctrlAtom.context.conditionallyRunInAction(() {
      super.password2ctrl = value;
      _$password2ctrlAtom.reportChanged();
    }, _$password2ctrlAtom, name: '${_$password2ctrlAtom.name}_set');
  }

  final _$namectrlAtom = Atom(name: '_SignupControl.namectrl');

  @override
  TextEditingController get namectrl {
    _$namectrlAtom.context.enforceReadPolicy(_$namectrlAtom);
    _$namectrlAtom.reportObserved();
    return super.namectrl;
  }

  @override
  set namectrl(TextEditingController value) {
    _$namectrlAtom.context.conditionallyRunInAction(() {
      super.namectrl = value;
      _$namectrlAtom.reportChanged();
    }, _$namectrlAtom, name: '${_$namectrlAtom.name}_set');
  }

  final _$emailctrlAtom = Atom(name: '_SignupControl.emailctrl');

  @override
  TextEditingController get emailctrl {
    _$emailctrlAtom.context.enforceReadPolicy(_$emailctrlAtom);
    _$emailctrlAtom.reportObserved();
    return super.emailctrl;
  }

  @override
  set emailctrl(TextEditingController value) {
    _$emailctrlAtom.context.conditionallyRunInAction(() {
      super.emailctrl = value;
      _$emailctrlAtom.reportChanged();
    }, _$emailctrlAtom, name: '${_$emailctrlAtom.name}_set');
  }

  final _$formAtom = Atom(name: '_SignupControl.form');

  @override
  bool get form {
    _$formAtom.context.enforceReadPolicy(_$formAtom);
    _$formAtom.reportObserved();
    return super.form;
  }

  @override
  set form(bool value) {
    _$formAtom.context.conditionallyRunInAction(() {
      super.form = value;
      _$formAtom.reportChanged();
    }, _$formAtom, name: '${_$formAtom.name}_set');
  }

  final _$_SignupControlActionController =
      ActionController(name: '_SignupControl');

  @override
  void resetform() {
    final _$actionInfo = _$_SignupControlActionController.startAction();
    try {
      return super.resetform();
    } finally {
      _$_SignupControlActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkform() {
    final _$actionInfo = _$_SignupControlActionController.startAction();
    try {
      return super.checkform();
    } finally {
      _$_SignupControlActionController.endAction(_$actionInfo);
    }
  }
}
