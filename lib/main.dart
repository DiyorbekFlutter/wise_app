import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:wise_app/feature/main/view/splash_screen.dart';

import 'core/style/app_colors.dart';
import 'feature/main/view/main_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => ProviderScope(
    child: ScreenUtilInit(
      designSize: const Size(412, 892),
      child: KeyboardDismisser(
        gestures: const [GestureType.onTap],
        child: MaterialApp(
          home: const SplashScreen(),
          title: "Wise",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            scaffoldBackgroundColor: AppColors.white,
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: AppColors.blue,
              selectionColor: AppColors.blue.withOpacity(0.6),
              selectionHandleColor: Colors.blue
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.white,
              surfaceTintColor: AppColors.white,
            )
          ),
        ),
      ),
    ),
  );
}
