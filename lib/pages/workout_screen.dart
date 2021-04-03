import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFF200087),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 25,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text(
                "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMM").format(today)}",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Upper Body",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Colors.white30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "60 mins",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.face_sharp,
                        color: Colors.white30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Easy",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
