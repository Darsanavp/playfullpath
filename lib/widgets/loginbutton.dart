import 'package:flutter/material.dart';
import 'package:playfullpath/teacher/home.dart';


class ElevatedLoginButton extends StatelessWidget {
  var teacherlogin;
  ElevatedLoginButton({required this.teacherlogin});
  @override
  Widget build(BuildContext context) {
    return SizedBox(width:250,
      child: ElevatedButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>teacherlogin));
        //  Add your login logic here
          
        },
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          primary: Colors.white, // Button color
          textStyle: TextStyle(
            color: Colors.black, // Text color
          ),
          elevation: 5, // Elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}


