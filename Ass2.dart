import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return const LandScape();
          } else {
            return const Portrait();
          }
        },
      ),
    );
  }
}

class Portrait extends StatelessWidget {
  const Portrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ass2'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ListTile(
              title: Text('FIRST ELEMENT',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text('SECOND ELEMENT',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text('THIRD ELEMENT',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text('FOURTH ELEMENT',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}

class LandScape extends StatelessWidget {
  const LandScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ass2'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.white,
            width: width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ListTile(
                  title: Text('FIRST ELEMENT',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  tileColor: Colors.black,
                ),
                ListTile(
                  title: Text('SECOND ELEMENT',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  tileColor: Colors.black,
                ),
                ListTile(
                  title: Text('THIRD ELEMENT',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  tileColor: Colors.black,
                ),
                ListTile(
                  title: Text('FOURTH ELEMENT',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  tileColor: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: width / 2,
          ),
        ],
      ),
    );
  }
}
