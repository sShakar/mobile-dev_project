import 'package:flutter/material.dart';
import 'package:wasstaapp/widgets/worker_profile.dart';
import './worker_item.dart';
import 'list_of_workers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<String> workerDescription = const [
    'ناو: شاکار کۆسار عمر',
    'ژمارەی مۆبایل: ٠٧٥٠٣٦٨٠٠٨٧',
    'عێراق: هەولێر ',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 240.0,
            color: const Color(0xff1b4754),
            child: DrawerHeader(
              child: Container(
                width: 240,
                height: 240,
                child: Column(
                  children: [
                    Container(
                      child: const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                          'assets/images/man.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            workerDescription[0],
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            workerDescription[1],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: workerDescription[2],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.room,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('چوونە ژوورەوە'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkerProfile()),
              );
            },
          ),
          Divider(
            thickness: 1,
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.people_alt),
            title: const Text('دەربارەی ئێمە'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          Divider(
            thickness: 1,
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: const Text('پەیوەندیکردن بە ئێمە'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 180.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff1b4754),
                    radius: 25.0,
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff1b4754),
                    radius: 25.0,
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff1b4754),
                    radius: 25.0,
                    child: FaIcon(
                      FontAwesomeIcons.snapchat,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
