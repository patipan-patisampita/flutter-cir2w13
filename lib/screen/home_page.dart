import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}):super(key: key);

  Widget  build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Home Page"),
          centerTitle: true,
        ),
        body: Center(child: Text("Home page")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}