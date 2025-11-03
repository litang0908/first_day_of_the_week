
# first_day_of_the_week

`first_day_of_the_week` is a Flutter plugin to retrieve the system's first day of the week. It supports Android, iOS, and macOS. Useful for calendar and scheduling apps.

## Features

- Get the system's first day of the week.
- Supports Android, iOS, and macOS.

## Installation

Add `first_day_of_the_week` to your `pubspec.yaml` file:

```yaml
dependencies:
  first_day_of_the_week: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Usage

Call `init` first, then read `FirstDayOfTheWeek.value`. The return type is the enum `FirstWeekday?` for better readability:

```dart
import 'package:first_day_of_the_week/first_day_of_the_week.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize the plugin to get the first day of the week
  await FirstDayOfTheWeek.init();

  // Access the first day of the week
  final firstDay = FirstDayOfTheWeek.value; // FirstWeekday?
  print("The first day of the week is: ${firstDay?.name}");

  runApp(MyApp());
}
```

### Enum: FirstWeekday

Values:

- sunday
- monday
- tuesday
- wednesday
- thursday
- friday
- saturday

## Example

```dart
import 'package:flutter/material.dart';
import 'package:first_day_of_the_week/first_day_of_the_week.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize the plugin to get the first day of the week
  await FirstDayOfTheWeek.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Day of the Week Example'),
        ),
        body: Center(
          child: Text(
            'The first day of the week is: ${FirstDayOfTheWeek.value?.name}',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

