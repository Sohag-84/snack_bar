import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack bar"),
        leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: RaisedButton(
          key: _scaffoldKey,
          child: const Text("Click Here"),
          onPressed: (){
            _showSnackBar();
          },
        ),
      ),
    );
  }

   _showSnackBar() {
    var _snackBar = const SnackBar(content:  Text("This is a snack bar message"),backgroundColor: Colors.teal);
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }
}
