import 'package:flutter/material.dart';
import 'package:playfullpath/teacher/home.dart';
import 'package:playfullpath/widgets/otptextfield.dart';
import 'package:playfullpath/widgets/loginbutton.dart';

class parent extends StatelessWidget {
  const parent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
          
          // Set the leading widget to an IconButton for back navigation
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Implement navigation logic here
              Navigator.of(context).pop();
            },
          ),
        ),
         body: Column(
      children: [
        Container(height: 250,
        width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset("asset/images/logo.png"),
              Text('Welcome To Playfull Path',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,
              color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image.asset("asset/images/Ellipse 5.png"),
              SizedBox(height: 30,),
              Text("Login as a parentttt",style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 30,),
              OTPTextField(),
              Row(children: [
                TextButton(onPressed: (){}, child: Text("Forgot pin?",style: TextStyle(color: Colors.white),)),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("Help?",style: TextStyle(color: Colors.white),)),
                
              ],),
              SizedBox(height: 20,),
              ElevatedLoginButton(teacherlogin: Home(),)
            ],
          ),

        )
      ]
         ),
         
    );
  }
}