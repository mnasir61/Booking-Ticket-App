import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class TicketTabsWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketTabsWidget({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(2.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
              child: Center(
                child: Text(
                  firstText,
                  style: Styles.headLinesStyle4.copyWith(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50), bottomRight: Radius.circular(50))),
              child: Center(
                child: Text(
                  secondText,
                  style: Styles.headLinesStyle4.copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
