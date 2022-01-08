import 'package:flutter/material.dart';
import 'package:random_phrases/modules/home/presentation/home.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //Home
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );

      //oi
    }
  }
}
