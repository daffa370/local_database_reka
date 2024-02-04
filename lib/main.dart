import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sqflite_materi/db/db_helper.dart';
import 'package:sqflite_materi/pages/create/bindings.dart';
import 'package:sqflite_materi/pages/create/create.dart';
import 'package:sqflite_materi/pages/home/bindings.dart';
import 'package:sqflite_materi/pages/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(
            name: "/", page: () => const HomePage(), binding: HomeBindings()),
        GetPage(
            name: "/create",
            page: () => const CreatePage(),
            binding: CreateBindings()),
      ],
    );
  }
}
