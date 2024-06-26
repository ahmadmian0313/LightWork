import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightwork/AppModules/HomeModule/ViewModels/home_view_model.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Components/calender_list_item.dart';

class CalenderTimeView extends StatefulWidget {
  const CalenderTimeView({super.key,});


  @override
  State<CalenderTimeView> createState() => _CalenderTimeView();
}

class _CalenderTimeView extends State<CalenderTimeView> {

  HomeViewModel homeViewModel = Get.put((HomeViewModel()));
  List<Map<String,dynamic>> timeitem= [
  {
  "text": "06:00 - 08:00",
   },
    {
      "text": "08:00 - 10:00",
    },
    {
      "text": "10:00 - 12:00",
    },
    {
      "text": "12:00 - 14:00",
    },
    {
      "text": "14:00 - 16:00",
    },
    {
      "text": "16:00 - 18:00",
    },
  ];

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 20),
                  child: Text(
                    "Preferred Work Days",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Obx(() => TableCalendar(
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(color:Colors.lightBlueAccent,shape: BoxShape.circle
                    ),

                  ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay:homeViewModel.date.value,
                  headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true,titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  currentDay: homeViewModel.date.value,
                  onDaySelected: (selectedDay, focusedDay ){
                    homeViewModel.date.value=selectedDay;

                  },
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 20),
                        child: Text(
                          "Preferred Work Times",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/Images/questionmark_icon.svg.svg")
                    ],
                  ),
                ),
        Column(
          children: [
            SizedBox(
              height: 240,
              child: GridView.builder(
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 3,

                ),
                itemBuilder: (BuildContext, index) {
                  return CalenderListItem(
                      calenerlist: timeitem[index],
                    index:index,
                  );
                },
              ),
            ),
          ],
        ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 330,
                      height: 50,
                      onPressed:(){},


                      color: Colors.lightBlueAccent,
                      child: Text("Confirm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                )

              ]
            ),


          ),
        ),
      );
    }
}
