import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.comment,)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:Icon(Icons.call)),
        ],
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            elevation: 10,
            onPressed: () {
              counter++;
              print(counter);
              setState(() {});
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            elevation: 10,
            onPressed: () {
              // counter--;
              // print(counter);
              // setState(() {});
            },
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'update'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(10),
                  child: UserAccountsDrawerHeader(
                    accountEmail: Text('afsana@gmail.com'), accountName:Text('Afsana'),
                  )),
              ListTile(
                title: Text('email'),
                leading: Icon(Icons.email),
              ),
              ListTile(
                title: Text('contact'),
                leading: Icon(Icons.contact_mail),
              ),
              ListTile(
                title: Text('profile'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('call'),
                leading: Icon(Icons.phone),
              ),
              ListTile(
                title: Text('community'),
                leading: Icon(Icons.group),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

// class HomeActivity extends StatelessWidget {
//   HomeActivity({super.key});
//
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Center(
//         child: Text('Counter $counter'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         elevation: 10,
//         onPressed: () {
//           counter++;
//           print(counter);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
