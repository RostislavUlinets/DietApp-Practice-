import 'package:intl/intl.dart';

class UpperBodyWorkout{
  final String imagePath,name,instruction;
  UpperBodyWorkout({this.imagePath, this.name,this.instruction});
}

List work() {
  if(DateFormat('EEEE').format(DateTime.now()) == "Monday" || DateFormat('EEEE').format(DateTime.now()) == "Friday") {
    final upperBody = [
      [
        UpperBodyWorkout(
          imagePath: "assets/chest_icon.png",
          name: "Bench press",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/chest_icon.png",
          name: "Triceps dip",
          instruction: "5 sets - 8 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/chest_icon.png",
          name: "Incline dumbbell press",
          instruction: "3 sets - 12 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/chest_icon.png",
          name: "Incline dumbbell flye",
          instruction: "3 sets - 15 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/chest_icon.png",
          name: "Triceps extension",
          instruction: "3 sets - 15 repitions",
        ),
      ],
    ];
    return upperBody;
  }
  else if (DateFormat('EEEE').format(DateTime.now()) == "Tuesday") {
    final upperBody = [
      [
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Pull-up ",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Bent-over row",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/hand_biceps.png",
          name: "Chin-up",
          instruction: "3 sets - 8 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/hand_biceps.png",
          name: "Standing biceps curl",
          instruction: "3 sets - 12 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/hand_biceps.png",
          name: "Seated incline curl",
          instruction: "3 sets - 12 repitions",
        ),
      ],
    ];
    return upperBody;
  }
  else if (DateFormat('EEEE').format(DateTime.now()) == "Wednesday"){
    final upperBody = [
      [
        UpperBodyWorkout(
          imagePath: "assets/men-legs.png",
          name: "Back squat ",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/men-legs.png",
          name: "Good morning",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/abs.png",
          name: "Hip thrust",
          instruction: "3 sets - 8 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/abs.png",
          name: "Incline dumbbell press",
          instruction: "3 sets - 12 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/abs.png",
          name: " Incline dumbbell flye",
          instruction: "3 sets - 12 repitions",
        ),
      ],
    ];
    return upperBody;
  }
  else if (DateFormat('EEEE').format(DateTime.now()) == "Thursday"){
    final upperBody = [
      [
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Overhead press ",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Rack pull",
          instruction: "5 sets - 10 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Seated dumbbell press",
          instruction: "3 sets - 8 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Lateral raise",
          instruction: "3 sets - 12 repitions",
        ),
        UpperBodyWorkout(
          imagePath: "assets/back.png",
          name: "Reverse flye",
          instruction: "3 sets - 12 repitions",
        ),
      ],
    ];
    return upperBody;
  }
  else{
    final upperBody = [
      [
        UpperBodyWorkout(
          imagePath: "assets/slumber.png",
          name: "Rest",
          instruction: "Have a nice day",
        ),
        UpperBodyWorkout(
          imagePath: "assets/slumber.png",
          name: "Rest",
          instruction: "Have a nice day",
        ),
        UpperBodyWorkout(
          imagePath: "assets/slumber.png",
          name: "Rest",
          instruction: "Have a nice day",
        ),
        UpperBodyWorkout(
          imagePath: "assets/slumber.png",
          name: "Rest",
          instruction: "Have a nice day",
        ),
        UpperBodyWorkout(
          imagePath: "assets/slumber.png",
          name: "Rest",
          instruction: "Have a nice day",
        ),
      ],
    ];
    return upperBody;
  }


}