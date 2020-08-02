import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/category_meal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            headline3: TextStyle(
              color: Color.fromRGBO(35, 51, 51, 1),
            ),
            headline4: TextStyle(
              color: Color.fromRGBO(35, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      home: CategoriesScreen(),
      routes: {
        '/category_meal_screen': (ctx) => CategoryMealScreen(),
      },
    );
  }
}