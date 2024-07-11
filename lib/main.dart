import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakany/app.dart';
import 'package:sakany/core/router/app_router.dart';

void main() async {
   await ScreenUtil.ensureScreenSize();
  runApp(SakanyApp(appRouter: AppRouter()));
}

