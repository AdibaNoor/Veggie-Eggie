import 'package:flutter/material.dart';
import 'package:veggie_eggie/Constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Veggie-Eggie',style: TextStyle(color: textcolor,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
