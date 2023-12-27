// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

// _kEventSource 라는 이름의 맵을 생성하는 코드
// 이벤트의 날짜와 해당 날짜에 발생하는 이벤트 저장
// Map.fromIterable key 와 value 가 계산되는 맵 인스턴트를 만듦
final _kEventSource = Map.fromIterable(
    // List.generate 라는 함수를 사용해 0 부터  49까지의 숫자 리스트를 생성함
    // 반복 가능한 요소
    List.generate(
      50,
      (index) => index,
    ),
    // DateTime.utc 를 사용하여
    // kFirstDay.year, kFirstDay.month 를 기준으로
    // 각 숫자에 5를 곱한 일(day)을 가짐
    key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
    //
    value: (item) => List.generate(
        item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
  ..addAll({
    kToday: [
      Event('Today\'s Event 1'),
      Event('Today\'s Event 2'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
