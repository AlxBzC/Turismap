import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:hive_flutter/hive_flutter.dart';
import 'package:registrar_page_turismapp/models/sitioslocal.dart';
import 'package:registrar_page_turismapp/pages/my_sites_page.dart';
=======
>>>>>>> 210a200b7954afcb3830b04b68ecd2a0156b55f2
import 'pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

  ////////////  Firebase //////////////////
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 // await Hive.initFlutter();
  // Hive.registerAdapter(SitiosLocalAdapter());
  //await Hive.openBox<SitiosLocal>('favoritos');
  runApp(const MyApp());
  Firebase.initializeApp();

}
////////////////////////////////////////////////

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turismapp',
      localizationsDelegates: const[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale("en", "US"),
        Locale("es", "CO"),
      ],
      theme: ThemeData(primarySwatch: Colors.indigo, textTheme: GoogleFonts.workSansTextTheme(),
      ),
      //home: Screen(),
      home: const SplashPage(),
    );
  }
}
