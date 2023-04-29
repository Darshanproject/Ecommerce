import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is image app"),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                // height: double.maxFinite,
                //width: double.maxFinite,
                height: 550,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/tom.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIVFLigZeacRXAetpPWwopaJqh3E3zEZNc_Q&usqp=CAU",
                        fit: BoxFit.none,
                      ),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        "assets/Images/tom.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
