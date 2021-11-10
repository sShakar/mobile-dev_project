import 'package:flutter/material.dart';

class WorkerItem extends StatefulWidget {
  final List<String> workerInfo;
  const WorkerItem(this.workerInfo);

  @override
  State<WorkerItem> createState() => _WorkerItemState();
}

class _WorkerItemState extends State<WorkerItem> {
  @override
  Widget build(BuildContext context) {
    // container => column/Cliprrect => both are containers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 1),
          borderRadius: BorderRadius.circular(22),
        ),
        width: 140,
        height: 140,
        child: Column(
          children: [
            Container(
              width: 140,
              height: 75,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Container(
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/man.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 140,
              height: 70,
              child: Column(
                children: [
                  Text(
                    widget.workerInfo[0],
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.workerInfo[1],
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.workerInfo[2],
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
