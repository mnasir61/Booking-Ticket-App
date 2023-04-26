import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon,color: Styles.colorGray1),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
