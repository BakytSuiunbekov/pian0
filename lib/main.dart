import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pianino/app/app.dart';

void main() {
  WidgetsFlutterBinding();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
