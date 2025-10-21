import 'package:ebtech_task/shared/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppInit {
  static init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: "assets/.env");
    await DioHelper.init();
  }
}
