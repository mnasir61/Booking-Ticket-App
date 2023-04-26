import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class ColumnLayoutWidget extends StatelessWidget {
  final bool? isColor;
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;

  const ColumnLayoutWidget(
      {Key? key, this.isColor, required this.alignment, required this.firstText, required this.secondText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment:alignment,
      children: [
        Text(firstText, style: Styles.headLinesStyle3.copyWith(color: Colors.black),),
        Text(secondText, style: Styles.headLinesStyle4.copyWith(),),
      ],
    );
  }
}
