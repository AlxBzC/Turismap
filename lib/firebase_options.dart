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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCETFAy-39-E6mJzdLnU0slrID4iNNtkEI',
    appId: '1:36944624821:web:553cf9f92af2e8e535d2fc',
    messagingSenderId: '36944624821',
    projectId: 'turismapp-e48b1',
    authDomain: 'turismapp-e48b1.firebaseapp.com',
    storageBucket: 'turismapp-e48b1.appspot.com',
    measurementId: 'G-CDTLPV09RF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtUkoYNumgzK4yJwL7XgUc7draE64s-WI',
    appId: '1:36944624821:android:eab32d96e518c8e935d2fc',
    messagingSenderId: '36944624821',
    projectId: 'turismapp-e48b1',
    storageBucket: 'turismapp-e48b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkhxt1Rnc86Aw2H_yUwgOyFdjsqTBvw-U',
    appId: '1:36944624821:ios:b643459574942fd335d2fc',
    messagingSenderId: '36944624821',
    projectId: 'turismapp-e48b1',
    storageBucket: 'turismapp-e48b1.appspot.com',
    iosClientId:
        '36944624821-k33mg335366nkimig17p4ihel42j7ihv.apps.googleusercontent.com',
    iosBundleId: 'com.example.registrarPageTurismapp',
  );
}
