import 'package:flutter/material.dart';
import 'package:myislape/Pages/evenements/actuality.dart';
import 'package:myislape/Pages/evenements/annualevents.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:myislape/Pages/evenements/important.dart';
import 'package:myislape/generated/l10n.dart';

import '../constantes.dart';

class SchoolEvents extends StatefulWidget {
  const SchoolEvents({Key? key}) : super(key: key);

  @override
  State<SchoolEvents> createState() => _SchoolEventsState();
}

class _SchoolEventsState extends State<SchoolEvents> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        title: const Text(
          "MyIslape",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'PopRegular',
            fontSize: 20,
          ),
        ),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: color1,
          tabs: [
            Tab(
              child: Text(
                S.of(context).actualite,
                style: const TextStyle(
                    fontFamily: 'PopBold'
                ),
              ),
            ),
            Tab(
              child: Text(
                S.of(context).important,
                style: const TextStyle(
                    fontFamily: 'PopBold'
                ),
              ),
            ),
            Tab(
              child: Text(
                S.of(context).calendrier,
                style: const TextStyle(
                    fontFamily: 'PopBold'
                ),
              ),
            )
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        actions: [
          const Icon(Icons.add_box_outlined, color: Colors.white,),
          IconBadge(
            icon: const Icon(Icons.notifications_none),
            itemCount: 3,
            badgeColor: color1,
            maxCount: 99,
            top: 12,
            right: 12,
            itemColor: Colors.white,
            hideZero: true,
            onTap: () async{
            },
          )
        ],
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: const [
          Actuality(),
          ImportantPost(),
          AnnualEvents(),
        ],
        controller: _tabController,
      ),
    );
  }
}
