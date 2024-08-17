import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    print(mediaQuery.size.width);
    print(mediaQuery.size.height);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.flipped);
    // print(mediaQuery.devicePixelRatio);
    if (mediaQuery.size.width < 640) {
      print('this is a phone');
    } else if (mediaQuery.size.width > 640 && mediaQuery.size.width < 1000) {
      print('this is a tab');
    } else {
      print('laptop/desktop');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      // body: OrientationBuilder(builder: (context, Orientation orientation) {
      //   print(orientation);
      //   if(orientation==Orientation.portrait){
      //     return Column(
      //       children: [
      //         Wrap(
      //             alignment: WrapAlignment.center,
      //             crossAxisAlignment: WrapCrossAlignment.center,
      //             spacing: 10,
      //             children: [
      //               Text('hdsfhd '),
      //               Text('hdsfhd fjdhf dfdh'),
      //               Text('hdsfhd fjdhf dfdhjdfd'),
      //               Text('random'),
      //               Text('hdsfhd fjdhf dfdhjdfd'),
      //             ]),
      //         Text(orientation.name)
      //       ],
      //     );
      //   }else {
      //   return  Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text('Hello'),
      //         Text('hi'),
      //         Text(orientation.name)
      //       ],
      //     ),
      //   );
      //   }
      //   // return Column(
      //   //   children: [
      //   //     Wrap(
      //   //         alignment: WrapAlignment.center,
      //   //         crossAxisAlignment: WrapCrossAlignment.center,
      //   //         spacing: 10,
      //   //         children: [
      //   //           Text('hdsfhd '),
      //   //           Text('hdsfhd fjdhf dfdh'),
      //   //           Text('hdsfhd fjdhf dfdhjdfd'),
      //   //           Text('random'),
      //   //           Text('hdsfhd fjdhf dfdhjdfd'),
      //   //         ]),
      //   //     Text(orientation.name)
      //   //   ],
      //   // );
      // }),
      body: LayoutBuilder(
        builder: (context,BoxConstraints constraints){
          if (constraints.maxWidth < 640) {
            return Text('this is a PHONE');
          } else if (constraints.maxWidth > 640 &&
              constraints.maxWidth < 1008) {
            return Text(' this is table');
          } else {
            return Text('LAPTOP/DESKTOP');
          }
        },
      ),
    );
  }}

