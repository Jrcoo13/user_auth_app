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
    apiKey: 'AIzaSyDzItSoxTlqwFw54LyBYhNkCUv6xI_QW30',
    appId: '1:623837617707:web:484e9d267fe8734d80146e',
    messagingSenderId: '623837617707',
    projectId: 'user-auth-da625',
    authDomain: 'user-auth-da625.firebaseapp.com',
    storageBucket: 'user-auth-da625.appspot.com',
    measurementId: 'G-3DN2WES54Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnaAhl2E2kdrO3sgBBufGh4_LZPgiAdmI',
    appId: '1:623837617707:android:1aadb72d8615f90c80146e',
    messagingSenderId: '623837617707',
    projectId: 'user-auth-da625',
    storageBucket: 'user-auth-da625.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkTdXy6bUC6T-OdEPb15SB2kZKgHxvBLI',
    appId: '1:623837617707:ios:922038daadae7ad780146e',
    messagingSenderId: '623837617707',
    projectId: 'user-auth-da625',
    storageBucket: 'user-auth-da625.appspot.com',
    iosBundleId: 'com.example.userAuthApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkTdXy6bUC6T-OdEPb15SB2kZKgHxvBLI',
    appId: '1:623837617707:ios:922038daadae7ad780146e',
    messagingSenderId: '623837617707',
    projectId: 'user-auth-da625',
    storageBucket: 'user-auth-da625.appspot.com',
    iosBundleId: 'com.example.userAuthApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDzItSoxTlqwFw54LyBYhNkCUv6xI_QW30',
    appId: '1:623837617707:web:c566dd4f53eb477c80146e',
    messagingSenderId: '623837617707',
    projectId: 'user-auth-da625',
    authDomain: 'user-auth-da625.firebaseapp.com',
    storageBucket: 'user-auth-da625.appspot.com',
    measurementId: 'G-K52G8Q4J6E',
  );
}
