import 'package:beauty_shop_application/pages/cart_page.dart';
import 'package:beauty_shop_application/pages/hello_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class FavoriteCategory extends StatefulWidget {
  const FavoriteCategory({super.key});

  @override
  State<FavoriteCategory> createState() => _FavoriteCategoryState();
}

class _FavoriteCategoryState extends State<FavoriteCategory> {

  bool _isfirst = false;


  void _myfirtcolor() {
    setState(() {
      _isfirst = !_isfirst;
    });
  }
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
                colors: [Color(0xffdee2e6), Color(0xffe0e1dd)])
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 60),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HelloPages()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height:50 ,
                    width: 50,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff3c6e71),width: 3)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_forward, color: Color(0xff3c6e71),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Choose Your Favourite", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Color(0xff3c6e71)),),
                Text("Cosmetic ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Color(0xff3c6e71))),
                Text("You can choose more than one", style: TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.bold),)
              ],
            ),
            Gap(20),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank_sharp, size: 28, color: Colors.grey,),
                SizedBox(width: 5,),
                Text("Select All",style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),)

              ],
            ),
            Gap(20),
            Row(
              children: [
                SizedBox(width: 20,),
              Container(
                height: 50,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/shampoo.png")),
                    ),
                    Text("Shampoo", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
                SizedBox(width: 20,),
                Container(
                height: 50,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/maskara.png")),
                    ),
                    Text("Maskara", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              )],
            ),

            Gap(20),
            Row(
              children: [
                SizedBox(width: 45,),
              InkWell(
                onTap: _myfirtcolor,
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      color: _isfirst ? Colors.white : Color(0xff3c6e71),
                    borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0xff3c6e71,),width: 3)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                          width: 35,
                          child: Image(image: AssetImage("assets/images/perfume.png")),
                      ),
                      Text("Perfume", style: TextStyle( color: _isfirst ? Colors.black54 : Colors.white, fontWeight: FontWeight.bold ),
                      )
                    ],
                  ),
                ),
              ),
                SizedBox(width: 35,),
                Container(
                height: 50,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/lotion.png")),
                    ),
                    Text("Lotion", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              )],
            ),
            Gap(20),
            Row(
              children: [
                SizedBox(width: 30,),
              Container(
                height: 50,
                width: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/lip.png")),
                    ),
                    Text("Lip Care", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
                SizedBox(width: 25,),
                Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/liner.png")),
                    ),
                    Text("Eye liner", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              )],
            ),Gap(20),
            Row(
              children: [
                SizedBox(width: 30,),
              Container(
                height: 50,
                width: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/shadow.png")),
                    ),
                    Text("Eyeshadow", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
                SizedBox(width: 25,),
                Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xff3c6e71,),width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                        width: 35,
                        child: Image(image: AssetImage("assets/images/serum.png")),
                    ),
                    Text("Serum", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold ),)
                  ],
                ),
              )],
            ),

          ],
        ),
      )
    );
  }
}
