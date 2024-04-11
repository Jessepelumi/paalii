import 'package:baby_hub/features/shop/screens/reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text("4.8",
                style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(text: "5", value: 0.6),
              RatingProgressIndicator(text: "4", value: 0.7),
              RatingProgressIndicator(text: "3", value: 0.4),
              RatingProgressIndicator(text: "2", value: 0.3),
              RatingProgressIndicator(text: "1", value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}