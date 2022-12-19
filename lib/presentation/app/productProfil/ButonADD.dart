import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';

class buttonADD extends StatefulWidget {
  const buttonADD({Key? key, required this.price}) : super(key: key);

  final String price;

  @override
  State<buttonADD> createState() => _buttonADDState();
}

class _buttonADDState extends State<buttonADD> {

  @override
  void initState() {

    Get.put(ApiController());
    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
   // controller.readJsonFile();
    super.initState();
    //fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
    return    ButtonBar(
      children: [
        Container(
            height: 84,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0), //(x,y)
                  blurRadius: 25.0,
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('PRICE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff929292),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Text(
                                '\$',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF Pro Text',
                                  color: Color(0xff00C569),
                                ),
                              ),
                            ),
                            Text(
                              widget.price,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff00C569),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 52,
                    width: 146,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // <-- Radius
                        ),


                        backgroundColor: const Color(0xff00C569),
                      ),
                      child: const Text('ADD',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
      ]
    );



  }
}
