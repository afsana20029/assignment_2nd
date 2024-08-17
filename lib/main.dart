import 'package:assignment_2nd/2main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:ProfilePage(),
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.pink,
      //     titleTextStyle: TextStyle(
      //         color: Colors.white,
      //         fontSize: 22,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 1.2),
      //   ),
      //   textButtonTheme: TextButtonThemeData(
      //       style: TextButton.styleFrom(
      //           foregroundColor: Colors.pink,
      //           textStyle: TextStyle(
      //             fontSize: 22,
      //             fontWeight: FontWeight.w300,
      //             letterSpacing: 1.2,
      //           ))),
      //   inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(
      //           borderSide: BorderSide(color: Colors.green, width: 2)),
      //       disabledBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(8),
      //           borderSide: BorderSide(
      //             color: Colors.green,
      //             width: 2,
      //           )),
      //       focusedBorder: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(8),
      //         borderSide: BorderSide(
      //           color: Colors.yellow,
      //           width: 2,
      //         ),
      //       ),
      //   labelStyle: TextStyle(
      //       color: Colors.black
      //   ),
      //       hintStyle: TextStyle(
      //         color: Colors.purple.shade200
      //       )
      //   ),
      // ),
    //   darkTheme:ThemeData(
    //     brightness:Brightness.dark,
    //     appBarTheme: AppBarTheme(
    //       backgroundColor: Colors.pink,
    //       titleTextStyle: TextStyle(
    //           color: Colors.white,
    //           fontSize: 22,
    //           fontWeight: FontWeight.bold,
    //           letterSpacing: 1.2),
    //     ),
    //     textButtonTheme: TextButtonThemeData(
    //         style: TextButton.styleFrom(
    //             foregroundColor: Colors.pink,
    //             textStyle: TextStyle(
    //               fontSize: 22,
    //               fontWeight: FontWeight.w300,
    //               letterSpacing: 1.2,
    //             ))),
    //     inputDecorationTheme: InputDecorationTheme(
    //         border: OutlineInputBorder(
    //             borderSide: BorderSide(color: Colors.green, width: 2)),
    //         disabledBorder: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(8),
    //             borderSide: BorderSide(
    //               color: Colors.green,
    //               width: 2,
    //             )),
    //         focusedBorder: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(8),
    //           borderSide: BorderSide(
    //             color: Colors.yellow,
    //             width: 2,
    //           ),
    //         ),
    //         labelStyle: TextStyle(
    //             color: Colors.white
    //         ),
    //         hintStyle: TextStyle(
    //             color: Colors.purple.shade200
    //         ),
    //
    //     ),
    // textTheme: TextTheme(
    //  bodySmall: TextStyle(fontSize: 20),
    //        titleLarge: TextStyle(fontSize:40, fontWeight: FontWeight.w700),
    //          titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    //        titleSmall:
    //            TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
    //   ),
    //   themeMode: ThemeMode.system,
    );
  }
}

// class HomeActivity extends StatelessWidget {
//   HomeActivity({super.key});
//   MySnackBar(message, context) {
//     return ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: (Text(message))),
//     );
//   }
//
//   TextEditingController _descriptionTeController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gretting App'),
//       ),
//       // body: Center(
//       //   child: Column(
//       //     mainAxisSize: MainAxisSize.min,
//       //     children: [
//       //       Text(
//       //         'Hello,World!',
//       //         style: TextStyle(
//       //           fontWeight: FontWeight.bold,
//       //           fontSize: 20,
//       //           color: Colors.red,
//       //         ),
//       //       ),
//       //       SizedBox(
//       //         height: 20,
//       //       ),
//       //       Text('Welcome to Flutter!'),
//       //       SizedBox(
//       //         height: 20,
//       //       ),
//       //       Image(image: AssetImage('assets/image/flutter.png')),
//       //       SizedBox(
//       //         height: 20,
//       //       ),
//       //       ElevatedButton(
//       //           style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//       //           onPressed: () {
//       //             MySnackBar('Button Pressed!', context);
//       //           },
//       //           child: Text(
//       //             "Press Me",
//       //           ))
//       //     ],
//       //   ),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextField(
//               enabled: true,
//               decoration: InputDecoration(
//                   hintText: 'Enter your name',
//                   hintStyle: TextStyle(color: Colors.green),
//                   // border: OutlineInputBorder(
//                   //     borderSide: BorderSide(color: Colors.green, width: 2)),
//                   // disabledBorder: OutlineInputBorder(
//                   //     borderRadius: BorderRadius.circular(8),
//                   //     borderSide: BorderSide(
//                   //       color: Colors.green,
//                   //       width: 2,
//                   //     )),
//                   // focusedBorder: OutlineInputBorder(
//                   //   borderRadius: BorderRadius.circular(8),
//                   //   borderSide: BorderSide(
//                   //     color: Colors.yellow,
//                   //     width: 2,
//                   //   ),
//                   // ),
//                   icon: Icon(Icons.add),
//                   prefixIcon: Icon(Icons.search),
//                   label: Text('Name'),
//
//                   ),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             TextField(
//               maxLines: 5,
//               maxLength: 200,
//               onTap: () {
//                 print('Tappedd to text field');
//               },
//               onChanged: (String value) {
//                 print(value);
//               },
//               controller: _descriptionTeController,
//               enabled: true,
//               decoration: InputDecoration(
//                 alignLabelWithHint: true,
//                 label: Text('Description'),
//
//                 hintText: 'Enter Description',
//                 hintStyle: TextStyle(color: Colors.green),
//                 // border: OutlineInputBorder(
//                 //     borderSide: BorderSide(color: Colors.green, width: 2)),
//                 // disabledBorder: OutlineInputBorder(
//                 //     borderRadius: BorderRadius.circular(8),
//                 //     borderSide: BorderSide(
//                 //       color: Colors.green,
//                 //       width: 2,
//                 //     )),
//                 // focusedBorder: OutlineInputBorder(
//                 //   borderRadius: BorderRadius.circular(8),
//                 //   borderSide: BorderSide(
//                 //     color: Colors.yellow,
//                 //     width: 2,
//                 //   ),
//                 // ),
//               ),
//             ),
//             TextField(
//               enabled: true,
//               obscureText: true,
//               decoration: InputDecoration(
//                   hintText: 'Enter your name',
//                   hintStyle: TextStyle(color: Colors.green),
//                   border: OutlineInputBorder(
//                       //     borderSide: BorderSide(color: Colors.green, width: 2)),
//                       // disabledBorder: OutlineInputBorder(
//                       //     borderRadius: BorderRadius.circular(8),
//                       //     borderSide: BorderSide(
//                       //       color: Colors.green,
//                       //       width: 2,
//                       //     )),
//                       // focusedBorder: OutlineInputBorder(
//                       //   borderRadius: BorderRadius.circular(8),
//                       //   borderSide: BorderSide(
//                       //     color: Colors.yellow,
//                       //     width: 2,
//                       //   ),
//                       ),
//                   label: Text('Password'),
//                   // labelStyle: TextStyle(
//                   //   fontSize: 16,
//                   // ),
//               )
//             ),
//             TextButton(
//                 onPressed: () {
//                   _descriptionTeController.clear();
//                   //    _descriptionTeController.text='clear';
//                 },
//                 child: Text('Clear description'))
//           ],
//         ),
//       ),
//     );
//   }
// }
