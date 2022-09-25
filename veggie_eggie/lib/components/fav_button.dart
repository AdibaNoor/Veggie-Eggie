import 'package:flutter/material.dart';
import 'package:veggie_eggie/Constants.dart';


class FavBtn extends StatelessWidget {
  const FavBtn({
    Key? key,
    this.radius = 14,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: buttoncolor,
      child: Icon(Icons.favorite_border,color: Colors.black87,size: 20,),
    );
  }
}