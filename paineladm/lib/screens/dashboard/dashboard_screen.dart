import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:paineladm/constants.dart';
import 'package:paineladm/models/RecentFile.dart';

import 'components/header.dart';
import 'components/my_fiels.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              const Header(),
              const SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(children: [
                        const MyFiels(),
                        const SizedBox(height: defaultPadding),
                        RecentFiles(),
                      ])),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  const Expanded(flex: 2, child: StorageDetails())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

 
}
