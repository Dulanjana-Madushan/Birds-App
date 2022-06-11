import 'package:birds_app/providers/bird_data_provider.dart';
import 'package:birds_app/screens/bird_list_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BirdApp());
}

class BirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: "Bird App",
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.green[700])),
        home: BirdsListScreen(),
      ),
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<BirdDataProvider>(create: (_) => BirdDataProvider())
];
