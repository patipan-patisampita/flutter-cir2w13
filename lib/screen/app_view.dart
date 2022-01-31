import 'package:flutter/material.dart';

class AppView extends StatelessWidget{
  const AppView({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
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
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "HEADER",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.indigo),
            ),
            ListTile(
              onTap: () {
                print("Home");
              },
              leading: Icon(Icons.home,color: Colors.indigo),
              title: Text("Home",style: TextStyle(color: Colors.indigo)),
            ),
            ListTile(
              onTap: () {
                print("MENU-2");
              },
              leading: Icon(Icons.account_circle,color: Colors.deepOrange),
              title: Text("MENU-2"),
            ),
            ListTile(
              leading: Icon(Icons.dns,color: Colors.deepOrange),
              title: Text("MENU-3"),
            ),
            ListTile(
              leading: Icon(Icons.api,color: Colors.deepOrange),
              title: Text("MENU-4"),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.power_settings_new,color: Colors.deepOrange),
              title: Text("EXIT Program"),
            ),
          ],
        ),
      ),
    );
  }
}