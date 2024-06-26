import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lightwork/AppModules/HomeModule/ViewModels/home_view_model.dart';

class ImagePickerController extends StatefulWidget {
  const ImagePickerController({super.key});

  @override
  State<ImagePickerController> createState() => _ImagePickerControllerState();
}

class _ImagePickerControllerState extends State<ImagePickerController> {
  HomeViewModel homeViewModel =Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Image Picker",
        style: TextStyle(fontWeight: FontWeight.bold,),
        textAlign: TextAlign.center,

        ),centerTitle: true,

      ),
      body: Column(
        children: [
          Container(
            height: 570,
            width: MediaQuery.of(context).size.width,
            color: Colors.cyan.shade50,
            child: Column(
              children: [
                SizedBox(height:90),
                Container(
                  height: 280,width: 300,
                  child: Obx(() =>  homeViewModel.filePath.value.isNotEmpty?
                  Image.file(File(homeViewModel.filePath.value),fit: BoxFit.cover,)
                      : SizedBox(),
                )),
                SizedBox(height:50),
                SizedBox(
                  width: 300,height: 50,
                  child: MaterialButton(onPressed: ()
                  async{
                    final ImagePicker picker = ImagePicker();
                    final XFile? image= await picker.pickImage(source:ImageSource.camera);
                    if (image!.path.isNotEmpty){
                      homeViewModel.filePath.value=image.path;
                    }

                  },
                  color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_rounded,color: Colors.white,),
                      Text("Camera",
                      style: TextStyle(
                        fontSize: 20,color: Colors.white
                      ),),
                    ],
                  ),),
                ),
                SizedBox(height:20),
                SizedBox(
                  width: 300,height: 50,
                  child: MaterialButton(onPressed: ()async{
                    final ImagePicker picker = ImagePicker();
                    final XFile? image= await picker.pickImage(source:ImageSource.gallery);
                    if (image!.path.isNotEmpty){
                      homeViewModel.filePath.value=image.path;
                    }


                  },
                    height: 50,
                    minWidth: 200,
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(8)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image,color: Colors.white,),
                        Text("Gallery",
                          style: TextStyle(
                              fontSize: 20,color: Colors.white
                          ),),
                      ],
                    ),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
