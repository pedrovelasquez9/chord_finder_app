import 'package:chord_finder/views/AboutTab.dart';
import 'package:chord_finder/views/HowToUseTab.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:flutter/material.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: "Acerca de"),
  Tab(text: 'Cómo usar la app')
];

class CustomTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: 1000,
          child: DefaultTabController(
              length: tabs.length,
              child: Container(
                height: 1000,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                          indicatorColor: Color.fromRGBO(94, 35, 121, 1),
                          indicatorWeight: 4,
                          tabs: tabs.map((Tab tab) {
                            return Center(
                              child: CustomText(
                                '${tab.text!}',
                                Colors.white,
                              ),
                            );
                          }).toList()),
                      height: 40,
                    ),
                    Expanded(
                      child: TabBarView(children: [AboutTab(), HowToUseTab()]),
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}
