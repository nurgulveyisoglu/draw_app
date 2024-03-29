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
    apiKey: 'AIzaSyDXex49cUcVeRpL41uAA3cFB72AGAnfs0o',
    appId: '1:1012620073104:web:89b5ffd389e4ca371fe015',
    messagingSenderId: '1012620073104',
    projectId: 'draw-app-a5b92',
    authDomain: 'draw-app-a5b92.firebaseapp.com',
    storageBucket: 'draw-app-a5b92.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbI2ngKj0Gy2ISZC42W-zs9zFezFpBBSQ',
    appId: '1:1012620073104:android:c3c06d6bbefc25a71fe015',
    messagingSenderId: '1012620073104',
    projectId: 'draw-app-a5b92',
    storageBucket: 'draw-app-a5b92.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4fs-smmcuKdBlPxNTSCoqOOkryT0b7OQ',
    appId: '1:1012620073104:ios:31f633f8e95d8a741fe015',
    messagingSenderId: '1012620073104',
    projectId: 'draw-app-a5b92',
    storageBucket: 'draw-app-a5b92.appspot.com',
    iosBundleId: 'com.example.drawApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4fs-smmcuKdBlPxNTSCoqOOkryT0b7OQ',
    appId: '1:1012620073104:ios:321dce5a279e34f91fe015',
    messagingSenderId: '1012620073104',
    projectId: 'draw-app-a5b92',
    storageBucket: 'draw-app-a5b92.appspot.com',
    iosBundleId: 'com.example.drawApp.RunnerTests',
  );
}
