import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite_database_example/screens/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,

        theme: ThemeData(
          primaryColor: Colors.black,

          // // primarySwatch: Colors.grey,
          // primaryTextTheme: TextTheme(
          //     headline6: TextStyle(
          //         color: Colors.black
          //     )
          // ),

          // primaryTextTheme: TextTheme(
          //     subtitle1: TextStyle(
          //         color: Colors.black
          //     )
          // ),

          // Define the default brightness and colors.
          // brightness: Brightness.dark,

          // Define the default font family.
          // fontFamily: 'Georgia',

          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          // textTheme: const TextTheme(
          //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          // ),

          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          // scaffoldBackgroundColor: Colors.white,

          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // elevation: .7,
          ),
        ),
        home: NotesPage(),
      );
}
