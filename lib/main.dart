import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:mypcot_assignment/application/home_provider/providers.dart';
import 'package:mypcot_assignment/core/app_theme.dart';
import 'package:mypcot_assignment/core/constants.dart';
import 'package:mypcot_assignment/injection.dart';
import 'package:mypcot_assignment/presentation/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1)).then(
      (value) => SystemChrome.setSystemUIOverlayStyle(
         SystemUiOverlayStyle(
          systemNavigationBarColor: AppColors.black,
          systemNavigationBarDividerColor: AppColors.black,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarColor: AppColors.black,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(360, 786),
        builder: (BuildContext context, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
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
