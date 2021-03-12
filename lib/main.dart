import 'package:flutter/material.dart';
import 'package:wigeflutter/src/pages/alert_page.dart';
import 'package:wigeflutter/src/routes/route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//import 'package:wigeflutter/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      localizationsDelegates: [
        // ... delegado[s] de localización específicos de la app aquí
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es'), // Español
        // Chino *Mira Localizaciones avanzadas más abajo*
        // ... otras regiones que la app soporte
      ],
      initialRoute: "/",
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("${settings.name}");
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPages());
      },
    );
    //home: HomePage());
  }
}
