import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class QrScanner extends StatefulWidget {
   QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  ScanController controller = ScanController();

  @override
  void initState() {
    // TODO: implement initState
    print("helloworld");
    controller.toggleTorchMode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("QR Scanner",
          style: TextStyle(fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,

        ),centerTitle: true,

      ),
      body: ScanView(
        controller: controller,
        scanAreaScale: .7,
        scanLineColor: Colors.lightBlueAccent,
        onCapture: (data){
        },
      ),


    );
  }
}
