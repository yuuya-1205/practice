// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCYO4WIMD8H4fsEcSzjvU7uOITE3TiEMDE',
    appId: '1:648094486718:web:d55042a5184ce1a0c40eef',
    messagingSenderId: '648094486718',
    projectId: 'practicedevelop-df8de',
    authDomain: 'practicedevelop-df8de.firebaseapp.com',
    storageBucket: 'practicedevelop-df8de.appspot.com',
    measurementId: 'G-ERN61CGY5D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApPZ87SemF8QG0RMcLhHxTh_yxZUZIXrU',
    appId: '1:648094486718:android:2b8cdb7aff632cc2c40eef',
    messagingSenderId: '648094486718',
    projectId: 'practicedevelop-df8de',
    storageBucket: 'practicedevelop-df8de.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBf6Ade-BmPESLDjwbbfVmriIri8lT4o-M',
    appId: '1:648094486718:ios:3c41e316f88704dcc40eef',
    messagingSenderId: '648094486718',
    projectId: 'practicedevelop-df8de',
    storageBucket: 'practicedevelop-df8de.appspot.com',
    iosBundleId: 'com.practice.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBf6Ade-BmPESLDjwbbfVmriIri8lT4o-M',
    appId: '1:648094486718:ios:f4c9be8c27bb50a3c40eef',
    messagingSenderId: '648094486718',
    projectId: 'practicedevelop-df8de',
    storageBucket: 'practicedevelop-df8de.appspot.com',
    iosBundleId: 'com.example.practiceApp.RunnerTests',
  );
}
