import '../../../domain/products/entities/index.dart';
import '../models/index.dart';
import 'category_mapper.dart';

class ProductMapper {
  static DomainProduct mapApiToModel(ProductApiDto input) {
    return DomainProduct(
      name: input.name,
      colour: input.colour,
      size: input.size,
      mainImage: input.mainImage,
      price: input.price,
      details: input.details,
      id: input.id,
      category: CategoryMapper.mapApiToModel(input.category),
    );
  }
}
