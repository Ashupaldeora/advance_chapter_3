# advance_chapter_3

<h3 align="center"><i>3.1 connectivity_plus package</i></h3>
<h1></h1>

# Connectivity Plus


Connectivity Plus is a **Flutter plugin** that allows your apps to get information about currently active network types on a device, whether it's running on cellular, WiFi, or other connection types.

## Getting Started

1. **Add it to your project** by including the following in your `pubspec.yaml`:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      connectivity_plus: "^0.0.1"
    ```

2. **Download the dependency** by running:

    ```bash
    flutter pub get
    ```

## Usage

Using the `Connectivity` API, you can find out which type of connection the device is using at the moment. Here's an example:

```dart
import 'package:connectivity_plus/connectivity_plus.dart';

final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

// This condition is for demo purposes only to explain every connection type.
if (connectivityResult.contains(ConnectivityResult.wifi)) {
  print("Device is connected to WiFi.");
} else if (connectivityResult.contains(ConnectivityResult.mobile)) {
  print("Device is connected to cellular data.");
} else {
  print("No active network connection.");
}
 ```

<div align="center">
  <img src="https://github.com/Ashupaldeora/advance_chapter_3/assets/143180848/06427c99-19a9-4560-8978-a9ee619b7b91" height=500px hspace=20>
  <img src="https://github.com/Ashupaldeora/advance_chapter_3/assets/143180848/a878b6d8-62e7-47cd-8696-a6d7ca2069dc" height=500px hspace=20>
  
  <video src="https://github.com/Ashupaldeora/advance_chapter_3/assets/143180848/b8d0ef58-b215-4bc0-986f-b2e66f6a0a1b"></video>
  
</div>



###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/blob/master/lib/screens/date_picker/android/view/date_picker_screen.dart">-> See The Code <-</a>
</div>



