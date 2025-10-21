import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

abstract class AppInit {
  static init() {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
