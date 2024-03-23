import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAnGm92r_kiDzKo-Vhf1BvjJ6CI7vEsx0Y",
            authDomain: "locator-58jh7h.firebaseapp.com",
            projectId: "locator-58jh7h",
            storageBucket: "locator-58jh7h.appspot.com",
            messagingSenderId: "954603279124",
            appId: "1:954603279124:web:82ba6d59b147d473156801"));
  } else {
    await Firebase.initializeApp();
  }
}
