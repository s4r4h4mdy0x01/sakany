import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/core/router/app_router.dart';
import 'package:sakany/core/router/routes.dart';

class SakanyApp extends StatelessWidget {
    final AppRouter appRouter;
  const SakanyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Sakany App',
        theme: ThemeData(

            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            ),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: RoutesString.onboardingScreen
      ),
    );
  }
}