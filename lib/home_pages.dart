import 'dart:math';

import 'package:beauty_shop_application/button.nav.dart';
import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/pages/favorite_category.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 790,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffedede9), Color(0xff344e41)])
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/cover1.png"),fit: BoxFit.cover)
                    ),
          
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/cos.png"), fit: BoxFit.cover)
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Step out of the history that ", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("is holding you back. Step into the", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("new story you are willing to create.", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              Gap(20),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PracticeBottomNavBar()));
                },
                child: Card(
                  shadowColor: Colors.white,
                    elevation: 6,
                    child: SizedBox(
                      child: Container(
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff344e41),
                          border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Let's Shop",style: myStyle(23, Colors.white)),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward, color: Colors.white.withOpacity(0.6),)
                        ],),
                      ),
                    )
          
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
