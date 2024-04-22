import 'package:flutter/material.dart';

class healthdetails extends StatelessWidget {
  const healthdetails({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Health Progress",style: TextStyle(
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
      
      body: Column(children: [
        Row(children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset("asset/images/name.png"),
          ),
          Text("Malavika Raj",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],),
        SizedBox(height: 20,),
        Text("Information:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        SizedBox(height: 30,),
        Container(
                  child: Row(
                    children: [
                      Text(
                        "Children's Full Name ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      Text(":"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Malavika Raj ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Gender ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 109,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Female ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Date of Birth ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 76,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "01/08/2023 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
               
                
                Row(
                  children: [
                    Text(
                      "Height ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 76,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "100 CM ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                
                
                Row(
                  children: [
                    Text(
                      "Weight ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 76,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "25 KG ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Health and vaccination information:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Polio vaccination ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " 01/08/2023",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Current Medications",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "    No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Recent illness ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Allergies ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
      ],)
          );
  }
}