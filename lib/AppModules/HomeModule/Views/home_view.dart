import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../qr_scanner_view.dart';
import '../../ProfileModule/Components/job_list_item.dart';
import '../ViewModels/home_view_model.dart';
import 'Components/Account_List_Item.dart';

class LightView extends StatefulWidget {
  LightView({super.key});

  @override
  State<LightView> createState() => _LightViewState();
}

class _LightViewState extends State<LightView> {
  HomeViewModel homeViewModel = Get.put(HomeViewModel());
  List<Map<String, dynamic>> jobsList = [
    {
      "title": "My Jobs",
      "subtitle": "10 jobs",
      "icon": "assets/Images/ist.svg",
    },
    {
      "title": "Pending Jobs",
      "subtitle": "5 jobs",
      "icon": "assets/Images/2nk.svg",
    },
    {
      "title": "Find a JOb",
      "subtitle": "",
      "icon": "assets/Images/3rk.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade50,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [

            Row(
              children: [
             IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return QrScanner();
               }
               ));
             }, icon: Icon(Icons.document_scanner_outlined)),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/Images/bell.svg'),
                ),

              ],
            ),

          ],
        ),
        drawer: Drawer(


          child: Column(
            children: [
              Container(height: 200, width: 304,
                decoration: BoxDecoration(color: HexColor("22BCFF")),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello, Hudson", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 2, color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Property owner",style: TextStyle(fontSize: 18, color: Colors.white),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/Images/star_icon.svg"),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text("5.0",style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: SvgPicture.asset("assets/Images/Ellipse_403.svg",),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text("(53 reviews)",style: TextStyle(color: Colors.white),),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ),
              Column(
                children: [
                  Container(
                  height: 430,
                    child: Column(
                      children: [
                        AccountListIltem (title: 'Profile', icon: Icons.person,),
                        AccountListIltem (title: 'Support', icon: Icons.person,),
                        AccountListIltem (title: 'Legal & Privacy', icon: Icons.person,),
                        AccountListIltem (title: 'App Settings', icon: Icons.person,),
                      ],
                    ),



                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(children: [
                Container(
                  height: 290,
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(color: HexColor("E8F8FF")),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 2),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/Images/profile.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1.0, vertical: 15.0),
                            child: Container(
                              height: 60,
                              width: 185,
                              color: HexColor("E8F8FF"),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Home, James",
                                          style: TextStyle(
                                              fontSize:27,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/Images/location.svg"),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3.0),
                                          child: Text(
                                            "Cambridge, United Kingdom",
                                            style: TextStyle(fontSize: 12),
                                          ),
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
                    ),
                    SvgPicture.asset('assets/Images/icon1.svg'),
                    Positioned(
                        top: 80,
                        left: 90,
                        //
                        child: SvgPicture.asset('assets/Images/icon2.svg')),
                  ],
                ),
                Positioned(
                    top: 160,
                    right: 20,
                    left: 20,
                    child: Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GridView.builder(
                          itemCount: jobsList.length,
                          physics: NeverScrollableScrollPhysics(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.0,
                          ),
                          itemBuilder: (BuildContext, value) {
                            return Obx(() => GestureDetector(
                                  onTap: () {
                                    homeViewModel.selectedIndex.value = value;
                                  },
                                  child: Widget1(
                                    Listitem: jobsList[value],
                                    index: value,
                                    color: homeViewModel.selectedIndex.value ==
                                            value
                                        ? HexColor("22BCFF")
                                        : Colors.white,
                                    textColor:
                                        homeViewModel.selectedIndex.value ==
                                                value
                                            ? Colors.white
                                            : Colors.black,
                                    iconcolor:
                                        homeViewModel.selectedIndex.value ==
                                                value
                                            ? Colors.white
                                            : HexColor("22BCFF"),
                                  ),
                                ));
                          }),
                    ))
              ]),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Job Quatation",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          color: HexColor("22BCFF"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/Images/clock.svg"),
                    Text('Friday Nov17'),
                    SvgPicture.asset('assets/Images/dot.svg'),
                    Text('9:00 AM - 1:00 PM'),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Container(
                      height: 151,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 110,
                            width: 110,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/Images/IMAGE HERE.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "Sink Repair",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contractor : Contractor Name",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Text(
                                          "10 Regent street,W17SK",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                          "assets/Images/icon.svg"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      color: HexColor("22BCFF"),
                                      child: Text(
                                        "View job",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Message",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: HexColor("22BCFF"),
                                          ),
                                        ),
                                        shape: OutlineInputBorder(
                                            borderSide: BorderSide(
                                          color: HexColor("22BCFF"),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 300,
                    top: 10,
                    child: Container(
                      height: 24,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor("22BCFF"),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Files",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor("22BCFF"),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 160,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 10,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext, index) {
                        return Container(
                          height: 120,
                          margin: EdgeInsets.only(right: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,

                                  //
                                )
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: Container(
                                  height: 100,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    //
                                    borderRadius: BorderRadius.circular(10),

                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Images/file.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/Images/laal.svg"),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "Sink Repair",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Container(
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Financial Summary",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor("22BCFF"),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Container(
                  height: 125,
                  width: 353,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 2),
                    ),
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Images/chart.png"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "£1550 earned this month",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
