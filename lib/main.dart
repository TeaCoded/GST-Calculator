import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gst_calculator/helper/theme.dart';
import 'package:gst_calculator/pages/calculator.dart';
import 'package:gst_calculator/providers/gst_controller.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (context)=> GSTController())
    ],
    child: ScreenUtilInit(
        designSize: const Size(360, 640),
    minTextAdapt: true,
    splitScreenMode: false,
    builder: (context, child) {
    return MaterialApp(
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Calculator(),
    );
  }));
}
}
