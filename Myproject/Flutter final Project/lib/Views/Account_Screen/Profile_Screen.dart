import 'package:emart_app/WidgetsCommon/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(children: [
              Image.asset(
                imgProfile2,
                width: 100,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              Expanded(
                  child: Column(
                children: [
                  "Dummy user".text.fontFamily(semibold).white.make(),
                  "gadadarshan926@gmail.com"
                      .text
                      .fontFamily(semibold)
                      .white
                      .make(),
                ],
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
