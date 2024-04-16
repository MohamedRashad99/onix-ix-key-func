import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:url_launcher/url_launcher.dart';

class KeyFeatures extends StatefulWidget {
  const KeyFeatures({super.key});

  @override
  State<KeyFeatures> createState() => _KeyFeaturesState();
}

class _KeyFeaturesState extends State<KeyFeatures> {
  bool isDesignMode = false;
  final FocusNode designFocusNode = FocusNode();

  String image = 'assets/images/ultimate.png';

  String page = 'https://ultimatesolutionsportal.com/?lang=ar';

  String des =
      'F7 Key: This key is used to add the currently selected item to the ONYX IX system. ONYX IX could be a software program, a database, or a specific module within a larger system.F8 Key: This key is used to add the currently selected item to the ONYX ERP system. ERP stands for Enterprise Resource Planning, which is a software suite that integrates various aspects of a business like accounting, procurement, inventory management, etc.';

  final Uri _url = Uri.parse('https://ultimatesolutionsportal.com/?lang=ar');

//https://ultimatesolutionsportal.com/?lang=ar
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
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
              SizedBox(
                  width: width * 0.8,
                  height: height * 0.1,
                  child: Image.asset("assets/images/ultimate.png")),
              SizedBox(
                height: height * 0.01,
              ),
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
                  'Press F1 key to explain this page',
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    image = 'assets/images/erp.png';
                  });
                },
                child: const Text(
                  'Press F7 key to add to the ONYX IX',
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    image = 'assets/images/ix.jpeg';
                  });
                },
                child: const Text(
                  'Press F8 key to add to the ONYX ERP',
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
