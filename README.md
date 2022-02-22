# touch_mouse_behavior
[![pub package](https://img.shields.io/pub/v/touch_mouse_behavior.svg)](https://pub.dartlang.org/packages/touch_mouse_behavior)

Scroll behavior to support both Touch and Mouse in web in scrollable widgets.

## Usage

To use this plugin, add [touch_mouse_behavior](https://pub.dartlang.org/packages/touch_mouse_behavior/install) as a dependency in your pubspec.yaml file.
```yaml
dependencies:
  touch_mouse_behavior: ^lastVersion
```

## Example

```dart
import 'package:touch_mouse_behavior/touch_mouse_behavior.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TouchMouseScrollable(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Hello'),
                Text('World'),
                Text('!'),
              ]
            ),
          ),
        ),
      );
  }
}
```
