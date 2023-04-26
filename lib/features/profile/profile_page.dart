import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:booking_tickets_app/features/profile/widgets/column_layout_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 70,
                child: Image.asset(
                  "assets/images/app_logo.png",
                  // scale: 10,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Ticket", style: Styles.headLinesStyle2),
                  Text("New York", style: Styles.headLinesStyle4),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration:
                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text("Premium status"),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.headLinesStyle4.copyWith(color: Styles.primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 9),
          Divider(color: Colors.grey.shade300),
          SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.colorDarkBlue,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -45,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Colors.blueAccent)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style: Styles.headLinesStyle2.copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLinesStyle2
                              .copyWith(fontSize: 16, color: Colors.white.withOpacity(.8)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Accumulated miles",
            style: Styles.headLinesStyle2,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [BoxShadow(spreadRadius: 1, blurRadius: 1, color: Colors.grey.shade200)]),
            child: Column(
              children: [
                SizedBox(height: 15),
                Text(
                  "192802",
                  style: Styles.textStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 40),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLinesStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2022",
                      style: Styles.headLinesStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.start,
                      firstText: "23 042",
                      secondText: "Miles",
                    ),
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.end,
                      firstText: "Airline CO",
                      secondText: "Received from",
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.start,
                      firstText: "24",
                      secondText: "Miles",
                    ),
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.end,
                      firstText: "McDonal's",
                      secondText: "Received from",
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.start,
                      firstText: "52 340",
                      secondText: "Miles",
                    ),
                    ColumnLayoutWidget(
                      alignment: CrossAxisAlignment.end,
                      firstText: "Exuma",
                      secondText: "Received from",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print("tapped");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.headLinesStyle3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
