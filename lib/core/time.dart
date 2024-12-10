class Time {
  static DateTime time = DateTime.now();

  static String getNowMonth() {
    final int month = time.month;
    switch(month) {
      case 1: return "Jan";
      case 2: return "Feb";
      case 3: return "Mar";
      case 4: return "Apr";
      case 5: return "May";
      case 6: return "Jun";
      case 7: return "Jul";
      case 8: return "Aug";
      case 9: return "Sep";
      case 10: return "Oct";
      case 11: return "Now";
      case 12: return "Dec";
    }
    return "";
  }

  static String getNowWeek() {
    final int week = time.weekday;
    switch(week) {
      case 1: return "Monday";
      case 2: return "Tuesday";
      case 3: return "Wednesday";
      case 4: return "Thursday";
      case 5: return "Friday";
      case 6: return "Saturday";
      case 7: return "Sunday";
    }
    return "";
  }

  static String getNowDay() {
    final int day = time.day;
    return day.toString();
  }
}