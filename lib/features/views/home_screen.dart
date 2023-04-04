import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final route =
      MaterialPageRoute(builder: (context) => const HomePage());
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fit Food"),
          actions: [
            Icon(
              Icons.search_rounded,
              size: 25,
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                  child: CircleAvatar(
                radius: 45,
                child: Icon(
                  Icons.person,
                  size: 38,
                ),
              )),
              Card(
                child: ListTile(
                  title: const Text('Recomended food'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Search Foods'),
                  onTap: () {},
                ),),
              Card(
                child: ListTile(
                  title: const Text('LogOut'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        body:  SingleChildScrollView(
            child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("text item"),
              ),
            )
          ],
        )));
  }
}
