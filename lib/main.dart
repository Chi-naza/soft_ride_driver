import 'package:flutter/material.dart';
import 'package:soft_ride_driver/intro/splash_screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    child: MaterialApp(
      title: 'Soft Drive - Driver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
    ),
  ),
  );
}

class MyApp extends StatefulWidget {
  final Widget child;

  const MyApp({super.key, required this.child});

  @override
  State<MyApp> createState() => _MyAppState();

  static void restartApp(BuildContext context){
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp(){
    setState(() {
      key = UniqueKey();
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}


