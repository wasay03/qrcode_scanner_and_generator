import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
  String QrResult='Scanned data will Appear here';

  Future <void> ScanQR() async{
    try {
      
    final QrCode= await FlutterBarcodeScanner.scanBarcode('#ff6666','Cancel',true,ScanMode.QR);
    if(!mounted) return;
    setState(() {
      this.QrResult=QrCode.toString().trim();
    });
    }on PlatformException {
      QrResult='failed to read QR code';
      
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('QR Code SCanner'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 30,),
              Text(QrResult,style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ScanQR, child: Text('Scan QR code'))


          ],
        ),
      ),
    );
  }

}