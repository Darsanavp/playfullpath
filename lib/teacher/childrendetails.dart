import 'package:flutter/material.dart';
import 'package:playfullpath/teacher/studentdetail.dart';

class childrendetails extends StatelessWidget {
  const childrendetails({super.key});

  @override
  Widget build(BuildContext context) {
    var name=["Malavika Raj","Malavika Raj","Malavika Raj","Malavika Raj",
               "Malavika Raj","Malavika Raj","Malavika Raj","Malavika Raj","Malavika Raj"
    ];
    var img=["asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png",
    "asset/images/name.png"
    ];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Children details",style: TextStyle(
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
      
      body: ListView.builder(itemCount: 9,
        itemBuilder: (context,index){
          return InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>studentdetail()));
          },
            child: Container(
              width: 330,
  height: 50,
  margin: EdgeInsets.only(left: 15, top: 20,right: 15),
              child: ListTile(
                leading: Image.asset(img[index]),
                title: Text(name[index]),
                shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.black, width: 1),
    borderRadius: BorderRadius.circular(5),
  ), 
                
              ),
            ),
          );
        }),
    );
  }
}