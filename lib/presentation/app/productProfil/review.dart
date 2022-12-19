import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';

class Review extends StatefulWidget {

  const Review({super.key, });

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {

  @override
  void initState() {

    Get.put(ApiController());
    Get.put(DetailController());

    ApiController apicontroller = Get.find();
     super.initState();
    //fetchPosts();
  }


  @override
  Widget build(BuildContext context) {
     ApiController apicontroller = Get.find();
    DetailController aboutProductController = Get.find();

    return   ListView.builder(
    physics:  NeverScrollableScrollPhysics(),
    //primary: false,
       itemCount: aboutProductController.details.value?.reviews?.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,

                  decoration:  BoxDecoration(
                    image:  DecorationImage(
                      fit: BoxFit.fitWidth,

                      image: NetworkImage(
                              "${aboutProductController.details.value?.reviews?[index].image}",
                        //widget.mainImage
                      ),
                    ),
                    //color: Colors.blue,
                    borderRadius: const BorderRadius.all(Radius.circular(25)
                    ),
                  ),

                ),

                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Column(
                    children: [
                      Container(
                        //height: 18,
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children:  [
                                Text("${aboutProductController.details.value?.reviews?[index].firstName}",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Text(" ${aboutProductController.details.value?.reviews?[index].lastName}",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children:  [
                                const Text("Rating  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Text("${aboutProductController.details.value?.reviews?[index].rating}",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),

                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 32,
                        width: 245,
                        child:  Text(
                          "${aboutProductController.details.value?.reviews?[index].message}",
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
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
              ],
            ),
          );
        },
      );






  }
}
