import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
  
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Attendance",style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      ),
      leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          
          SizedBox(height: 20,),
           TableCalendar(
                focusedDay: today,
                firstDay: DateTime.utc(2010,10,16),
                lastDay:DateTime.utc(2030,3,14) ,
                onPageChanged: (focusedDay) {
                focusedDay = focusedDay;
                
        },
               // calendarController: _calendarController,
              ),
        ],),
      ),

    );
  }
}