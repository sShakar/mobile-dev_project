import 'package:flutter/material.dart';

import 'package:wasstaapp/widgets/list_of_workers.dart';
import './widgets/custom_app_bar.dart';
import './widgets/title_row.dart';
import './widgets/custom_slider.dart';
import './widgets/bottom_nav_bar.dart';
import './widgets/custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wassta Application',
      theme: ThemeData(
        fontFamily: 'NRT',
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1b4754),
              ),
              subtitle2: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),
              headline3: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff1b4754),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 67,
            ),
            CustomSlider(),
            const TitleRow('Best Of Month'),
            ListOfWorkers(3),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow('Lastest'),
            ListOfWorkers(2),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow('Featured'),
            ListOfWorkers(1),
            const Divider(
              thickness: 1,
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
