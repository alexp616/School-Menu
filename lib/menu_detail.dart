import 'package:flutter/material.dart';
import 'menu.dart';

class MenuDetail extends StatefulWidget {
  final Menu menu;

  const MenuDetail({Key? key, required this.menu}) : super(key: key);

  @override
  _MenuDetailState createState() {
    return _MenuDetailState();
  }
}

class _MenuDetailState extends State<MenuDetail> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('${widget.menu.day}s menu')),
        body: SafeArea(
          child: ListView(
            children: [
              for (Entree e in widget.menu.entrees)
                Center(child: Container(width: 500, child: buildEntreeCard(e))),
            ],
          ),
        ));
  }

  Widget buildEntreeCard(Entree entree) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              "${entree.name}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
            SizedBox(width: 500, height: 360, child: Image(image: AssetImage(entree.imageUrl))),
            const SizedBox(
              height: 14.0,
            ),
          ],
        ),
      ),
    );
  }
}
