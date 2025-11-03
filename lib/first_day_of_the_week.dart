import 'first_day_of_the_week_platform_interface.dart';
import 'src/types.dart';
export 'src/types.dart';

class FirstDayOfTheWeek {
  static FirstWeekday? value;

  static Future<void> init() async {
    value = await FirstDayOfTheWeekPlatform.instance.get();
  }
}
