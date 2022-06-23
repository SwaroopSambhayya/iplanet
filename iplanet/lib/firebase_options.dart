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
    apiKey: 'AIzaSyA9RV61YcE1mJ22QrOGI-1jUvinc6LJgZQ',
    appId: '1:946111757185:android:eb23fab46f256701814680',
    messagingSenderId: '946111757185',
    projectId: 'coffe-house-a3fda',
    storageBucket: 'coffe-house-a3fda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZ9eRiJTbzZ02jEkKH-Cu3nIu2XtV2f9c',
    appId: '1:946111757185:ios:597441d6e0ff1658814680',
    messagingSenderId: '946111757185',
    projectId: 'coffe-house-a3fda',
    storageBucket: 'coffe-house-a3fda.appspot.com',
    androidClientId: '946111757185-cr9bqc08l4oqfv7t3lb85qh0schjbaoe.apps.googleusercontent.com',
    iosClientId: '946111757185-ebp5bdq9fo0m19eg2pq0ajskubo6n181.apps.googleusercontent.com',
    iosBundleId: 'com.example.iplanet',
  );
}
