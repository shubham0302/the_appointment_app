import 'package:get/get.dart';

var newDate = DateTime.now();

class DateController extends GetxController {
  Map<int, String> getDay = {
    7: 'Sun',
    1: 'Mon',
    2: 'Tue',
    3: 'Wed',
    4: 'Thu',
    5: 'Fri',
    6: 'Sat',
  };

  var i = 2;
  var j = -2;

  RxList<DateTime> dates = <DateTime>[
    newDate.add(
      Duration(days: -2),
    ),
    newDate.add(
      Duration(days: -1),
    ),
    newDate,
    newDate.add(
      Duration(days: 1),
    ),
    newDate.add(
      Duration(days: 2),
    ),
  ].obs;

  addDate() {
    i++;
    j++;
    dates.removeAt(0);
    dates.add(DateTime.now().add(Duration(days: i)));
    dates.refresh();
  }

  addPastDate() {
    j--;
    i--;
    dates.removeAt(dates.length - 1);
    dates.insert(0, DateTime.now().add(Duration(days: j)));
    dates.refresh();
  }
}
