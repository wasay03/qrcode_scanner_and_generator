import 'package:flutter/material.dart';
import 'package:qrcode_generator/generate_qr_code.dart';
import 'package:qrcode_generator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Center(child: Text('Qr code scanner and generator')), backgroundColor: Colors.blue,),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton(onPressed: (){
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
            
          });
        }, 
        child: Text('Scan Qr code'))
        ,
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){
          setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode()));

            
          });
        }, 
        child: Text('Generate Qr code'))
        
        ,],
      ),
     ), 
    );
  }
}