import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:booking_tickets_app/features/search/widgets/app_icon_text.dart';
import 'package:booking_tickets_app/features/search/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLinesStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20),
          //Category Widget
          _categoryWidget(context),
          SizedBox(height: 25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 15),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 15),
          Container(
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.headLinesStyle4.copyWith(color: Colors.white),
              ),
            ),
            height: 45,
            width: size.width,
            decoration: BoxDecoration(
              color: Styles.colorDarkBlue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 30),
          DoubleTextWidget(largeText: "Hotels", smallText: "View all"),
          // SizedBox(height: 10),
          MasonryGridView.builder(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            itemCount: 7,
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/hotel_images/h${index + 1}.jpg",fit: BoxFit.cover,),
              );
            },
          ),
        ],
      ),
    );
  }

  //Category Widget
  _categoryWidget(BuildContext context) {
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
                  "Airline Tickets",
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
                  "Hotels",
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
