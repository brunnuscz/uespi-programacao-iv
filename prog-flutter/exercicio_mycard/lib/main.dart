import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício MyCard',
      home: Scaffold( 
        backgroundColor: Colors.teal[600], 
        body: SafeArea(
          child: Center( 
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [ 
                CircleAvatar(
                  radius: 85.0,
                  // backgroundColor: Colors.red,
                  // child: Text(
                  //   'B',
                  //   style: TextStyle(
                  //     color: Colors.white54,
                  //     fontSize: 40.0
                  //   )
                  // ),
                  backgroundImage: AssetImage('images/bruno.jpg'),
                ),
                // Container(
                //   width: 170.0,
                //   height: 170.0,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Colors.white,
                //     image: DecorationImage(
                //       image: AssetImage('images/bruno.jpg')
                //     ),
                //   ),
                // ),
                Text(
                  'Bruno Cruz',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                 'FLUTTER DEVELOPMENT',
                 style: TextStyle(
                   color: Colors.white60,
                   fontFamily: 'SourceSansPro',
                   fontSize: 18.0
                 ) 
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 1,
                  width: 150,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350.0,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.teal[600],
                      ),
                      hintText: '+55 86 99745-3424',
                      filled: true,
                      hintStyle: TextStyle(color: Colors.teal[900]),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                width: 350.0,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.teal[600],
                      ),
                      hintText: 'bruno@gmail.com',
                      filled: true,
                      hintStyle: TextStyle(color: Colors.teal[900]),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0)
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}