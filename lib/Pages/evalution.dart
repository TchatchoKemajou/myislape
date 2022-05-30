import 'package:flutter/material.dart';
import 'package:myislape/Pages/examens/checkercontinus.dart';
import 'package:myislape/Pages/examens/normalsession.dart';
import 'package:myislape/Pages/examens/rattrapage.dart';
import 'package:myislape/generated/l10n.dart';

import '../constantes.dart';

class Evaluation extends StatefulWidget {
  const Evaluation({Key? key}) : super(key: key);

  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
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
            // Tab(
            //   child: Text(
            //     "Controle",
            //     style: TextStyle(
            //         fontFamily: 'PopBold'
            //     ),
            //   ),
            // ),
            Tab(
              child: Text(
                S.of(context).normal,
                style: const TextStyle(
                    fontFamily: 'PopBold'
                ),
              ),
            ),
            Tab(
              child: Text(
                S.of(context).rattrapage,
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
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: const [
          //CheckerContinue(),
          NormalSession(),
          LastSession(),
        ],
        controller: _tabController,
      ),
    );
  }
}
