import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:myislape/Pages/evenements/actuality.dart';
import 'package:myislape/Pages/evalution.dart';
import 'package:myislape/Pages/library.dart';
import 'package:myislape/Pages/profile.dart';
import 'package:myislape/Pages/schedule.dart';
import 'package:myislape/Pages/schoolevents.dart';
import 'package:myislape/constantes.dart';
import 'package:myislape/generated/l10n.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  List<Widget> pages = [];
  int _currentPage = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [const Library(), const Schedule(), const SchoolEvents(), const Evaluation(), const Profile()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
        bottomNavigationBar: StyleProvider(
          style: Style(),
          child: ConvexAppBar(
            items: [
              TabItem(icon: Icons.local_library, title: S.of(context).logitech),
              TabItem(icon: Icons.event_note, title: S.of(context).planning),
              TabItem(icon: Icons.home, title: S.of(context).accueil),
              TabItem(icon: Icons.note_add, title: S.of(context).exams),
              TabItem(icon: Icons.people, title: S.of(context).profile),
            ],
            initialActiveIndex: 2,//optional, default as 0
            onTap: (int i) => setState(() => _currentPage = i),
            color: Colors.grey,
            activeColor: firstColor,
            backgroundColor: Colors.white,
            //height: 40,
            //style: TabStyle.flip,
          ),
        )
    );
  }
}

class Style extends StyleHook {
  @override
  double get activeIconSize => 30;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 15;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(
        fontSize: 12,
        color: color,
      fontFamily: 'PopRegular'
    );
  }
}
