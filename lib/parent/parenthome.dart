import 'package:flutter/material.dart';
import 'package:playfullpath/parent/attendance.dart';
import 'package:playfullpath/teacher/attendencedetails.dart';
import 'package:playfullpath/teacher/childrendetails.dart';
import 'package:playfullpath/teacher/healthprogress.dart';
import 'package:playfullpath/teacher/ourgallery.dart';
import 'package:playfullpath/teacher/timetable.dart';

class home2 extends StatelessWidget {
  const home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Add your notification button functionality here
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            child: Image.asset(
              "asset/images/logo.png",
              height: 50,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>childrendetails()));
            },
              child: Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.wc, color: Colors.white, size: 50),
                            Text(
                              "Child Details",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
            ),
                    SizedBox(height: 10,),
                    InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()));
                      
                    },
                      child: Container(
                                        height: 80,
                                        width: 380,
                                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                                        ),
                                        child: Column(
                      children: [
                        Icon(Icons.event_available, color: Colors.white, size: 50),
                        Text(
                          "Attendance",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                                        ),
                                      ),
                    ),
                SizedBox(height: 10,),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
                },
                  child: Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.photo_album, color: Colors.white, size: 50),
                        Text(
                          "Our Gallery",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>timetable()));
                },
                  child: Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.calendar_month, color: Colors.white, size: 50),
                        Text(
                          "Time Table",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>health()));
                },
                  child: Container(
                    height: 80,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.insert_chart, color: Colors.white, size: 50),
                        Text(
                          "Health Progress",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
              

    );
  }
}