import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  foregroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                ),
                Text(
                  'Laxminarayan Sharma',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 20,
                  child: Divider(
                    color: Colors.teal.shade900,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 9420416100',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'laxminarayannsharma@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

// Column(
//             // mainAxisSize: MainAxisSize.min,
//             // verticalDirection: VerticalDirection.up,
//             //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 height: 100,
//                 // width: 100,
//                 // margin: EdgeInsets.only(left: 30,top: 50),
//                 // padding: EdgeInsets.all(20),
//                 color: Colors.white,
//                 child: Text('Container 1'),
//               ),
//               SizedBox(height: 10,),
//               Container(
//                 // width: 100,
//                 height: 100,
//                 color: Colors.blue,
//                 child: Text('Container 2'),
//               ),
//               Container(
//                 // width: 100,
//                 height: 100,
//                 color: Colors.red,
//                 child: Text('Container 3'),
//               ),
//               Container(width: double.infinity,)
//            ],
//           ),
