
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:either_dart/src/either.dart';

import '../../../domain/details/entities/index.dart';
import '../../../domain/details/use_cases/get_details_use_case.dart';

class DetailController extends GetxController {
  Rxn<ProductDetailEntity> details = Rxn<ProductDetailEntity>();

  GetDetailsUseCase getDetailsUseCase = GetIt.instance.get<GetDetailsUseCase>();

  Future<void> getDetails(int id) async {
    var response = await getDetailsUseCase.call(id);
    response.fold((left) {
      print("error$left");
    }, (right) {
      details.value = right;
    });
    print("detail controller${details.value?.id}");

  }

}
