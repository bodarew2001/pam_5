import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';

import '../page/ProductProfil.dart';

class BestSelling extends StatefulWidget {
  const BestSelling({super.key,required this.title,
    required this.subtitle, required this.image,
    required this.price, required this.getId });
 // final Product product;
  final String title;
  final String subtitle;
  final String image;
  final String price;
  final Function()? getId;


  @override
  State<BestSelling> createState() => _BestSellingState();
}

class _BestSellingState extends State<BestSelling> {

  // void initState() {
  //   Get.put(BestSellingController());
  //   BestSellingController usersController = Get.find();
  //   usersController.getCategories();
  //   super.initState();
  // }

  @override
  void initState() {

    Get.put(ApiController());
    Get.put(DetailController());

    ApiController apicontroller = Get.find();
     super.initState();
    //fetchPosts();
  }


  Color _favIconColor =  const Color(0xff000000);


  @override
  Widget build(BuildContext context) {
     ApiController apicontroller = Get.find();
    DetailController aboutProductController = Get.find();


    return ElevatedButton(
      onPressed:
          widget.getId,

      style: ElevatedButton.styleFrom(
            backgroundColor:const Color(0xffffffff),
        elevation: 10,
            ),
        child: Column(
        children: [

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 10, 8),
                      child: Container(
                        width: 164,
                        height: 240,
                        //alignment: Alignment.topRight,
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            //fit: BoxFit.fitHeight,
                            fit: BoxFit.fill,
                            image: NetworkImage(widget.image),
                          ),
                          //color: Colors.red,
                          borderRadius: const BorderRadius.all(Radius.circular(4.0)
                          ),
                        ),

                      ),

                  ),
                  Positioned(
                    top: 15,
                    left: 110,
                    //width: 30,
                   // height: 30,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:  Colors.transparent,
                           // backgroundColor:  Colors.transparent,


                          ),



                          child: IconButton(
                            icon: const Icon(Icons.star_border),
                            color: _favIconColor,
                            tooltip: 'Add to favorite',
                            onPressed: () {
                              setState(() {
                                if(_favIconColor ==  const Color(0xff000000)){
                                  _favIconColor = Colors.red;
                                }else{
                                  _favIconColor =  const Color(0xff000000);
                                }
                              });
                            },
                            splashRadius: 5,
                          ),


                            // child: IconButton(
                            //   icon: Icon(
                            //     Icons.star_border,
                            //     color: Color(0xff000000),
                            //   ),
                            //   color: Colors.white,
                            //   onPressed: () => Navigator.of(context)
                            //       .push(MaterialPageRoute(builder: (context) => const star())),
                            //   splashColor: Colors.yellowAccent,
                            //   splashRadius: 50,
                            //   highlightColor: Colors.red,
                            //   //icon: Icon(Icons.code),
                            // ),





                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 164,
                height: 24,
                child: Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Text',
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(
                width: 164,
                height: 16,
                child: Text(
                  widget.subtitle,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF Pro Text',
                    color: Color(0xff929292),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: SizedBox(
                  width: 164,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.only(right: 4),
                        child:  Text(
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
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Text',
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
