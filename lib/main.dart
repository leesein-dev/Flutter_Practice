import 'package:flutter/material.dart';
import 'package:flutter_practice/recipe/recipe_main.dart';
import 'package:flutter_practice/store/store_main.dart';

void main() {
  runApp(
    MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/store': (context) => const StorePage(),
        '/recipe': (context) => const RecipePage(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/store');
                },
                child: const Text(
                  "스토어",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 48),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/recipe');
                },
                child: const Text(
                  "레시피",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
