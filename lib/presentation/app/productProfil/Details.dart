import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';

class Details extends StatefulWidget {

  const Details({super.key,
    required this.name ,required this.size,
    required this.colour ,required this.details});

  final String name;
  final String size;
  final String colour;
  final String details;


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  void initState() {

    Get.put(ApiController());
    ApiController apicontroller = Get.find();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ApiController apicontroller = Get.find();
    return Container(

          child: Column(
            children: [

                Container(
                  width: 375,
                  //height: 36,
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize:  24,
                      fontFamily: 'SF Pro Text',
                      color: Color(0xff000000),
                    ),
                  ),
                ),

              Padding(
                padding:  EdgeInsets.fromLTRB(16, 10, 16, 0),
                child: Container(
                  //width: 375,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1.0, color: const Color(0xffEBEBEB)),
                          color: Color(0xffFfffff),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Row(
                           // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Text(
                                  ' Size',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  widget.size,
                                  maxLines: 1,
                                  //softWrap: false,
                                  overflow: TextOverflow.ellipsis,

                                  style:  const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),

                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),


                      ),


                      Container(
                        width: 140,
                        height: 40,


                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1.0, color: const Color(0xffEBEBEB)),
                          color: Color(0xffFfffff),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              const Text(
                                ' Colour',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                ),
                              ),
                                 Text(
                                    widget.colour,
                                    style:  const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff2F3135),
                                    ),
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Container(

                  height: 82,
                  //width: 375,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Details',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:8),
                        child: Text(
                          widget.details,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Container(
                  //height: 16,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Read More',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00C569),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 22, 0, 0),
                child: Container(
                  //height: 16,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Reviews',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0,16),
                child: Container(
                  //height: 16,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Write your',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00C569),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

    );
  }
}
