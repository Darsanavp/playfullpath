import 'package:flutter/material.dart';
import 'package:playfullpath/teacher/photos.dart';
import 'package:playfullpath/teacher/videos.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Our Gallery",style: TextStyle(
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
      body: Column(
        children: [
          Container(height: 200,
          width: 500,
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>photos()));
            },
              child: Image.asset("asset/images/photos.png")),
            
          ),
          Container(height: 200,
          width: 500,
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>videos()));
            },
              child: Image.asset("asset/images/gallery.png")),
            
          ),
          SizedBox(height: 100,),
          ElevatedButton(
            onPressed: () {
              // Add your upload functionality here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Background color
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              elevation: 0,
              shape: BeveledRectangleBorder()// Elevation for the button
            ),
            child: Text(
              'Upload ',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 16,
              ),
            ),
          ),
        
      

        ],
      ),
    );
  }
}