// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAc88Qvj32lHzVziV5s_Ay5lNszPJjTR90',
    appId: '1:905783900585:web:ba8ce32e472e400a486cb8',
    messagingSenderId: '905783900585',
    projectId: 'medical-authen',
    authDomain: 'medical-authen.firebaseapp.com',
    storageBucket: 'medical-authen.appspot.com',
    measurementId: 'G-CH71DCR0CY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjSBY3ppl4GydQ6TzJMOTz8O-1DD2oA08',
    appId: '1:905783900585:android:ab43b597d52a43db486cb8',
    messagingSenderId: '905783900585',
    projectId: 'medical-authen',
    storageBucket: 'medical-authen.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDwZnQ35KBluiVplj4zU2hYw3Bnnnr9bA',
    appId: '1:905783900585:ios:1b95a4125100139d486cb8',
    messagingSenderId: '905783900585',
    projectId: 'medical-authen',
    storageBucket: 'medical-authen.appspot.com',
    iosBundleId: 'com.example.authentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDwZnQ35KBluiVplj4zU2hYw3Bnnnr9bA',
    appId: '1:905783900585:ios:1b95a4125100139d486cb8',
    messagingSenderId: '905783900585',
    projectId: 'medical-authen',
    storageBucket: 'medical-authen.appspot.com',
    iosBundleId: 'com.example.authentication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAc88Qvj32lHzVziV5s_Ay5lNszPJjTR90',
    appId: '1:905783900585:web:9d7158ddafae41b6486cb8',
    messagingSenderId: '905783900585',
    projectId: 'medical-authen',
    authDomain: 'medical-authen.firebaseapp.com',
    storageBucket: 'medical-authen.appspot.com',
    measurementId: 'G-8P7MZKNKR9',
  );
}