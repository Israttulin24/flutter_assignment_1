import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        darkTheme: ThemeData(primarySwatch: Colors.orange),
        color: Colors.deepPurple,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()
    );
  }
}



class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Tab 1",),
              Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2"),
              Tab(icon: Icon(Icons.phone), text: "Tab 3")
            ],
          ),
          title: Text('Flutter Assignment 1'),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding:EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(//header
                    decoration: BoxDecoration(color: Colors.lightGreen),
                    accountName: Text("Israt Jahan Tulin",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("israttulin24@gmail.com",style: TextStyle(color: Colors.black),),
                  )
              ),

              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Tab 1"),
              ),

              ListTile(
                  leading: Icon(Icons.phone_iphone),
                  title: Text("Tab 2"),
                 ),

              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Tab 3")
              ),
            ],
          ),
        ),


        body: TabBarView(
          children: [
            Center( child: Text("Page 1")),
            Center( child: Text("Page 2")),
            Center( child: Text("Page 3")),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){},
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Tab 1"),
            BottomNavigationBarItem(icon: Icon(Icons.phone_iphone),label: "Tab 2"),
            BottomNavigationBarItem(icon: Icon(Icons.phone),label: "Tab 3"),
          ],
        ),
      ),
    );
  }
}