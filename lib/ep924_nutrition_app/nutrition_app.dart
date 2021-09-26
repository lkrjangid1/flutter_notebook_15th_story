import 'package:flutter/material.dart';

import 'ui/nutrition_home_page.dart';


class NutritionApp extends StatelessWidget {
  const NutritionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NutritionHomePage(),
    );
  }
}
