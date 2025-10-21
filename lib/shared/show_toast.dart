import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import 'constants.dart';

showToast({
  required context,
  required String text,
  required ToastificationType type,
  int duration = 3,
}) {
  toastification.show(
    style: ToastificationStyle.flatColored,
    context: context,
    type: type,
    title: Text(text),
    autoCloseDuration: const Duration(seconds: 5),
  );
}
