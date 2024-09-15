import 'package:ecommerce_stylish_flutter/router/router.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/auth/forgot_password_page.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/auth/login_page.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()), // Provide AppProvider globally
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_ , child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First Method',
              // You can use the library anywhere in the app even in theme
              theme: appProvider.currentTheme,
              home: child,
              onGenerateRoute: AppRouter.generateRoute,
            );
          },
          child: LoginScreen(),
        );
      },
    );
  }
}
