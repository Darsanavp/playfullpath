import 'package:flutter/material.dart';

class Attendancedetails extends StatelessWidget {
  const Attendancedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text(" Attendance details",style: TextStyle(
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
                             // Navigator.push(context,MaterialPageRoute(builder:(context)=>history()));
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
             Expanded(
            child: ListView.builder(
              itemCount: 10, // Adjust the number of items as needed
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        'asset/images/name.png', // Replace with your image path
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                       title: Text('Malavika Raj '),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle present button tap
                            },
                            icon: Icon(Icons.check_circle_outline),
                            color: Colors.green,
                          ),
                          IconButton(
                            onPressed: () {
                              
                            },
                            icon: Icon(Icons.cancel_outlined),
                            color: Colors.red,
                          ),
                        ],
                      ),
                  onTap: () {
                    // Handle list item tap
                  },
                    ))
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ), 
          // Align(alignment: Alignment.bottomCenter,),
        
          Align(alignment: Alignment.bottomCenter,),
                   Center(
                     child: Container(
                         height: 30,
                         width: 300,
                         decoration: BoxDecoration(
                           border: Border.all(),color: Colors.blue
                         ),
                                     child:ElevatedButton( style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15),backgroundColor: Colors.blue),
                               
                            onPressed: (){}, child: Text("Save"))
                            ),
                   ) 
          ]
        )
       )
      
    );
  }
}