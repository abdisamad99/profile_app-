import 'package:flutter/material.dart';

//main method for running our app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PROFILE APP", //name of the app
      //first page
      home: Scaffold(
        //how do i want my app to look/design
        backgroundColor: Color(0xFFF1F5FA),
        appBar: AppBar(
          backgroundColor: Colors.blue, //color of appbar
          foregroundColor: Colors.white,
          title: Text("Profile"), //name on appbar
          leading: Icon(Icons.arrow_back_ios), //first widget on appbar
          actions: [
            Icon(Icons.more_vert_outlined),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.elliptical(300, 40)),
                        ),
                      ),
                      Positioned(
                        bottom: -50,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue,
                            child: Text("A",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Text("Abdisamad",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("Flutter Developer",
                      style: TextStyle(color: Colors.blueGrey)),
                  Text("Build great mobile experiences\nwith flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 16),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.email, color: Colors.blue),
                    ),
                    title: Text("Email", style: TextStyle(fontSize: 12)),
                    subtitle: Text("Abdisamad mohemed ali"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade50,
                      child: Icon(Icons.phone, color: Colors.green),
                    ),
                    title: Text("Phone", style: TextStyle(fontSize: 12)),
                    subtitle: Text("2520907773"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple.shade50,
                      child: Icon(Icons.location_on, color: Colors.deepPurple),
                    ),
                    title: Text("Location", style: TextStyle(fontSize: 12)),
                    subtitle: Text("Galdogob Puntland Somalia"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: Size(300, 48),
                    ),
                    onPressed: () {},
                    child: Text("Contact Me"),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAlias, //round the corners
              width: 400,
              margin: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 20), //space outside
            ),
          ),
        ),
      ),
    ); //JUST LIKE LAND WHEN BUILDING
  }
}