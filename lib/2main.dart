import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Profile'),
        leading: Icon(CupertinoIcons.back),
      ),
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child:Row(
       mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Column(

              children: [
                Text('sdfk'),
                SizedBox(height: 16),
                Icon(
                  CupertinoIcons.airplane,
                  size: 32,
                ),
                SizedBox(height: 16),
                CupertinoButton.filled(child: Text('Click'), onPressed: () {}),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 200,
                  width: 200,
                  // color: Colors.lightBlue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.lightBlue,

                  ),
                )
              ],
            ),
        ],
      )
      ));

  }
}
