import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  final String largeText;
  final String smallText;

  const DoubleTextWidget({Key? key, required this.largeText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          largeText,
          style: Styles.headLinesStyle2,
        ),
        InkWell(
          onTap: () {
            print("you are tapped");
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
