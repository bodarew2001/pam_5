
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';


class ImageProfil extends StatefulWidget {
  const ImageProfil({super.key, required this.mainImage });

  final String mainImage;

  @override
  State<ImageProfil> createState() => _ImageProfilState();
}

class _ImageProfilState extends State<ImageProfil> {
  @override
  void initState() {

    Get.put(ApiController());
    Get.put(DetailController());
     ApiController apicontroller = Get.find();
     super.initState();
    //fetchPosts();
  }

  Color _favIconColor =  Color(0xff000000);
  @override
  Widget build(BuildContext context) {
     ApiController apicontroller = Get.find();
     DetailController aboutProductController = Get.find();
    return Container(
     child: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            //alignment: Alignment.topRight,
            decoration:  BoxDecoration(
             // color: Colors.red,
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "${aboutProductController.details.value?.mainImage}"
                  //widget.mainImage
                ),
              ),
              //color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(100.0)
              ),
            ),

          ),
          Positioned(
            top: 65,
            left: 5,
            //width: 30,
            // height: 30,
            child: Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        icon:  Icon(Icons.chevron_left,
                          size: 30,),
                        splashRadius: 5,
                        color: Color(0xff000000),
                        onPressed: () => Navigator.pop(context)),

                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 300,
            //width: 30,
            // height: 30,
            child: Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:  Color(0xffFFFFFF),
                      // backgroundColor:  Colors.transparent,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.star_border),
                      color: _favIconColor,
                      tooltip: 'Add to favorite',
                      onPressed: () {
                        setState(() {
                          if(_favIconColor ==  Color(0xff000000)){
                            _favIconColor = Colors.red;
                          }else{
                            _favIconColor =  Color(0xff000000);
                          }
                        });
                      },
                      splashRadius: 5,
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
