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
    apiKey: 'AIzaSyBD8cx1TuJE_yREi-g8g508LdbpsDNQcXM',
    appId: '1:438782620395:web:2b8683bb78d512a013c4ae',
    messagingSenderId: '438782620395',
    projectId: 'all-for-kids',
    authDomain: 'all-for-kids.firebaseapp.com',
    storageBucket: 'all-for-kids.appspot.com',
    measurementId: 'G-3KW7BF6YBJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALKWUASzE-i-dzPvjlzcTsafwgamnoBWU',
    appId: '1:438782620395:android:ae8244b82786ee3613c4ae',
    messagingSenderId: '438782620395',
    projectId: 'all-for-kids',
    storageBucket: 'all-for-kids.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJl8A4marPCCWx13wRZ_4YGiI0OzPZzjU',
    appId: '1:438782620395:ios:828748a9a587668013c4ae',
    messagingSenderId: '438782620395',
    projectId: 'all-for-kids',
    storageBucket: 'all-for-kids.appspot.com',
    iosClientId: '438782620395-p4994nednunrcqa31upfgi8subogt7tg.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterClass',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJl8A4marPCCWx13wRZ_4YGiI0OzPZzjU',
    appId: '1:438782620395:ios:828748a9a587668013c4ae',
    messagingSenderId: '438782620395',
    projectId: 'all-for-kids',
    storageBucket: 'all-for-kids.appspot.com',
    iosClientId: '438782620395-p4994nednunrcqa31upfgi8subogt7tg.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterClass',
  );
}