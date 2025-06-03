import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/features/number_trivia/presentation/widgets/number_trivia_page_wrapper_provider.dart';
import 'package:flutter/material.dart';
import 'src/di/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Number Trivia',
          theme: ThemeData.dark(),
          home: NumberTriviaWrapperProvider(),
        );
      }
    );
  }
}