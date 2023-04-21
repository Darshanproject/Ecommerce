import 'package:emart_app/WidgetsCommon/applogo_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import '../../WidgetsCommon/bg_widget.dart';
import '../../WidgetsCommon/custom_textfiel.dart';

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
          "login in to $appname".text.white.fontFamily(bold).size(24).make(),
          10.heightBox,
          Column(
            children: [
              cunstomTextField(hint: emailHint, title: email),
              cunstomTextField(hint: passwordHint, title: password),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpassword.text.make()))
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make()
        ],
      )),
    ));
  }
}
