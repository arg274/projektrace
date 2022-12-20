import 'package:codesamuraiproto2022/controller/auth_controller.dart';
import 'package:codesamuraiproto2022/ui/screen/auth_screen.dart';
import 'package:codesamuraiproto2022/ui/screen/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:codesamuraiproto2022/theme/constants.dart';
import 'package:codesamuraiproto2022/ui/screen/project_map.dart';
import 'package:codesamuraiproto2022/ui/screen/project_list.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(CodeSamuraiProto());
}

class CodeSamuraiProto extends StatelessWidget {
  CodeSamuraiProto({super.key});
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AuthController auth = AuthController();
    return MaterialApp(
      title: 'Code Samurai Proto',
      theme: DynamicColorTheme().lightTheme(),
      home: FutureBuilder(
        future: _firebaseApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint("Error! ${snapshot.error.toString()}");
            return const Text("Something Went Wrong");
          } else if (snapshot.hasData) {
            debugPrint("Firebase Initialization successfull");
            return Authenticate(auther: auth,);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

// Dummy page
class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  int screenIndex = 0;
  final screens = [
    const ProjectMap(),
    const ProjectList(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: screenIndex,
              children: screens,
            ),
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Theme.of(context).primaryColorLight,
                haptic: true,
                gap: 8,
                activeColor: Theme.of(context).primaryColor,
                iconSize: 24,
                padding:
                const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                duration: const Duration(milliseconds: 200),
                tabActiveBorder:
                Border.all(color: Theme.of(context).primaryColor, width: 1),
                color: Theme.of(context).primaryColor,
                textStyle: Theme.of(context).textTheme.navLabel.fixFontFamily(),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const GButton(
                    icon: FeatherIcons.map,
                    text: 'Map',
                  ),
                  const GButton(
                    icon: FeatherIcons.search,
                    text: 'Projects',
                  ),
                ],
                selectedIndex: screenIndex,
                onTabChange: (index) {
                  setState(() {
                    screenIndex = index;
                  });
                },
              ),
            ),
          )),
    );
  }
}
