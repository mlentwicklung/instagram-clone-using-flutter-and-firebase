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
    apiKey: 'AIzaSyBkGXdVRD-98Cre8mtMWur-OWCDVG4kl3M',
    appId: '1:615629214256:web:49e8d6bbf9dc6a393d53f5',
    messagingSenderId: '615629214256',
    projectId: 'closet-4850b',
    authDomain: 'closet-4850b.firebaseapp.com',
    storageBucket: 'closet-4850b.appspot.com',
    measurementId: 'G-NPGZL9V729',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsC6Iy_UO1BH3s0OUq3pCiwwuXvOLOLiA',
    appId: '1:615629214256:android:3237ff9bc0e1725d3d53f5',
    messagingSenderId: '615629214256',
    projectId: 'closet-4850b',
    storageBucket: 'closet-4850b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk3tlEuWgz7OWOKtfQ-SsBDpOJpSMxMzo',
    appId: '1:615629214256:ios:c0bceac34d718b613d53f5',
    messagingSenderId: '615629214256',
    projectId: 'closet-4850b',
    storageBucket: 'closet-4850b.appspot.com',
    iosClientId: '615629214256-hd6m7ib4ag7bgs12f87cmgt7h0c4mq3p.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCk3tlEuWgz7OWOKtfQ-SsBDpOJpSMxMzo',
    appId: '1:615629214256:ios:c0bceac34d718b613d53f5',
    messagingSenderId: '615629214256',
    projectId: 'closet-4850b',
    storageBucket: 'closet-4850b.appspot.com',
    iosClientId: '615629214256-hd6m7ib4ag7bgs12f87cmgt7h0c4mq3p.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone1',
  );
}
