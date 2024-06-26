  import 'package:get/get.dart';
  import 'package:get/get_state_manager/get_state_manager.dart';

class HomeViewModel extends GetxController{
  RxInt currentIndex=0.obs;
  RxInt selectedIndex=0.obs;
  Rx<DateTime> date= DateTime.now().obs;

  RxList<String> SelectedDayList = <String>[].obs;
  RxString filePath= "".obs;
}
