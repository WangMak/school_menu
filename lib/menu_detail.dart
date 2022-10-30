import 'package:flutter/material.dart';
import 'menu.dart';

class MenuDetail extends StatefulWidget {
  final Menu menu;

  const MenuDetail({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  _MenuDetailState createState() {
    return _MenuDetailState();
  }
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.menu.day),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.menu.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.menu.day,
              style: const TextStyle(fontSize: 18),
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.menu.foodItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = widget.menu.foodItems[index];
                  // 9
                  return Text('${item.name}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
