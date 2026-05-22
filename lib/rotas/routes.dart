import 'package:flutter/material.dart';
import 'package:flutter_app/my%20home%20page.dart';
import 'package:flutter_app/paginas/aula01.dart';
import 'package:flutter_app/paginas/aula02.dart';

final Map<String, WidgetBuilder> appRoutes = {
"/": (context) => const MyHomePage(title: 'Página Principal'),
"/aula01": (context) => const Aula01(),
"/aula02": (context) => const Aula02(),
};

