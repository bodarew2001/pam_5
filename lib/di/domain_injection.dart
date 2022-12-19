
import 'package:get_it/get_it.dart';

import '../domain/details/repositories/detail_repository.dart';
import '../domain/details/use_cases/get_details_use_case.dart';
import '../domain/products/repositories/product_repository.dart';
import '../domain/products/use_cases/get_products_use_case.dart';

Future initDomain() async {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton(() =>  GetProductsUseCase(getIt.get<ProductRepository>()));
  getIt.registerLazySingleton<GetDetailsUseCase>(() =>  GetDetailsUseCase(getIt.get<DetailRepository>()));
}
