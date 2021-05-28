import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                // default fles = 1
                // and it takes 1/6 part of the screen
                child: SingleChildScrollView(
                  child: Column(
                              children: [
                  DrawerHeader(
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Dashboard',
                    svgSrc: 'assets/icons/menu_dashbord.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Transaction',
                    svgSrc: 'assets/icons/menu_tran.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Task',
                    svgSrc: 'assets/icons/menu_task.svg',
                          
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Documents',
                    svgSrc: 'assets/icons/menu_doc.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Store',
                    svgSrc: 'assets/icons/menu_store.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Notification',
                    svgSrc: 'assets/icons/menu_notification.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Profile',
                    svgSrc: 'assets/icons/menu_profile.svg',
                  ),
                  DrawerListTile(
                    press: () {},
                    title: 'Settings',
                    svgSrc: 'assets/icons/menu_setting.svg',
                  ),
                              ],
                            ),
                )),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.svgSrc,
    required this.press,
    required this.title,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
