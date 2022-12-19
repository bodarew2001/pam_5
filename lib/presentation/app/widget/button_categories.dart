import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';
 class ButtonCategories extends StatefulWidget {
  const ButtonCategories({super.key, required this.icon, required this.name});


  final String icon;
  final String name;


  @override
  State<ButtonCategories> createState() => _ButtonCategoriesState();
}

class _ButtonCategoriesState extends State<ButtonCategories> {

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
    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
    DetailController aboutProductController = Get.find();

    return   Center(


              child: Column(
                children: [
                  Container(
                    child: CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(widget.icon),
                          ),
                        ),
                        radius: 30,
                        backgroundColor: const Color(0xffffffff)),
                    // elevation: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Container(
                      //width: 60,
                      height: 16,
                      child: Text(
                        widget.name,
                        maxLines: 1,
                        //softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),




    );





  }
}




