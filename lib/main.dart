import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playfullpath/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login())));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
                Center(child: Image.asset("asset/images/logo.png")),

          
          Text('PLAYFULL PATH',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,
          color: Colors.white),
          ),Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("asset/images/logo2.png",fit: BoxFit.cover,)),
            
        ],
      )
    
      
     
      
      
       );
  }
}