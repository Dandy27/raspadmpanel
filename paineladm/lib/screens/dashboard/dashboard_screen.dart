import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:paineladm/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';

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
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: 500,
                        color: secondaryColor,
                      )),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  const Expanded(
                      flex: 2,
                      child:  StorageDetails())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
