import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constantes.dart';

class AnnualEvents extends StatefulWidget {
  const AnnualEvents({Key? key}) : super(key: key);

  @override
  State<AnnualEvents> createState() => _AnnualEventsState();
}

class _AnnualEventsState extends State<AnnualEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dateEvents(),
        Expanded(
            child: eventList()
        )
      ],
    );
  }

  eventList(){
    return ListView.builder(
        itemBuilder: (context, index) {
          return Card();
        }
    );
  }
  dateEvents(){
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    );
  }
}
