import 'package:intl/intl.dart';

class Utils {
  static String dateFormat(int i) {
    var localtime = DateTime.fromMillisecondsSinceEpoch(i, isUtc: true).toLocal();
    var duration = DateTime.now().difference(localtime);

    if (duration.inDays > 7 ) {
      return DateFormat.yMd().add_jm().format(localtime);
    } else if (duration.inDays <= 7 && duration.inDays > 1) {
      return DateFormat.E().add_jm().format(localtime);
    } else {
      return DateFormat.jm().format(localtime);
    }
  }
}

