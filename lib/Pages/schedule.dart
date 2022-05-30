import 'package:flutter/material.dart';
import 'package:myislape/constantes.dart';
import 'package:myislape/generated/l10n.dart';
import 'package:pie_menu/pie_menu.dart';
import 'package:provider/provider.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:share_plus/share_plus.dart';

import '../Providers/LanguageChangeProvider.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  bool _menuVisible = false;
  @override
  Widget build(BuildContext context) {
    return PieCanvas(
      onMenuToggle: (menuVisible) {
        setState(() => _menuVisible = menuVisible);
      },
      child: Scaffold(
        appBar: CalendarAgenda(
          locale: "fr",
          appbar: true,
          leading: const Text(
            "MyIslape",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PopRegular',
              fontSize: 20,
            ),
          ),
          selectedDayPosition: SelectedDayPosition.center,
          backgroundColor: firstColor,
          selectedDateColor: color2,
          dateColor: Colors.white,
          calendarEventSelectedColor: secondColor,
          calendarEventColor: secondColor,
          onDateSelected: (value) => print(value),
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)),
          lastDate: DateTime.now().add(Duration(days: DateTime.daysPerWeek - DateTime.now().weekday)),
         // events: [],
        ),
        body: planningOfDay(),
      ),
    );
  }

  planningOfDay(){
    return ListView.builder(
      //padding: EdgeInsets.only(top: kDefaultPadding),
        physics: _menuVisible
            ? const NeverScrollableScrollPhysics()
            : const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            PieMenu(
              actions: [
                PieAction(
                  iconData: Icons.save_outlined,
                  onSelect: () => print('Like action selected.'),
                  tooltip: '',
                  buttonTheme: const PieButtonTheme(
                    backgroundColor: secondColor,
                  )
                ),
                PieAction(
                  tooltip: '',
                  iconData: Icons.share,
                  onSelect: () => Share.share('check out my website https://example.com', subject: 'Cliquer pour suivre le lien!'),
                    buttonTheme: const PieButtonTheme(
                      backgroundColor: color3,
                    )
                ),
                PieAction(
                  tooltip: '',
                  iconData: Icons.copy,
                  onSelect: () => print('Like action selected.'),
                    buttonTheme: const PieButtonTheme(
                      backgroundColor: color1,
                    )
                ),
              ],
              child: Card(
                margin: const EdgeInsets.only(left: kCardPadding, right: kCardPadding, bottom: kCardPadding),
                elevation: 5.0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: kCardPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "10 : 30",
                              style: TextStyle(
                                color: color2,
                                fontFamily: 'PopRegular'
                              ),
                            ),
                            Text(
                              "12 : 30",
                              style: TextStyle(
                                  color: color2,
                                  fontFamily: 'PopRegular'
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: 5, bottom: 5),
                        child: Container(
                          height: double.infinity,
                          width: 2,
                          color: secondColor,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Programmation logique",
                            style: TextStyle(
                                color: color2,
                                fontFamily: 'PopRegular',
                              fontSize: 16
                            ),
                          ),
                          Text(
                            "Mr Mezah",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'PopRegular'
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
    );
  }
}
