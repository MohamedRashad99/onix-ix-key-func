import 'dart:developer';

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' as g;



import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled1sss/splash/splash_screen_one.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const KeyFeatureApp(),
  //   ),
  // );



  runApp(
    const KeyFeatureApp(),
  );
}


class KeyFeatureApp extends StatelessWidget {
  const KeyFeatureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return GetMaterialApp(
        title: 'ONYX IX ',

        locale: const Locale('en', 'EN'),
        debugShowCheckedModeBanner: false,
        popGesture: true,
        defaultTransition: g.Transition.zoom,
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        localizationsDelegates: const [

        ],
        builder: (context, child) {
          return child ?? const SizedBox();
        },
        home:  const SplashScreen1(),
      );

  }
}


/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ONYX IX Key-Functionally',





      // comments to dectect all of data to c ustomze all fetech data to set all requirments
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//   bool isDesignMode = false;
//   final FocusNode designFocusNode = FocusNode();
//
//   String image = 'assets/images/ultimate.png';
//
//   String page = 'https://ultimatesolutionsportal.com/?lang=ar';
//
//   String des =
//       'F7 Key: This key is used to add the currently selected item to the ONYX IX system. ONYX IX could be a software program, a database, or a specific module within a larger system.F8 Key: This key is used to add the currently selected item to the ONYX ERP system. ERP stands for Enterprise Resource Planning, which is a software suite that integrates various aspects of a business like accounting, procurement, inventory management, etc.';
//
//
//   final Uri _url = Uri.parse('https://ultimatesolutionsportal.com/?lang=ar');
// //https://ultimatesolutionsportal.com/?lang=ar
//   Future<void> _launchUrl() async {
//     if (!await launchUrl(_url)) {
//       throw Exception('Could not launch $_url');
//     }
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: CallbackShortcuts(
        bindings: <ShortcutActivator, VoidCallback>{
          const SingleActivator(LogicalKeyboardKey.f7): () {
            setState(() {
              image = 'assets/images/erp.png';
            });
          },
          const SingleActivator(LogicalKeyboardKey.f8): () {
            setState(() {
              image = 'assets/images/ix.jpeg';
            });
          },
          const SingleActivator(LogicalKeyboardKey.f1): () {
            setState(() async {
              await _launchUrl();
            });
          },
        },
        child: Focus(
          autofocus: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: TextScroll(
                  des,
                  mode: TextScrollMode.endless,
                  velocity: const Velocity(pixelsPerSecond: Offset(150, 0)),
                  delayBefore: const Duration(milliseconds: 500),
                  numberOfReps: 5,
                  pauseBetween: const Duration(milliseconds: 50),
                  style: const TextStyle(fontSize: 20, color: Colors.green),
                  textAlign: TextAlign.right,
                  selectable: true,
                ),
              ),

              InkWell(
                onTap: _launchUrl,
                child: const Text(
                  'Press F1 key to explain this page with details ',
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                ),
              ),
              const Text(
                'Press F7 key to add to the ONYX IX',
                style: TextStyle(fontSize: 20, color: Colors.indigo),
              ),
              const Text(
                'Press F8 key to add to the ONYX ERP',
                style: TextStyle(fontSize: 20, color: Colors.indigo),
              ),


              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  )),







            ],
          ),
        ),
      ),
    );
  }
}*/
