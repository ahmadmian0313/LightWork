import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Components/job_list_item.dart';

class JobListView extends StatefulWidget {
  const JobListView({super.key});

  @override
  State<JobListView> createState() => _JobListViewState();
}

class _JobListViewState extends State<JobListView> {
  int selectIndex=0;
  List<Map<String,dynamic>> jobitem = [
    {
      "title": "Interior Cleaning",
      "icon": "assets/Images/Icon Cleaning.svg",
    },
    {
      "title": "Electrical",
      "icon": "assets/Images/Icon Electrical.svg",
    },
    {
      "title": "Plumbing",
      "icon": "assets/Images/Icon Plumbing.svg",
    },
    {
      "title": "Construction",
      "icon": "assets/Images/Icon Home Repair container.svg",
    },
    {
      "title": "Garden",
      "icon": "assets/Images/Icon Garden.svg",
    },
    {
      "title": "Home Maintenance",
      "icon": "assets/Images/Frame 39419.svg",
    },


  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
          child: Text(
            "Choose Job Category",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 406,
          width: 360,
          child: GridView.builder(
            itemCount:jobitem.length ,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.3,
            ),
            itemBuilder: (BuildContext, index) {
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selectIndex=index;
                  });
                },
                child: JobListItem(
                    joblist: jobitem[index],
                    index: index,
                  color: selectIndex == index
                      ?Colors.lightBlueAccent
                      :Colors.grey,
                    iconcolor: selectIndex == index
                    ?Colors.lightBlueAccent
                        :Colors.lightBlueAccent,
                    textcolor: selectIndex == index
                ?Colors.black87
                    :Colors.black87,

                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 50,
                minWidth: 310,
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: HexColor("56CCFF"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
