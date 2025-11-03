import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'first_day_of_the_week_platform_interface.dart';
import 'src/types.dart';

/// An implementation of [FirstDayOfTheWeekPlatform] that uses method channels.
class MethodChannelFirstDayOfTheWeek extends FirstDayOfTheWeekPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('first_day_of_the_week');

  @override
  Future<FirstWeekday?> get() async {
    final value = await methodChannel.invokeMethod<int>('getFirstDayOfWeek');
    if (value == null) return null;
    switch (value) {
      case 1:
        return FirstWeekday.sunday;
      case 2:
        return FirstWeekday.monday;
      case 3:
        return FirstWeekday.tuesday;
      case 4:
        return FirstWeekday.wednesday;
      case 5:
        return FirstWeekday.thursday;
      case 6:
        return FirstWeekday.friday;
      case 7:
        return FirstWeekday.saturday;
      default:
        return null;
    }
  }
}
