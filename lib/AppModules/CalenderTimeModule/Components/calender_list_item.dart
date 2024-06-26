import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightwork/AppModules/HomeModule/ViewModels/home_view_model.dart';

class CalenderListItem extends StatefulWidget {
  const  CalenderListItem({
    super.key,
    required this.calenerlist,
    required this.index,
    });
  final calenerlist;
  final int index;

  @override
  State< CalenderListItem> createState() => _WorkListItemState();
}

class _WorkListItemState extends State< CalenderListItem> {
  HomeViewModel homeViewModel= Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(homeViewModel.SelectedDayList.contains((widget.calenerlist['text']))){
          (homeViewModel.SelectedDayList.remove((widget.calenerlist['text'])));
        } else {
          (homeViewModel.SelectedDayList.add((widget.calenerlist['text'])));
        }
      },
      child: Obx(() => Container(
        height: 65,

        decoration: BoxDecoration(
            color:homeViewModel.SelectedDayList.contains(widget.calenerlist['text'])?Colors.lightBlueAccent:Colors.white,

          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.lightBlueAccent),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.calenerlist["text"],style: TextStyle(
                color: homeViewModel.SelectedDayList.contains(widget.calenerlist['text'])
                    ?Colors.white:Colors.black87
              ),
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
