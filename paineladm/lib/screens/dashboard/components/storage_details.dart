import 'package:flutter/material.dart';
import 'package:paineladm/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import 'chart.dart';


class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius:
              BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Chart(),
          const StorageInfoCard(
            title: "Documents Files",
            svgSrc: "assets/icons/Documents.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 1329,
          ),
          const StorageInfoCard(
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
            amountOfFiles: "15.3GB",
            numOfFiles: 1329,
          ),
          const StorageInfoCard(
            title: "Others Files",
            svgSrc: "assets/icons/folder.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 1329,
          ),
          const StorageInfoCard(
            title: "Unknown Files",
            svgSrc: "assets/icons/unknown.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 1329,
          )
        ],
      ),
    );
  }
}
