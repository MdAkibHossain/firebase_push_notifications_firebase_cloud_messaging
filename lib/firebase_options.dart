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
    apiKey: 'AIzaSyAgh2szgKfUiM1Sd59C29QWfzjcQxP5L5Y',
    appId: '1:1024643532236:web:8c757cf3ca5115959a8969',
    messagingSenderId: '1024643532236',
    projectId: 'fir-pushnotification-c3c37',
    authDomain: 'fir-pushnotification-c3c37.firebaseapp.com',
    storageBucket: 'fir-pushnotification-c3c37.appspot.com',
    measurementId: 'G-TCEKFHQJ8Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPkGQRAWS_y4xh9_6nBUTWzblidzcG7aU',
    appId: '1:1024643532236:android:0d43d65debc536129a8969',
    messagingSenderId: '1024643532236',
    projectId: 'fir-pushnotification-c3c37',
    storageBucket: 'fir-pushnotification-c3c37.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJN1L3Ogp49xValFa0QLpnAM_EwljYsrY',
    appId: '1:1024643532236:ios:644a199b39c4f4789a8969',
    messagingSenderId: '1024643532236',
    projectId: 'fir-pushnotification-c3c37',
    storageBucket: 'fir-pushnotification-c3c37.appspot.com',
    iosClientId: '1024643532236-8kfpsmsdsrgjntrpkasvqn5fadm7k1mr.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasePushNotificationsFirebaseCloudMessaging',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJN1L3Ogp49xValFa0QLpnAM_EwljYsrY',
    appId: '1:1024643532236:ios:644a199b39c4f4789a8969',
    messagingSenderId: '1024643532236',
    projectId: 'fir-pushnotification-c3c37',
    storageBucket: 'fir-pushnotification-c3c37.appspot.com',
    iosClientId: '1024643532236-8kfpsmsdsrgjntrpkasvqn5fadm7k1mr.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasePushNotificationsFirebaseCloudMessaging',
  );
}
