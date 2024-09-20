import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/pages/cart_page.dart';
import 'package:beauty_shop_application/pages/hello_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class AromaPage extends StatefulWidget {
  const AromaPage({super.key});

  @override
  State<AromaPage> createState() => _AromaPageState();
}

class _AromaPageState extends State<AromaPage> {
  bool _isFavorite = false;
  bool _isClicked = false;
  bool _ischanged = false;
  bool _isthird = false;
  bool _isforth = false;

  void _toggleColor() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }
  void _mycolor() {
    setState(() {
      _ischanged = !_ischanged;
    });
  }
  void _mythirdcolor() {
    setState(() {
      _isthird = !_isthird;
    });
  }void _myforthcolor() {
    setState(() {
      _isforth = !_isforth;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: 790,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffdee2e6), Color(0xff3c6e71)])
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:40 ,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff3c6e71),width: 3)
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HelloPages()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: Color(0xff3c6e71),),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Color(0xff3c6e71) : Colors.redAccent,size: 35,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite; // Toggle the favorite state
                    });
                  },
                )
              ],
            ),
            Gap(50),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Glow Recipt ", style: myStyle(25,Color(0xff3c6e71), FontWeight.bold ),),
                      Gap(8),
                      Text("Sarah Lee", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23)),
                      Gap(8),
                      Text("$myparagragh", style: TextStyle(color: Color(0xff3c6e71), fontWeight: FontWeight.bold)),
                      Gap(8),
                      Text("\$85", style: TextStyle(color: Color(0xff3c6e71), fontWeight: FontWeight.bold, fontSize: 20)),                      Gap(10),
                      Row(
                        children: [
                          Icon(CupertinoIcons.minus_circle_fill, size: 30, color: secondaryColor,),
                          Gap(5),
                          Text("1", style: myStyle(24, primaryColor, FontWeight.bold),
                          ),
                          Gap(5),
                          Icon(
                            CupertinoIcons.plus_circle_fill, size: 30, color: primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/glow-removebg-preview.png"), fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: _toggleColor ,
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _isClicked ? Colors.white : Color(0xff3c6e71),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("100 ml", style: TextStyle( color: _isClicked ? Colors.black54 : Colors.white, fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ),
                ),InkWell(
                  onTap: _mycolor ,
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _ischanged ? Colors.white : Color(0xff3c6e71),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("250 ml",style: TextStyle( color: _ischanged ? Colors.black54 : Colors.white, fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),InkWell(
                  onTap: _mythirdcolor ,
                  child: Card(
                    elevation: 6,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _isthird ? Colors.white : Color(0xff3c6e71),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("500 ml",style: TextStyle( color: _isthird ? Colors.black54 : Colors.white, fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),InkWell(
                  onTap: _myforthcolor ,
                  child: Card(
                    elevation: 6,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _isforth ? Colors.white : Color(0xff3c6e71),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("1000 ml",style: TextStyle( color: _isforth ? Colors.black54 : Colors.white, fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),
              ],
            ),
            Gap(20),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CartPage()));
              },
              child: Card(
                elevation: 6,
                color: Color(0xffCECFBB),
                child: Container(
                  padding: EdgeInsets.only(right: 10),
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffCECFBB),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.shopping_cart_outlined,color: secondaryColor,size: 50,),
                      ),
                      Gap(20),
                      Text("Swipe for Hassle Free Shopping",style: myStyle(16,primaryColor,FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
