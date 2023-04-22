extension CalendarPersing on DateTime {
  String get calendarDay {
    switch (weekday) {
      case 1:
        return 'M';
      case 2:
      case 4:
        return 'T';
      case 3:
        return 'W';
      case 5:
        return 'F';
      case 6:
      case 7:
      default:
        return 'S';
    }
  }
}