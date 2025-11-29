import 'package:flutter/material.dart';
import 'package:skibidi_roast/routes/app_router.dart';
import 'package:skibidi_roast/service/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.init();
  runApp(const SkibidiRoastApp());
}

class SkibidiRoastApp extends StatelessWidget {
  const SkibidiRoastApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
      theme: ThemeData(
        splashColor: Colors.grey.withValues(alpha: 0.2),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(surface: Colors.white),
        useMaterial3: true,
      ),
    );
  }
}
