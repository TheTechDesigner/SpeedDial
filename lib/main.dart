import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Speed Dial';

  bool _visible = true;

  void setDialVisible(bool value) {
    setState(() {
      _visible = value;
    });
  }

  SpeedDial _speedDial() {
    return SpeedDial(
      // child: Icon(Icons.add),
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 24.0),
      onOpen: () => print('Dial Open'),
      onClose: () => print('Dial Closed'),
      curve: Curves.easeInBack,
      visible: _visible,
      children: [
        SpeedDialChild(
          onTap: () => print('Home'),
          backgroundColor: Color(0xFFC41A3B),
          child: Icon(Icons.home),
          label: 'Home',
          labelBackgroundColor: Color(0xFFC41A3B),
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        SpeedDialChild(
          onTap: () => print('Category'),
          backgroundColor: Colors.green,
          child: Icon(Icons.category),
          label: 'Category',
          labelBackgroundColor: Colors.green,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        SpeedDialChild(
          onTap: () => print('Search'),
          backgroundColor: Colors.orange,
          child: Icon(Icons.category),
          label: 'Search',
          labelBackgroundColor: Colors.orange,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        SpeedDialChild(
          onTap: () => print('Cart'),
          backgroundColor: Color(0xFF1B1F32),
          child: Icon(Icons.shopping_cart),
          label: 'Cart',
          labelBackgroundColor: Color(0xFF1B1F32),
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        SpeedDialChild(
          onTap: () => print('Profile'),
          backgroundColor: Color(0xFFFBE0E6),
          child: Icon(
            Icons.person,
            color: Color(0xFF1B1F32),
          ),
          label: 'Profile',
          labelBackgroundColor: Color(0xFFFBE0E6),
          labelStyle: TextStyle(
            color: Color(0xFF1B1F32),
          ),
          // you can use also Label Widget For Customize
          // labelWidget: Container(
          //   color: Color(0xFFFBE0E6),
          //   padding: EdgeInsets.all(8.0),
          //   margin: EdgeInsets.only(right: 24.0),
          //   child: Text('Profile'),
          // ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Speed Dial Page',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: _speedDial(),
    );
  }
}
