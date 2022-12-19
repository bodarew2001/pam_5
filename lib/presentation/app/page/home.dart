import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../controller/api_categorie_controller.dart';
import '../controller/delail_controller.dart';
import '../widget/Best Selling.dart';
import '../widget/SeeAll.dart';
import '../widget/button_categories.dart';
import 'ProductProfil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final scrollController = ScrollController();
  bool isLoadingMore = false;

  @override
  void initState() {
    Get.put(ApiController());
    Get.put(DetailController());
    final ApiController apiController = Get.find();
    apiController.getProducts();

    scrollController.addListener(_scrollListener);
    super.initState();
    //fetchPosts();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> _scrollListener() async {
    final ApiController apiController = Get.find();
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !apiController.isLoadMore.value) {
      await apiController.getProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    //HomeController controller = Get.find();
    ApiController apicontroller = Get.find();
    DetailController aboutProductController = Get.find();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(),
        backgroundColor: Colors.transparent,

        elevation: 0,
        title: Container(
          child: const Text(
            'Categories',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 90,
              child: ListView.builder(
                  itemCount: apicontroller.products.length,
                  //itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ApiController apicontroller = Get.find();

                    DetailController aboutProductController = Get.find();
                    return ButtonCategories(
                      //category: controller.categories[index],
                      icon: apicontroller.products[index].category.icon,
                      name: apicontroller.products[index].category.name,
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Container(
              height: 24,
              child: ListView(

                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SeeAll(),
                ],
              ),
            ),
          ),
          Obx(
            () => Container(
              child: Expanded(
                child: StaggeredGridView.countBuilder(
                  controller: scrollController,
                  crossAxisCount: 2,
                  itemCount: apicontroller.products.length,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 8,
                  itemBuilder: (context, index) {
                    final ApiController apicontroller = Get.find();
                    final DetailController aboutProductController = Get.find();
                    return BestSelling(
                      title: apicontroller.products[index].name,
                      subtitle: apicontroller.products[index].details,
                      image: apicontroller.products[index].mainImage,
                      price: apicontroller.products[index].price.toString(),
                      getId: //aboutProductController.apiRead("${apicontroller.products[index].id}");
                          () async {
                        await aboutProductController
                            .getDetails(apicontroller.products[index].id);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProductProfil()));

                        print("idul este ${apicontroller.products[index].id}");
                      },
                    );
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
