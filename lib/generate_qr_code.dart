import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController URLcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR Code'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(URLcontroller.text.isNotEmpty)
              Container(child: QrImageView(data:URLcontroller.text,size: 200 ),
              ),
              SizedBox(height: 10,)
              ,
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  controller: URLcontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: 'Enter your data'
                    
                    
                  ),
                ),
              ),
              SizedBox(height: 10,)
              ,ElevatedButton(onPressed: (){
                setState(() {
                  
                });
                
              }, child: Text('Generate QR code'))
              ,

            ],
          ),
        ),
      ),
    );
  }
}