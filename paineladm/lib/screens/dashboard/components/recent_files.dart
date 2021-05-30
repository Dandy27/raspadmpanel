import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paineladm/models/RecentFile.dart';

import '../../../constants.dart';


class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Recents Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
              width: double.infinity,
              // ignore: prefer_const_literals_to_create_immutables
              child: DataTable(
                  horizontalMargin: 0,
                  columnSpacing: defaultPadding,
                  // ignore: prefer_const_literals_to_create_immutables
                  columns: [
                    const DataColumn(label: Text("File Name")),
                    const DataColumn(label: Text("Date")),
                    // ignore: prefer_const_constructors
                    DataColumn(label: const Text("Size")),
                  ],
                  rows: List.generate(demoRecentFiles.length,
                      (index) => recentFileDataRow(demoRecentFiles[index]))))
        ]));
  }
}
 DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title),
          )
        ],
      )),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ]);
  }