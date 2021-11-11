import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasstaapp/widgets/custom_app_bar.dart';
import 'package:google_maps/google_maps.dart';

class WorkerProfile extends StatefulWidget {
  const WorkerProfile({Key? key}) : super(key: key);

  @override
  _WorkerProfileState createState() => _WorkerProfileState();
}

class _WorkerProfileState extends State<WorkerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      // body: ,
    );
  }
}
