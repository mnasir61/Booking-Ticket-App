import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class HotelScreenWidget extends StatelessWidget {
  const HotelScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.6,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Styles.colorGray3,
              blurRadius: 4,
              spreadRadius:.5,
            ),
          ],
        ),
        // padding: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Styles.colorGray3,
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  // color: Styles.primaryColor,
                  image: DecorationImage(fit: BoxFit.cover,
                    image: AssetImage("assets/images/hotel2.png",),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text("Open Space",style: Styles.headLinesStyle2.copyWith(color:Colors.grey.shade700),),
              Text("Landon",style: Styles.headLinesStyle3,),
              Text("\$40 Night",style: Styles.headLinesStyle3.copyWith(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
