import 'package:booking_tickets_app/features/booking_ticket/booking_ticket_page.dart';
import 'package:booking_tickets_app/features/home/home_page.dart';
import 'package:booking_tickets_app/features/profile/profile_page.dart';
import 'package:booking_tickets_app/features/search/search_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex=0;
  final List<Widget> _widgetOptions = [
    HomePage(),
    SearchPage(),
    BookingTicketPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        type:BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "home",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "Ticket Booking",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            label: "Ticket Booking",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
            ),
          ),
        ],
      ),
    );
  }
}
