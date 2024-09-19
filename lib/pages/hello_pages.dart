import 'dart:math';

import 'package:beauty_shop_application/constant.dart';
import 'package:beauty_shop_application/data/hello_list.dart';
import 'package:beauty_shop_application/data/search_list.dart';
import 'package:beauty_shop_application/pages/aroma_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HelloPages extends StatefulWidget {
  const HelloPages({super.key});

  @override
  State<HelloPages> createState() => _HomePageState();
}

class _HomePageState extends State<HelloPages> {
  // Keep track of the selected index
  int selectedIndex = 0;
  int selectedIndex1 = 1;

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCECFBB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundImage:
                          AssetImage("assets/images/pro.jpg"),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Norbu", style: myStyle(23,Color(0xff3c6e71), FontWeight.bold),),
                            SizedBox(height: 2,),
                            Text("Welcome back", style: myStyle(15,Color(0xff3c6e71)),),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.notifications_none, size: 35, color: Color(0xff3c6e71),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                // Search bar
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: GoogleFonts.oleoScript(
                            fontSize: 18, color: secondaryColor),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search, color: secondaryColor,),
                          onPressed: () {
                            // Handle search button press
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Popular Products", style: myStyle(20, primaryColor, FontWeight.bold),),
                SizedBox(height: 28,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AromaPage()));
                  },
                  child: SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: allhellodata.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Stack(clipBehavior: Clip.none, children: [
                          Container(
                            width: 230,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffE9E3CB),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -40,
                                  left: 30,
                                  child: Image(image: AssetImage("${allhellodata[index].imgURL}"), width: 150, fit: BoxFit.contain,),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 80,
                                    width: 230,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: primaryColor),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("${allhellodata[index].text1}", style: myStyle(18, secondaryColor),
                                            ),
                                            Text("\$ ${allhellodata[index].price}", style: myStyle(18, secondaryColor),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("${allhellodata[index].text}", style: myStyle(14, secondaryColor),
                                            ),
                                            Icon(Icons.add_circle_outlined, color: secondaryColor,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: clickabledata.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        bool isSelected = index == selectedIndex;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color: isSelected
                                  ? Colors.teal.shade700 // Color when selected
                                  : Colors.white.withOpacity(0.6), // Color when not selected
                            ),
                            child: Center(
                                child: Text("${clickabledata[index].name}", style: myStyle(18,isSelected ? Colors.white : primaryColor, FontWeight.bold),
                                )
                            ),
                          ),
                        );
                      }),
                ),
                Gap(15),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: allMethods.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      bool isSelected1 = index == selectedIndex1;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isSelected1
                                ? Colors.teal.shade700 // Color when selected
                                : Colors.white.withOpacity(0.6), // Color when not selected
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Gap(5),
                                  Image(image: AssetImage("${allMethods[index].imgUrl}"), height: 80,), Gap(10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Gap(5),
                                      Text("${allMethods[index].text}", style: myStyle(17, isSelected1 ? Colors.white : primaryColor,),), Gap(5),
                                      Text("${allMethods[index].volume}", style: myStyle(15, isSelected1 ? Colors.white : primaryColor),)
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.add_circle_outlined, size: 30,
                                      color: isSelected1 ? Colors.white : primaryColor),
                                  Gap(5),
                                  Text("\$ ${allMethods[index].price}", style: myStyle(17,
                                    isSelected1 ? Colors.white : primaryColor,),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}