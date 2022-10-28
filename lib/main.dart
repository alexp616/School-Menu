import 'package:flutter/material.dart';
import 'package:school_food/menu_detail.dart';
import 'menu.dart';

void main() {
  runApp(const SchoolFoodApp());
}

class SchoolFoodApp extends StatelessWidget {
  const SchoolFoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'October 24-28 School Breakfast Menu',
      theme: theme.copyWith(colorScheme: theme.colorScheme.copyWith(primary: const Color(0xFF79A949), secondary: const Color(0xFF6191C2))),
      home: const MyHomePage(title: 'October 24-28 School Breakfast Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Menu.menus.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                    return MenuDetail(menu: Menu.menus[index]);
                    },
                  ),
                );
              },
              child: buildMenuCard(Menu.menus[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildMenuCard(Menu menu) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              "${menu.day}: ${menu.mainEntree.name}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
            SizedBox(width: 500, height: 360, child: Image(image: AssetImage(menu.mainEntree.imageUrl))),
            const SizedBox(
              height: 14.0,
            ),
          ],
        ),
      ),
    );
  }
}
