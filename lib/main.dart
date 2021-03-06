import 'package:callaborators/teamsearch.dart';
import 'package:flutter/material.dart';

import 'loginregister.dart';
import 'dashboard.dart';

void main() {
  runApp(MaterialApp(
      title: 'Call-A-Borators UI',
      home: Dashboard()
  ));
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
            child: Column(
              children: [

                SizedBox(height: MediaQuery.of(context).size.height * 0.3),

                Image.asset('images/collab.png', height: 100),

                SizedBox(height: 10),

                Text("Ready to meet your desired partner?"),

                SizedBox(height: 30),

                ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: Column(
                      children: [

                        RaisedButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Register())
                            );
                          },
                          color: Colors.black,
                          child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),

                        SizedBox(height: 10),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login())
                            );
                          },
                          child: Text("I have an account", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline)),
                        )

                      ],

                    )
                ),
              ],
            )
        )
    );
  }
}