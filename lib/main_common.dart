import 'package:enviromements_flavors_flutter/app_widget.dart';
import 'package:enviromements_flavors_flutter/config_reader.dart';
import 'package:enviromements_flavors_flutter/environment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  MaterialColor primaryColor = Colors.blue;

  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(Provider.value(
    value: primaryColor,
    child: const MyApp(),
  ));
}
