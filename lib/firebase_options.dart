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
    apiKey: 'AIzaSyAyTa9xK3wV3Hk-a01EvStGgC4SpxkurGo',
    appId: '1:912482521172:web:6568561926f29475889dc1',
    messagingSenderId: '912482521172',
    projectId: 'snowball-37eee',
    authDomain: 'snowball-37eee.firebaseapp.com',
    storageBucket: 'snowball-37eee.appspot.com',
    measurementId: 'G-8SRSGZEEKY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMQTd1t1fH4QGOzRAj-ws452LCSxMOtiY',
    appId: '1:912482521172:android:ec25d830b6537fa6889dc1',
    messagingSenderId: '912482521172',
    projectId: 'snowball-37eee',
    storageBucket: 'snowball-37eee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBn-TZmO9tprLUeM5IvXaXzFg8incU8lb4',
    appId: '1:912482521172:ios:435a8c04d56521f6889dc1',
    messagingSenderId: '912482521172',
    projectId: 'snowball-37eee',
    storageBucket: 'snowball-37eee.appspot.com',
    iosClientId: '912482521172-t5isaetemjoie2em9b57l7cv1ar49ehv.apps.googleusercontent.com',
    iosBundleId: 'com.example.snowball',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBn-TZmO9tprLUeM5IvXaXzFg8incU8lb4',
    appId: '1:912482521172:ios:0fc838bb10dd3446889dc1',
    messagingSenderId: '912482521172',
    projectId: 'snowball-37eee',
    storageBucket: 'snowball-37eee.appspot.com',
    iosClientId: '912482521172-09q4jchka60u4e6ik46vl059dekk1jgp.apps.googleusercontent.com',
    iosBundleId: 'com.example.snowball.RunnerTests',
  );
}
