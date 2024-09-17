import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color color;

  const StarRating(
      {super.key,
        this.starCount = 5,
        this.rating = .0,
        this.onRatingChanged,
        this.color = AppColors.starRated});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(
        Icons.star_border,
        color: Colors.grey,
        size: 12,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color ?? Colors.orange,
        size: 12,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? Colors.orange,
        size: 12,
      );
    }
    return InkResponse(
      onTap: onRatingChanged == null
          ? null
          : () => onRatingChanged!.call(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
        List.generate(starCount, (index) => buildStar(context, index)));
  }
}