// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB9po4CxpD2Z9n0b94WQ1GfTyIt0RfolFM',
    appId: '1:469320179418:web:961c11be640a91d1ff4fe3',
    messagingSenderId: '469320179418',
    projectId: 'dictionary-app-flutter-1a6ab',
    authDomain: 'dictionary-app-flutter-1a6ab.firebaseapp.com',
    storageBucket: 'dictionary-app-flutter-1a6ab.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvbQDzbeHH304Ie_CF8q2BXUkxvleBnBU',
    appId: '1:469320179418:android:cecedaa573014114ff4fe3',
    messagingSenderId: '469320179418',
    projectId: 'dictionary-app-flutter-1a6ab',
    storageBucket: 'dictionary-app-flutter-1a6ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9NkpSSNbiG2NsC_5EJ_NT6LO2e23pvFQ',
    appId: '1:469320179418:ios:af038799aae0a91eff4fe3',
    messagingSenderId: '469320179418',
    projectId: 'dictionary-app-flutter-1a6ab',
    storageBucket: 'dictionary-app-flutter-1a6ab.appspot.com',
    iosClientId: '469320179418-damt741inambvtelkdc58ol67ohlt8oa.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
