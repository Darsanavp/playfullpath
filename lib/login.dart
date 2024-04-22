import 'package:flutter/material.dart';
import 'package:playfullpath/parent/parentlogin.dart';
import 'package:playfullpath/teacher/teacherlogin.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset("asset/images/logo.png"),
              ),
              SizedBox(height: 20),
              Text('Welcome To Playfull Path',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,
              color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          child: Column(children: [
            Text("Welcome Back!",style:TextStyle(fontSize: 20,color: Colors.white) ,),
             Text("Please select your account type",style:TextStyle(fontSize: 16,color: Colors.white) ,),
             SizedBox(height: 20),
             
            //  Padding(
            //    padding: const EdgeInsets.only(left: 50),
            //    child: CustomRadioGroup(
            //                options: ['asset/images/Ellipse 5.png',
            //                'asset/images/Ellipse 6 (1).png',
                           
               
                
            //                ],
            //                onChanged: (index) {
            //     print('Selected index: $index');
            //                },
            //              ),
            //  ),
            //  SizedBox(height: 10,),
            //            Row(children: [
            //             Padding(
            //               padding: const EdgeInsets.only(left: 80),
            //               child: Text("Parent",style: TextStyle(color: Colors.white,fontSize: 20),),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 65),
            //               child: Text("Teacher",style: TextStyle(color: Colors.white,fontSize: 20)),
            //             ),
            //            ],),
            //            Padding(
            //              padding: const EdgeInsets.only(top: 100),
            //              child: ElevatedLoginButton(teacherlogin:teacher()),
            //            ),
            Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: <Widget>[
                      // Background image
                      Positioned.fill(
            child: Image.asset(
              'asset/images/Ellipse 5.png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
                      ),
                      // Button content
                      Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4), // Overlay color for better text visibility
              child: Center(
                child: Text(
                  'Parent',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
                      ),
                      // Invisible button to capture taps
                      Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Add your button tap logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>parent()));
                },
              ),
            ),
                      ),
                    ],
                  ),
                ),
    SizedBox(height: 20,),
    Container(
      width: 300,
      height: 50,
      child: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/images/Ellipse 6 (1).png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          // Button content
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4), // Overlay color for better text visibility
              child: Center(
                child: Text(
                  'Teacher',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Invisible button to capture taps
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {

                  // Add your button tap logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>teacher()));
                },
              ),
            ),
          ),
        ],
      ),
    )


          
            
          ],),

        )
      ],
    ),
  

  
      
    );
  }
}