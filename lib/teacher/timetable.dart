import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class timetable extends StatelessWidget {
  const timetable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Time Table",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        
      ),
      ),
      leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Todays Schedule",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            EasyDateTimeLine(initialDate: DateTime.now(),
            onDateChange: (selectedDate) {},),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                border: Border.all(
                        width: 1,
                        color: Colors.black,
                        
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("10 Am To 11 AM"),
                  Text("Learning Something",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
                
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                border: Border.all(
                        width: 1,
                        color: Colors.black,
                        
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("11 Am To 12.30 PM"),
                  Text("Playtime(Snacks includes)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
                
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                border: Border.all(
                        width: 1,
                        color: Colors.black,
                        
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("12.30 PM To 1.30 PM"),
                  Text("Lunch Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              )
                
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                border: Border.all(
                        width: 1,
                        color: Colors.black,
                        
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("1.30 PM To 3 PM"),
                  Text("Nap",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 500,
                decoration: BoxDecoration(
                border: Border.all(
                        width: 1,
                        color: Colors.black,
                        
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text(" 3.30 PM"),
                  Text("Tea and Snacks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
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