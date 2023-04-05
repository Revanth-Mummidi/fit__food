import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final route =
      MaterialPageRoute(builder: (context) => const HomePage());
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Hi, ",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Pavan",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
          actions: [
            Icon(
              Icons.notifications_active_rounded,
              size: 30,
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
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('LogOut'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_max_rounded),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 39, 37, 38),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Like',
              backgroundColor: Color.fromARGB(255, 39, 37, 38),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_rounded),
              label: 'Fit',
              backgroundColor: Color.fromARGB(255, 39, 37, 38),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 39, 37, 38),
            ),
          ],
          currentIndex: _selectedIndex,
         
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ));
  }
}
