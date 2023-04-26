import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:booking_tickets_app/features/home/widgets/hotel_screen_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/ticket_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                //first main column start from here
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning",
                              style: Styles.headLinesStyle3,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Book Tickets",
                              style: Styles.headLinesStyle1,
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Styles.bgColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 4,
                                  offset: Offset(0, 0),
                                  spreadRadius: .25,
                                )
                              ]),
                          child: Icon(
                            Icons.flight_outlined,
                            color: Styles.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //Search bar
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_search_filled,
                            color: Styles.colorGreySameAsText,
                          ),
                          Text(
                            "Search",
                            style: Styles.headLinesStyle4,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Flights",
                          style: Styles.headLinesStyle2,
                        ),
                        InkWell(
                          onTap: () {
                            print("you are tapped");
                          },
                          child: Text(
                            "View all",
                            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 170,
              child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TicketViewWidget();
                },
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //2nd main column start from here
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotels",
                        style: Styles.headLinesStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print("you are tapped");
                        },
                        child: Text(
                          "View all",
                          style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 270,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HotelScreenWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
