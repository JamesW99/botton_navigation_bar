import 'package:botton_navigation_bar/target_page.dart';
import 'package:flutter/material.dart';
import 'package:botton_navigation_bar/target_page copy.dart';

class Setup_page extends StatelessWidget {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //The logo
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(70),
          child: Image.asset('assets/icons/LOGONEW.png'),
        ),

        //mail Botton
        actions: [
          IconButton(
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),

      // 6 navigate botton
      body: Center(
          child: Column(
        children: [
          const RaisedButton(
            onPressed: null,
            child: Text('             Setting             ',
                style: TextStyle(fontSize: 35)),
          ),
          ElevatedButton(
            child: Text('Account Information'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TargetPage()),
              );
            },
          ),
          ElevatedButton(
            child: Text('     Porfile  Setting     '),
            onPressed: () {
              // go Porfile Setting page
            },
          ),
          ElevatedButton(
            child: Text('       Perferences       '),
            onPressed: () {
              // go perferences page
            },
          ),
          ElevatedButton(
            child: Text('              Help              '),
            onPressed: () {
              // show help page
            },
          ),
          ElevatedButton(
            child: Text('            About             '),
            onPressed: () {
              // show about page
            },
          ),
          ElevatedButton(
            child: Text('           Logout            '),
            onPressed: () {
              // do logout
            },
          ),
        ],
      )),
    );
  }
}
