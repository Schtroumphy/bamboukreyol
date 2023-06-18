// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAcUDbYAhb7md02SsTBY-bxyg-Z5WzsRo',
    appId: '1:971294461557:android:c56d146376a8dd2638f23c',
    messagingSenderId: '971294461557',
    projectId: 'bamboukreyol-841ce',
    storageBucket: 'bamboukreyol-841ce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNywKOoJ0ktk9BpquAzFvsK-enrx8MxnQ',
    appId: '1:971294461557:ios:ed397f8bd05e89bc38f23c',
    messagingSenderId: '971294461557',
    projectId: 'bamboukreyol-841ce',
    storageBucket: 'bamboukreyol-841ce.appspot.com',
    iosClientId: '971294461557-27k6rl2mat6jjoj1blh2so4ckt5r8e22.apps.googleusercontent.com',
    iosBundleId: 'com.jeanloth.flutter.projects.bamboukreyol.app.dev',
  );
}
