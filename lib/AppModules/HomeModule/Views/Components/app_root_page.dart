import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightwork/AppModules/HomeModule/ViewModels/home_view_model.dart';
import 'package:lightwork/AppModules/HomeModule/Views/home_view.dart';
import 'package:lightwork/AppModules/ChatModule/Views/chat_view.dart';

import '../../../../image_picker_controller.dart';
import '../../../../qr_scanner_view.dart';
import '../../../CalenderTimeModule/Views/calender_time_view.dart';
import '../../../ChatModule/Views/chat_index_view.dart';
import '../../../JobModule/Views/job_view.dart';

class AppRootPage extends StatefulWidget {
  const AppRootPage({super.key});

  @override
  State<AppRootPage> createState() => _AppRootPageState();
}

class _AppRootPageState extends State<AppRootPage> {
  HomeViewModel homeViewModel= Get.put(HomeViewModel() );
  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Scaffold(
      body: [

        LightView(),
        CalenderTimeView(),
        ImagePickerController(),
        JobListView(),
        ChatIndexView(),

      ].elementAt(homeViewModel.currentIndex.value),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black87,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.black87),
        unselectedLabelStyle: TextStyle(color: Colors.black26),
        currentIndex: homeViewModel.currentIndex.value,
        onTap: (value) {
          homeViewModel.currentIndex.value= value;
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Images/home.svg'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Images/prpoperty.svg'),
            label: "Property",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Images/add.svg'),
            label: "location",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Images/breifcase.svg'),
            label: "location",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Images/chat.svg'), label: "CHAT"),
        ],
      ),
    )
    );
  }
}
