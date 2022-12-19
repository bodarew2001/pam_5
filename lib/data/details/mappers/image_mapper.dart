

import '../../../domain/details/entities/index.dart';
import '../models/index.dart';

class ImageMapper {
  static DomainImage mapApiToModel(ImageApiDto input) {
    return DomainImage(
        image: input.image
    );
  }
}
