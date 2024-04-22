import 'package:flutter/material.dart';
import 'package:playfullpath/teacher/attendencedetails.dart';
import 'package:playfullpath/teacher/childrendetails.dart';
import 'package:playfullpath/teacher/healthprogress.dart';
import 'package:playfullpath/teacher/ourgallery.dart';
import 'package:playfullpath/teacher/timetable.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('asset/images/teacher photo.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Teachers Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle Profile tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Handle Help tap
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy and policy'),
              onTap: () {
                // Handle Help tap
              },
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text('Terms and Conditions'),
              onTap: () {
                // Handle Help tap
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Videos for kids",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.asset("asset/images/Rectangle 1105.png", fit: BoxFit.fill),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Card(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => childrendetails()));
                  },
                  child: ListTile(
                    title: Icon(Icons.wc, color: Colors.white, size: 40),
                    subtitle: Text(
                      "Children Details",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: Card(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Attendancedetails()));
                  },
                  child: ListTile(
                    title: Icon(Icons.event_available, color: Colors.white, size: 40),
                    subtitle: Text(
                      "Children Attendance",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
                    },
                    child: Container(
                      height: 100,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.photo_library, color: Colors.white, size: 50),
                          Text(
                            "Our Gallery",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => timetable()));
                  },
                  child: Container(
                    height: 100,
                    width: 165,
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
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => health()));
              },
              child: Container(
                height: 100,
                width: 165,
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
