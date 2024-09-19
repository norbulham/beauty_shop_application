import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/pages/aroma_page.dart';
import 'package:beauty_shop_application/pages/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AromaPage()));
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
                    SizedBox(width: 100,),
                    Text("Cart Page", style: myStyle(27,Color(0xff3c6e71) ),)
                  ],
                )
              ],
            ),
            Gap(30),
            Row(
              children: [
                Card(
                  elevation: 6,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.white.withOpacity(0.2),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -13,
                              left: -12,
                              child: Row(
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: Image(image: AssetImage("assets/images/glow-removebg-preview.png"),fit: BoxFit.cover,)
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Gap(16),
                                        Text("Glow Recipt Cream", style: myStyle(17,Color(0xff3c6e71,), FontWeight.bold ),),
                                        Text("Sarah Lee",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                                          Gap(5),
                                        Row(
                                          children: [
                                            Icon(Icons.remove_circle, color: Colors.grey,),
                                            Container(
                                            ),
                                            Gap(5),
                                            Text("1", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
                                            Gap(5),
                                            Icon(Icons.add_circle,color: Color(0xff3c6e71,),)
                                          ],
                                        ),
                                      ],),
                                      Gap(60),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [ Gap(20),
                                          Icon(CupertinoIcons.xmark, color:Colors.black,size: 17,),
                                          Text("500 ml",style: TextStyle(fontSize:14, color: Colors.black54 ), ),
                                          Text("\$85",style: myStyle(20,Color(0xff3c6e71,), FontWeight.bold ),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
            Gap(380),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PaymentPage()));
              },
              child: Expanded(
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width*0.93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff3c6e71,)
                    ),
                    child: Center(child: Text("Go To CheckOut",style: myStyle(20, Colors.white),)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
