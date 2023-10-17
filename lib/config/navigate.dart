import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RpNavigate {
  RpNavigate._();

  static void to(
    BuildContext context,
    String route, [
    String queryParameters = '',
  ]) {
    context.push('$route$queryParameters');
  }

  static void close(BuildContext context, [dynamic result]) {
    context.pop(result);
  }
}
