import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                  fillColor: whiteColor,
                  filled: true,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          //we will put swiper here
          VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 200,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    slidersList[index],
                    fit: BoxFit.fitWidth,
                  ),
                );
              })
        ],
      )),
    );
  }
}
