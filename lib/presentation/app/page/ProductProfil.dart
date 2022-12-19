import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';
import '../productProfil/ButonADD.dart';
import '../productProfil/Details.dart';
import '../productProfil/ImageProfil.dart';
import '../productProfil/review.dart';


class ProductProfil extends StatefulWidget {
  const ProductProfil({Key? key}) : super(key: key);

  @override
  State<ProductProfil> createState() => _ProductProfilState();
}

class _ProductProfilState extends State<ProductProfil> {


  @override
  void initState() {
    //Get.lazyPut(() => HomeController());
    //Get.put(HomeController());
    Get.put(ApiController());
    Get.put(DetailController());
    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
    //controller.readJsonFile();

    super.initState();
    //fetchPosts();
  }

  @override
  Widget build(BuildContext context) {

    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
    DetailController aboutProductController = Get.find();
    return  Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverList(delegate: SliverChildBuilderDelegate(
             childCount: 1,
              (BuildContext context, int index) {
                final ApiController apicontroller = Get.find();
                final DetailController aboutProductController = Get.find();
                return  Column(
                  children: [
                    Container(
                      height: 176,
                      width: 176,
                      child:  ImageProfil(
                        mainImage: "${aboutProductController.details.value?.mainImage}",
                      ),
                    ),
                    Container(
                      height: 320,
                      //width: 375,
                      child:  Details(
                        name: "${aboutProductController.details.value?.name}",
                        size: "${aboutProductController.details.value?.size}",
                        colour: "${aboutProductController.details.value?.colour}",
                        details: "${aboutProductController.details.value?.details}",
                      ),
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height,
                    //   child: Review(),),

                  ],
                );

             },
           ),),

            SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 1,
                 (BuildContext context, int index) {
               return Container(
                   height: MediaQuery.of(context).size.height,
                   child: Review(),);

             },
           ),),
         ],
       ),


      bottomNavigationBar:  buttonADD(
         price: "${aboutProductController.details.value?.price}",
       ),
    );
  }
}
