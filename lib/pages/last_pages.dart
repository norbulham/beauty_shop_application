import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class LastPages extends StatelessWidget {
  const LastPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: 790,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffdee2e6), Color(0xffdee2e6)])
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PaymentPage()));
              },
              child: Row(
                children: [
                  Container(
                    height:40 ,
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff3c6e71),width: 3)
                    ),
                    child: Icon(Icons.arrow_back, color: Color(0xff3c6e71),),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text("Congratulations",style: myStyle(27,Color(0xff3c6e71) ),),
                Text("Your order has been registered",style: myStyle(20,Color(0xff3c6e71) ),),
              ],
            ),
            Gap(20),
            Container(
              height: 350,
                child: Image(image: AssetImage("assets/images/last2-removebg-preview.png"), fit: BoxFit.cover,)),
            Gap(10),
            Card(
              elevation: 6,
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3c6e71)
                ),child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(8),
                  Center(child: Text("Order Tracking", style: myStyle(20,Colors.white),)),
                ],
              ),),
            ),Gap(10),
            Card(
              elevation: 6,
              child: Container(
                padding: EdgeInsets.only(left: 15),
                height: 55,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.6),
                  border: Border.all(color: Color(0xff3c6e71),width: 4)
                ),child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(8),
                  Text("Keep Shopping", style: myStyle(20,Color(0xff3c6e71)),),
                ],
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
