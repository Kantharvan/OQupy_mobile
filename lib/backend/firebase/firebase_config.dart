import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCSKVctNnpVYnJzF52UKBxEAWQZrhf6nhs",
            authDomain: "oqupy-assistant.firebaseapp.com",
            projectId: "oqupy-assistant",
            storageBucket: "oqupy-assistant.firebasestorage.app",
            messagingSenderId: "32530436088",
            appId: "1:32530436088:web:5530140bceedb170bcd00d"));
  } else {
    await Firebase.initializeApp();
  }
}
