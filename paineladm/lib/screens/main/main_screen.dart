import 'package:flutter/material.dart';
import 'package:paineladm/controllers/MenuController.dart';
import 'package:paineladm/screens/components/side_menu.dart';
import 'package:paineladm/screens/dashboard/dashboard_screen.dart';
import 'package:paineladm/screens/main/responsive.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            if (Responsive.isDesktop(context))
              const Expanded(
                  // default fles = 1
                  // and it takes 1/6 part of the screen
                  child: SideMenu()),
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
