import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task4/core/constants/dimensions.dart';
import 'features/splash/presentation/views/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Transparent status bar
  ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // Add observer for lifecycle changes
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // Clean up
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    // Rebuild the widget tree when the window size changes
    setState(() {
      // Reinitialize ScreenUtil with new dimensions
      ScreenUtil.init(
        context,
 designSize: Size(Dimensions.designWidth, Dimensions.designHeight),
        minTextAdapt: true,
        splitScreenMode: true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(Dimensions.designWidth, Dimensions.designHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    );
  }
}