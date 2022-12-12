import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypcot_assignment/application/home_provider/providers.dart';
import 'package:mypcot_assignment/core/app_theme.dart';
import 'package:mypcot_assignment/presentation/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1)).then(
      (value) => SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.black,
          systemNavigationBarDividerColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: Colors.black,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top, // Shows Status bar and hides Navigation bar
      ],
    );
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, _) => MaterialApp(
          title: 'Mypcot Assignment',
          theme: appTheme,
          initialRoute: '/homeScreen',
          routes: <String, WidgetBuilder>{
            '/homeScreen': (BuildContext context) {
              return const SafeArea(child: HomeScreen());
            },
          },
        ),
      ),
    );
  }
}
