

import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

class star extends StatefulWidget {
  const star({Key? key}) : super(key: key);

  @override
  State<star> createState() => _starState();
}

class _starState extends State<star> {


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Star'),
      ),


      body: Center(
        child: Stack(
          children: [
            Container(


                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,


                    child: Column(
                      children: [



                           Container(
                              height: 220,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),

                            ),


                             Padding(
                               padding: const EdgeInsets.all(8.0),

                                child: Container(
                                  height: 520,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                  ),

                                ),

                             ),


                           Container(
                              height: 220,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),

                            ),


                      ],
                    ),



                ),


          ),

            Positioned(
              left: 15,
              top: 49,
              bottom: 30,
              right: 20,

              child: Container(
                  height: 22,
                  width: 30,
                  child: Text('data')
              ),
            ),
          ]
        ),
      ),
    );
  }
}


