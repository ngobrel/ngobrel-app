import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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

  static String _getInitials(String name) {
    String result = "";
    var words = name.split(" ");
    if (words.length == 1) {
      return name.substring(0, 1).toUpperCase();
    }
    for (int i = 0; i < max(2, words.length); i ++) {
      result = result + words[i].substring(0, 1).toUpperCase();
    }
    return result;
  }

  static Widget getAvatar(dynamic avatar, String name) {
    if (avatar == null) {
      return CircleAvatar(
        child: Text(_getInitials(name)),
      );
    } else {
      return CircleAvatar(
          backgroundImage: MemoryImage(avatar)
      );
    }
  }

}

