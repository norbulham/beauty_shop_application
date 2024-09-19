import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/main.dart';
import 'package:beauty_shop_application/pages/cart_page.dart';
import 'package:beauty_shop_application/pages/last_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _State();
}

class _State extends State<PaymentPage> {
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
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CartPage()));
                  },
                  child: Container(
                    height:40 ,
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff3c6e71),width: 3)
                    ),
                    child: Icon(Icons.arrow_back, color: Color(0xff3c6e71),),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 60,),
                    Text("Payment Method", style: myStyle(27,Color(0xff3c6e71) ),)
                  ],
                ),
              ],
            ),
            Image(image: AssetImage("assets/images/Frame 304.png")),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.92,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.6)
                  ),child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    Text("Name on Card", style: TextStyle(fontSize: 11, color: Colors.black54),),
                    Text("Norbu Lhamo", style: myStyle(15,Color(0xff3c6e71) ),),
                  ],
                ),
                )
              ],
            ),Gap(10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.92,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.6)
                  ),child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    Text("Card Number", style: TextStyle(fontSize: 11, color: Colors.black54),),
                    Text("97517274074", style: myStyle(15,Color(0xff3c6e71) ),),
                  ],
                ),
                )
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 55,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.6)
                        ),child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(8),
                          Text("Expiration Date", style: TextStyle(fontSize: 11, color: Colors.black54),),
                          Text("03/09/2002", style: myStyle(15,Color(0xff3c6e71) ),),
                        ],
                      ),
                    )
                  ],
                ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 55,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.6)
                        ),child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(8),
                          Text("CVC", style: TextStyle(fontSize: 11, color: Colors.black54),),
                          Text("143", style: myStyle(15,Color(0xff3c6e71) ),),
                        ],
                      ),
                      )
                    ],
                  ),
              ],
            ),
            Gap(11),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>LastPages()));
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff3c6e71,)
                  ),
                  child: Center(child: Text("Order ",style: myStyle(20, Colors.white),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
