import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'home_page.dart';
import 'contact.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigator"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Navigator"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Text");
        },
        child: Icon(Icons.home),
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
              // child: Center(
              //   child: Text(
              //     "HEADER",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 20,
              //     ),
              //   ),
              // ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/avanger3.jpg"),
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text("TH", style: TextStyle(fontSize: 15))),
                  ),
                  Text("Thanos:Infinity War",
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage()));
              },
              leading: Icon(Icons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              },
              leading: Icon(Icons.account_circle, color: Colors.white),
              title: Text("About", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.dns, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
              leading: Icon(Icons.api, color: Colors.white),
              title: Text("Contact", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.blueGrey),
            ListTile(
              leading: Icon(Icons.power_settings_new, color: Colors.white),
              title:
                  Text("EXIT Program", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
