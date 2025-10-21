import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Constants {
  static final baseUrl = dotenv.env['BASE_URL']!;
  static final borderColor = Colors.grey.shade400;
  static const primaryColor = Colors.deepOrange;
  static const successColor = Colors.green;
}
