import 'package:emart_app/WidgetsCommon/our_button.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: darkFontGrey,
            ),
          )
        ],
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // we will create swiper here
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      })
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourbuttom(
                color: redColor,
                onPress: () {},
                textcolor: whiteColor,
                title: "Add to Cart"),
          )
        ],
      ),
    );
  }
}
