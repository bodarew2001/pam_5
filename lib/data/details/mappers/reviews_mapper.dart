

import '../../../domain/details/entities/index.dart';
import '../models/index.dart';

class ReviewMapper {
  static DomainReview mapApiToModel(ReviewApiDto input) {
    return DomainReview(
        id: input.id,
        image: input.image,
        modifiedAt: input.modifiedAt,
        createdAt: input.createdAt,
        firstName: input.firstName,
        rating: input.rating,
        lastName: input.lastName,
        message: input.message,
    );
  }
}
