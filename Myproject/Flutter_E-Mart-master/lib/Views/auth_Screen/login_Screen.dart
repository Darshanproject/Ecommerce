import 'package:emart_app/WidgetsCommon/applogo_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import '../../WidgetsCommon/bg_widget.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "login in to".text.white.fontFamily(bold).size(24).make()
        ],
      )),
    ));
  }
}
