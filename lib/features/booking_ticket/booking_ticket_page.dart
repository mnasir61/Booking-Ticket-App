import 'package:booking_tickets_app/features/booking_ticket/widgets/ticket_tabs_widget.dart';
import 'package:booking_tickets_app/features/booking_ticket/widgets/full_ticket_view_widget.dart';
import 'package:booking_tickets_app/features/booking_ticket/widgets/ticket_view_widget.dart';
import 'package:booking_tickets_app/features/common/theme/app_layout.dart';
import 'package:booking_tickets_app/features/common/theme/color_styles.dart';
import 'package:flutter/material.dart';

class BookingTicketPage extends StatelessWidget {
  const BookingTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            children: [
              SizedBox(height: 40),
              Text(
                "Tickets",
                style: Styles.headLinesStyle1.copyWith(fontSize: 35),
              ),
              SizedBox(height: 20),
              //Category Widget
              TicketTabsWidget(firstText: "Upcoming", secondText: "Previous"),
              SizedBox(height: 20),
              FullTicketViewWidget(),
              SizedBox(height: 20),
              TicketViewWidget(),
            ],
          ),
          _stuckCircle(left: 22, top: 295),
          _stuckCircle(right: 22, top: 295),
        ],
      ),
    );
  }

  _stuckCircle({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Styles.textColor, width: 2)),
        child: CircleAvatar(maxRadius: 4, backgroundColor: Styles.textColor),
      ),
    );
  }
}
