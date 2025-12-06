import { i18n } from '@kit.LocalizationKit';

import {
  FlutterPlugin,
  FlutterPluginBinding,
  MethodCall,
  MethodCallHandler,
  MethodChannel,
  MethodResult,
} from '@ohos/flutter_ohos';

/** FirstDayOfTheWeekPlugin **/
export default class FirstDayOfTheWeekPlugin implements FlutterPlugin, MethodCallHandler {
  private channel: MethodChannel | null = null;

  constructor() {
  }

  getUniqueClassName(): string {
    return "FirstDayOfTheWeekPlugin"
  }

  onAttachedToEngine(binding: FlutterPluginBinding): void {
    this.channel = new MethodChannel(binding.getBinaryMessenger(), "first_day_of_the_week");
    this.channel.setMethodCallHandler(this)
  }

  onDetachedFromEngine(binding: FlutterPluginBinding): void {
    if (this.channel != null) {
      this.channel.setMethodCallHandler(null)
    }
  }

  onMethodCall(call: MethodCall, result: MethodResult): void {
    if (call.method == "getFirstDayOfWeek") {
      let systemLocale: string = i18n.System.getSystemLocale();
      let calendar: i18n.Calendar = i18n.getCalendar(systemLocale);
      let firstDayOfWeek: number = calendar.getFirstDayOfWeek();
      result.success(firstDayOfWeek);
    } else if (call.method == "getPlatformVersion") {
      result.success("OpenHarmony ^ ^ ")
    } else {
      result.notImplemented()
    }
  }
}