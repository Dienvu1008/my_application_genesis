import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'screen_settings/auth/authentication_repository.dart';
import 'firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//     // Kiểm tra nền tảng
//   if (!Platform.isWindows) {
//     // Nếu không phải Windows, khởi tạo Firebase
//     await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   }


//   //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

//   final authenticationRepository = AuthenticationRepository();
//   await authenticationRepository.user.first;
//   runApp( App(authenticationRepository: authenticationRepository));
// }


bool isFirebaseInitialized = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Kiểm tra nền tảng
  if (!Platform.isWindows) {
    // Nếu không phải Windows và Firebase chưa được khởi tạo, thì khởi tạo Firebase
    if (!isFirebaseInitialized) {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      isFirebaseInitialized = true;
    }
  }

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  runApp(App(authenticationRepository: authenticationRepository));
}
