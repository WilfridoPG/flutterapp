import 'package:flutter/material.dart';
import 'package:wigeflutter/src/pages/alert_page.dart';
import 'package:wigeflutter/src/pages/animate_container.dart';
import 'package:wigeflutter/src/pages/avatar_page.dart';
import 'package:wigeflutter/src/pages/card_page.dart';
import 'package:wigeflutter/src/pages/home_page.dart';
import 'package:wigeflutter/src/pages/input_page.dart';
import 'package:wigeflutter/src/pages/lisview_page.dart';
import 'package:wigeflutter/src/pages/pdf_page.dart';
import 'package:wigeflutter/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "pdf": (BuildContext context) => PdfPages(),
    "alert": (BuildContext context) => AlertPages(),
    "avatar": (BuildContext context) => AvatarPages(),
    "card": (BuildContext context) => CardPage(),
    "animatedContainer": (BuildContext context) => AnimatedContainerPage(),
    "inputs": (BuildContext context) => InputPage(),
    "slider": (BuildContext context) => SliderPage(),
    "list": (BuildContext context) => ListaPage()
  };
}
