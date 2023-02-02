import 'package:app_delivery/app/core/provider/application_binding.dart';
import 'package:app_delivery/app/core/ui/theme/theme_config.dart';
import 'package:app_delivery/app/pages/home/home_router.dart';
import 'package:app_delivery/app/pages/splash/splash.dart';
import 'package:flutter/material.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) =>  HomeRouter.page,
        },
      ),
    );
  }
}
