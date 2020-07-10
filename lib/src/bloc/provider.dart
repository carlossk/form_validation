import 'package:flutter/material.dart';
import 'package:form_valid/src/bloc/login_bloc.dart';
export 'package:form_valid/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {
  final loginBloc = LoginBloc();

  static Provider _instancia;
  factory Provider({Key key, child}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(
        key: key,
        child: child,
      );
    }
    return _instancia;
  }
  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  static LoginBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }

  static LoginBloc of1(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }

  //Provider({Key key, this.child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}
