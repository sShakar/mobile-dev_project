import 'package:flutter/material.dart';
import 'package:wasstaapp/widgets/worker_item.dart';

class ListOfWorkers extends StatefulWidget {
  final int numOfWorkers;
  // ignore: use_key_in_widget_constructors
  const ListOfWorkers(this.numOfWorkers);

  @override
  State<ListOfWorkers> createState() => _ListOfWorkersState();
}

class _ListOfWorkersState extends State<ListOfWorkers> {
  final List<String> workerDescription = const [
    'شاکار کۆسار عمر',
    'ژمارەی مۆبایل: ٠٧٥٠٣٦٨٠٠٨٧',
    'پیشە: پڕۆگرامەر ',
  ];

  // List<Widget> _cardList = [];

  // void _addCardWidget() {
  //   setState(() {
  //     _cardList.add(_card());
  //   });
  // }

  // Widget _card() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       border: Border.all(color: Colors.black38, width: 1),
  //       borderRadius: BorderRadius.circular(22),
  //     ),
  //     width: 140,
  //     height: 140,
  //     child: Column(
  //       children: [
  //         Container(
  //           width: 140,
  //           height: 75,
  //           child: ClipRRect(
  //             borderRadius:
  //                 const BorderRadius.vertical(top: Radius.circular(20)),
  //             child: Container(
  //               color: Colors.black,
  //               child: Image.asset(
  //                 'assets/images/man.jpg',
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 5,
  //         ),
  //         Container(
  //           width: 140,
  //           height: 70,
  //           child: Column(
  //             children: [
  //               Text(
  //                 style: Theme.of(context).textTheme.subtitle2,
  //                 widget.workerInfo[0],
  //               ),
  //               const SizedBox(
  //                 height: 4,
  //               ),
  //               Text(
  //                 widget.workerInfo[1],
  //                 style: Theme.of(context).textTheme.headline3,
  //               ),
  //               const SizedBox(
  //                 height: 4,
  //               ),
  //               Text(
  //                 widget.workerInfo[2],
  //                 style: Theme.of(context).textTheme.headline3,
  //               ),
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 152,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          WorkerItem(workerDescription),
          WorkerItem(workerDescription),
          WorkerItem(workerDescription),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );

    // return Container(
    //   // width: 200,
    //   height: 152,
    //   child: ListView(
    //     shrinkWrap: true,
    //     children: <Widget>[
    //       // WorkerItem(workerDescription),
    //       // WorkerItem(workerDescription),
    //       // WorkerItem(workerDescription),
    //     ],
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
  }
}
