import 'package:flutter/material.dart';
import 'package:veggie_eggie/Constants.dart';

import '../models/Product.dart';
import 'ProductCard.dart';
import 'header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Veggie-Eggie',style: TextStyle(color: textcolor,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
               HomeHeader(),
              Expanded(
                child: Container(
                  padding:
                   const EdgeInsets.symmetric(horizontal: defaultPadding),
                   decoration: BoxDecoration(
                     color: bgcolor,
                     borderRadius: const BorderRadius.only(
                       bottomLeft: Radius.circular(defaultPadding * 1.5),
                       bottomRight: Radius.circular(defaultPadding * 1.5),
                     ),),
                    child: GridView.builder(
                      itemCount: demo_product.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       childAspectRatio: 0.75,
                       mainAxisSpacing: defaultPadding,
                       crossAxisSpacing: defaultPadding,
                     ),
                     itemBuilder: (context, index) => ProductCard(
                       product: demo_product[index],
                       press: () {},
                     ),
                   ),
                 ),
               ),
             Container(
                height: cartBarHeight,
               child: GestureDetector(
                 onVerticalDragUpdate: (details){
                   print(details.primaryDelta);
                 },
                 child: Container(

                 ),
               ),
               ),
            ],
          ),
        )
      )
    );
  }
}

