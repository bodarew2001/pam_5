

import 'package:get_it/get_it.dart';

import '../data/details/data_source/details_api_data_source.dart';
import '../data/details/repository/details_repository_impl.dart';
import '../data/products/data_source/products_api_data_source.dart';
import '../data/products/repository/products_repository_impl.dart';
import '../domain/details/repositories/detail_repository.dart';
import '../domain/products/repositories/product_repository.dart';

Future initData() async {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<ProductApiDataSource>(() => ProductApiDataSourceImpl());
  getIt.registerLazySingleton<DetailsApiDataSource>(() => DetailsApiDataSourceImpl());

 //getIt.registerLazySingleton<ProductApiDataSource>(() => ProductApiDataSourceImpl());


  getIt.registerLazySingleton<ProductRepository>(
          () => ProductRepositoryImpl(getIt.get<ProductApiDataSource>()));

  getIt.registerLazySingleton<DetailRepository>(
          () =>  DetailRepositoryImpl(getIt.get<DetailsApiDataSource>()));
}
