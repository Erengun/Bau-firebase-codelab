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
    apiKey: 'AIzaSyAq_RDnO6AIVsvp3gwrSeuUeksfcjfVmPI',
    appId: '1:1083960793274:web:4009f120bd6472a4424a83',
    messagingSenderId: '1083960793274',
    projectId: 'project-x-66787',
    authDomain: 'project-x-66787.firebaseapp.com',
    storageBucket: 'project-x-66787.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBT8OAM_wVSZWmqRnlJjQjfhfvSaZbWnyU',
    appId: '1:1083960793274:android:6774910e19610a2e424a83',
    messagingSenderId: '1083960793274',
    projectId: 'project-x-66787',
    storageBucket: 'project-x-66787.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCN8oFFKQBpxXxZKMV95ojDz-WegWLrY1M',
    appId: '1:1083960793274:ios:5f9e4ba6c36c293f424a83',
    messagingSenderId: '1083960793274',
    projectId: 'project-x-66787',
    storageBucket: 'project-x-66787.appspot.com',
    iosBundleId: 'com.example.complete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCN8oFFKQBpxXxZKMV95ojDz-WegWLrY1M',
    appId: '1:1083960793274:ios:354659c9d0126597424a83',
    messagingSenderId: '1083960793274',
    projectId: 'project-x-66787',
    storageBucket: 'project-x-66787.appspot.com',
    iosBundleId: 'com.example.complete.RunnerTests',
  );
}
