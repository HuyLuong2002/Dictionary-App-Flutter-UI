import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newdata/config/routes/route_name.dart';
import 'package:newdata/config/routes/routes.dart';

// Import the generated file
import 'firebase_options.dart';

void main() async {
  /**
   * FlutterFire CLI automatically generates a file named firebase_options.dart
   * which contains the FirebaseOptions class for iOS, Android and Web.
   * See: https://firebase.flutter.dev/docs/overview
   */
  WidgetsFlutterBinding.ensureInitialized();

  // // Initialize Firebase based on current platform
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom]); // Xóa tai thỏ của iphone
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false, // Tắt hiển thị thanh debug
        title: 'Something Else',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'GoogleSans',
        ),
        initialRoute: Routes.loginPage, // Trang load vào đầu tiên
        onGenerateRoute: RouterName.generateRoute,
      ),
      designSize: const Size(414, 896),
    );
  }
}
