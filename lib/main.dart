import 'package:flutter/material.dart';
import 'menu.dart';
import 'menu_detail.dart';

void main() {
  runApp(const SchoolMenu());
}

class SchoolMenu extends StatelessWidget {
  const SchoolMenu({super.key});

  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4
      title: 'School Menu',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 255, 123, 0),
          secondary: Color.fromARGB(255, 228, 222, 145),
        ),
      ),
      // 6
      home: const MyHomePage(title: 'School Menu'),
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
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Menu.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return MenuDetail(menu: Menu.samples[index]);
                      return Text('Detail page');
                    },
                  ),
                );
              },
              // 11
              child: buildMenuCard(Menu.samples[index]),
            );
            return buildMenuCard(Menu.samples[index]);
            return Text(Menu.samples[index].day);
          },
        ),
      ),
    );
  }

  Widget buildMenuCard(Menu menu) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(menu.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              menu.day,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
