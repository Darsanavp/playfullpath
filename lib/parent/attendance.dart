import 'package:flutter/material.dart';
import 'package:playfullpath/parent/history.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "01",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  width: 20, // Width of the vertical divider
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'February',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                        fontWeight: FontWeight.bold
                          ),
                        ),
                                            Text(
                      "2024",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                      ],
                    ),
                    
                  ),
                ),
              ],
            ),
                  
                
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                              onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>history()));
                                // Add your onPressed function here
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // background color
                                onPrimary: Colors.white, // text color
                              ),
                              child: Text('View History'),
                            ),
                )
              ],
            ),
            SizedBox(height:20  ,),
            Text("Your child is present today",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              width: 330,
  height: 50,
  margin: EdgeInsets.only(left: 15, top: 20,right: 15),
              child: ListTile(
                leading: Image.asset("asset/images/name.png"),
                title: Text("Malavika Raj",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.check,color: Colors.green,),
                shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.black, width: 1),
    borderRadius: BorderRadius.circular(5),
  ), 
                
              ),
            ),

        
          ],
        ),
      ),
    );
  }
}