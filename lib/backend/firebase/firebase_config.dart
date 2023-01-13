import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDXUAjNx7Hn8aEACujdU7c0KlSa5qGLkWA",
            authDomain: "mindfulkids-2f484.firebaseapp.com",
            projectId: "mindfulkids-2f484",
            storageBucket: "mindfulkids-2f484.appspot.com",
            messagingSenderId: "567423490642",
            appId: "1:567423490642:web:7ba6e91a119848ce115d8b",
            measurementId: "G-TMX6D6V5QP"));
  } else {
    await Firebase.initializeApp();
  }
}
