// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/home_page.dart';
import 'package:special_counter/contador.dart';
import 'package:special_counter/colores.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider<Contador>(
          create: (context) => Contador(),
        ),
        ChangeNotifierProvider<BgColor>(
          create: (context) => BgColor(),
        ),
      ],
      child: HomePage(),
    ));
  }
}
