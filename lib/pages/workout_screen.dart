import 'package:cours/model/upper_body.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFF616161),
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
                name(),
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
            SizedBox(
              height: 15
            ),
            for (int i = 0; i < work().length; i++)
              Column(
                children: <Widget>[
                  for (int j = 0; j < work()[i].length; j++)
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: const Color(0xFF383737),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Image.asset(
                          work()[i][j].imagePath,
                          width: 45,
                          height: 45,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        work()[i][j].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        work()[i][j].instruction,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      minVerticalPadding: 15,
                    ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


String name(){
  if(DateFormat('EEEE').format(DateTime.now()) == "Monday" || DateFormat('EEEE').format(DateTime.now()) == "Friday")
    return "Chest And Triceps";
  else if (DateFormat('EEEE').format(DateTime.now()) == "Tuesday")
    return "Back And Biceps";
  else if (DateFormat('EEEE').format(DateTime.now()) == "Wednesday")
    return "Legs And Abs";
  else if (DateFormat('EEEE').format(DateTime.now()) == "Thursday")
    return "Back And Shoulders";
  else
    return "REST";
}