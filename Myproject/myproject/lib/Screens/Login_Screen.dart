import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class Login_Page extends StatefulWidget {
  //  const Login_Page({super.key});

  @override
  State<Login_Page> createState() {
    return _Login_PageState();
  }
}

class _Login_PageState extends State<Login_Page> {
  final GlobalKey<FlutterPwValidatorState> validatorkey =
      GlobalKey<FlutterPwValidatorState>();
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  void yourCallbackFunction() {
    print("This is Successfully done and you can go home now ");
  }

  void clear() {
    email.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.all(50),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ("Please Enter proper Email");
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Email",
                          labelText: "@Email",
                          prefixIcon: Icon(Icons.email_rounded)),
                      controller: email,
                    ),
                    FlutterPwValidator(
                        controller: password,
                        minLength: 6,
                        uppercaseCharCount: 2,
                        numericCharCount: 3,
                        specialCharCount: 1,
                        width: 400,
                        height: 150,
                        onSuccess: yourCallbackFunction,
                        onFail: yourCallbackFunction),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ("Please Enter Your Password");
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: "PassWord",
                          prefixIcon: Icon(Icons.remove_red_eye_outlined)),
                      obscureText: true,
                      controller: password,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Processing Data "),
                            ));
                          }
                        },
                        child: const Text("Submit "),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty('implements', implements));
//   }
// }
}
