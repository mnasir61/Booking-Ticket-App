import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class FullTicketViewWidget extends StatelessWidget {
  const FullTicketViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      // height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            //Showing the blue part of the ticket card
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLinesStyle3,
                      ),
                      Expanded(child: Container()),
                      _ticketDecorationPartWidget(),
                      Expanded(
                          child: Stack(
                        children: [
                          Center(
                            child: Transform.rotate(
                              angle: 0.5 * 3.141592653589793,
                              child: Icon(
                                Icons.airplanemode_on_rounded,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("The width is: ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )),
                      _ticketDecorationPartWidget(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: Styles.headLinesStyle3,
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New-York",
                        style: Styles.headLinesStyle4,
                      ),
                      Text(
                        "8H 30M",
                        style: Styles.headLinesStyle3.copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        "Landon",
                        style: Styles.headLinesStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Showing the Orange part of the ticket card
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  // SizedBox(
                  //   width: 10,
                  //   height: 20,
                  //   child: DecoratedBox(
                  //     decoration: BoxDecoration(
                  //       color: Styles.bgColor,
                  //       borderRadius: BorderRadius.only(
                  //         topRight: Radius.circular(10),
                  //         bottomRight: Radius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                height: 1,
                                width: 5,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  //   height: 20,
                  //   child: DecoratedBox(
                  //     decoration: BoxDecoration(
                  //       color: Styles.bgColor,
                  //       borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(10),
                  //         bottomLeft: Radius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            //bottom part of the orange ticket card
            Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(25),
                  //   bottomRight: Radius.circular(25),
                  // ),
                  color: Colors.white),
              padding: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 May",
                            style: Styles.headLinesStyle3,
                          ),
                          Text(
                            "Date",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "08:00 AM",
                            style: Styles.headLinesStyle3,
                          ),
                          Text(
                            "Departure time",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: Styles.headLinesStyle3,
                          ),
                          Text(
                            "Number",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            _ticketParts(
              text1: "Flutter Bloc",
              text2: "Passenger",
              text3: "5221 294719",
              text4: "Passport",
            ),
            SizedBox(height: 1),
            _ticketParts(
                text1: "0055 444 77147",
                text2: "Number of E-Ticket",
                text3: "B2SG28",
                text4: "Booking code"),
            SizedBox(height: 1),
            _ticketParts(
                imagePath: ("assets/images/visa.png"),
                rowText: " ***3238",
                text2: "Payment Method",
                text3: "\$249.99",
                text4: "Price"),
            SizedBox(height: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: "https://github.com/mnasir61",
                  drawText: false,
                  color: Styles.textColor,
                  height: 70,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _ticketDecorationPartWidget() {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.blueAccent),
      ),
    );
  }

  _ticketParts({
    String? text1,
    required String text2,
    required String text3,
    required String text4,
    String? imagePath,
    String? rowText,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (imagePath != null)
                    Image.asset(
                      imagePath,
                      scale: 110,
                    ),
                  if (rowText != null)
                    Text(
                      rowText,
                      style: Styles.headLinesStyle3,
                    ),
                ],
              ),
              if (text1 != null) Text(text1, style: Styles.headLinesStyle3),
              Text(
                text2,
                style: Styles.headLinesStyle4,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text3, style: Styles.headLinesStyle3),
              Text(
                text4,
                style: Styles.headLinesStyle4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
