import 'package:flutter/material.dart';

extension NavigatorContext on BuildContext {
  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop(result);
  }

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil<T>(
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  Future<T?>? pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushReplacementNamed<T?, TO>(
      routeName,
      arguments: arguments,
    );
  }
}
