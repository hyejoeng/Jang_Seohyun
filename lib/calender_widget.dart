
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {

  // 선택한 날
  DateTime? _selectedDay;

  DateTime _focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    // 만약에 년, 월, 일 이 같지 않다면
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;

        _focusedDay = focusedDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return TableCalendar(
      focusedDay: _focusedDay, // 현재 시간
      firstDay: DateTime(2023, 12, 1),
      lastDay: DateTime(2023, 12, 31),

      // 언어 설정
      locale: 'ko-KR',

      // 날짜 터치 설정
      onDaySelected: _onDaySelected,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),


      // onDaySelected: (selectedDay, focusedDay) {
      //   setState(() {
      //     this.selectedDay = selectedDay;
      //     this.focusedDay = selectedDay;
      //   });
      // },
      //
      // selectedDayPredicate: (DateTime date) {
      //   if (selectedDay == null) {
      //     return false;
      //   }
      //
      //   return date.year == selectedDay!.year &&
      //   date.month == selectedDay!.month &&
      //   date.day == selectedDay!.day;
      // },

      // header
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),

      // calendarStyle: CalendarStyle(
      //   // 평일
      //
      //   // 주말
      //   // weekendTextStyle:
      // ),

      // 사용자 지장
      calendarBuilders: CalendarBuilders(

        // 요일별 사용자 지정
        dowBuilder: (context, day) {
          if (day.weekday == DateTime.sunday) {
            return Center(
              child: Text(
                '일',
                style: TextStyle(color: Colors.red),
              ),
            );
          }

          if (day.weekday == DateTime.saturday) {
            return Center(
              child: Text(
                '토',
                style: TextStyle(color: Colors.blue),
              ),
            );
          }

          return null;
        },
      ),
    );
  }
}


