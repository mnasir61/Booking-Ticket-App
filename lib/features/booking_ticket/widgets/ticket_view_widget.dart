import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class TicketViewWidget extends StatelessWidget {
  const TicketViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16,),
        child: Column(
          children: [
            //Showing the blue part of the ticket card
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Styles.colorDarkBlue),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLinesStyle3.copyWith(color: Colors.white),
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
                                color: Colors.white,
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
                                        decoration: BoxDecoration(color: Colors.white),
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
                        style: Styles.headLinesStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New-York",
                        style: Styles.headLinesStyle4.copyWith(color: Colors.white),
                      ),
                      Text(
                        "8H 30M",
                        style: Styles.headLinesStyle3.copyWith(color: Colors.white),
                      ),
                      Text(
                        "Landon",
                        style: Styles.headLinesStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Showing the Orange part of the ticket card
            Container(
              color: Styles.colorDeepOrange,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
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
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //bottom part of the orange ticket card
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Styles.colorDeepOrange),
              padding: EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 May",
                            style: Styles.headLinesStyle3.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Date",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "08:00 AM",
                            style: Styles.headLinesStyle3.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Departure time",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: Styles.headLinesStyle3.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Number",
                            style: Styles.headLinesStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}
