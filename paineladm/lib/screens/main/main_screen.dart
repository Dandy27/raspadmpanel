import 'package:flutter/material.dart';
import 'package:paineladm/screens/components/side_menu.dart';
import 'package:paineladm/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Expanded(
                // default fles = 1
                // and it takes 1/6 part of the screen
                child: const SideMenu()),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
