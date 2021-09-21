import 'package:enviromements_flavors_flutter/environment.dart';
import 'package:enviromements_flavors_flutter/main_common.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await mainCommon(Environment.dev);
}
