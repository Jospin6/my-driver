import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Mon Chauffeur";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          icon: const Icon(Icons.menu)),
        title: Text(
          widget.title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25,
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text("Mon Chauffeur", style: TextStyle(color: Colors.white, fontSize: 20),)),
            )
          ],
        ),
      ),

      body: const Stack(
        children: [
            Text("my home page")
        ],
      )
    );
  }
}
