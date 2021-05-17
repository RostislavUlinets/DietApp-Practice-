import 'package:cours/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as Math;



class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final model = Provider.of<HomeModel>(context);
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: Color(0xFF616161)
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height/3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: model.isValid ? Icons.check : null,
                  onChanged: (value) {
                    model.isValidEmail(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFieldWidget(
                      hintText: 'Password',
                      obscureText: model.isVisible ? false : true,
                      prefixIconData: Icons.lock_outline,
                      suffixIconData: model.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: ButtonWidget(
                    title: 'Login',
                    hasBorder: false,
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                     return ProfileScreen(); 
                    }));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonWidget(
                  title: 'Sing Up',
                  hasBorder: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData, suffixIconData;
  final bool obscureText;
  final Function onChanged;

  const TextFieldWidget(
      {Key key,
      this.hintText,
      this.prefixIconData,
      this.suffixIconData,
      this.obscureText,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      style: TextStyle(
        color: Color(0xFF616161),
        fontSize: 14,
      ),
      cursorColor: Color(0xFF616161),
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Color(0xFF616161),
        ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF616161),),),
        suffixIcon: GestureDetector(
          onTap: () {
            model.isVisible = !model.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: Color(0xFF616161),
          ),
        ),
        labelStyle: TextStyle(color: Color(0xFF616161),),
        focusColor: Color(0xFF616161),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;

  const ButtonWidget({Key key, this.title, this.hasBorder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Colors.white : Color(0xFF616161),
          borderRadius: BorderRadius.circular(10),
          border: hasBorder
              ? Border.all(
                  color: Color(0xFF616161),
                  width: 1,
                )
              : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? Color(0xFF616161) : Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeModel extends ChangeNotifier {
  get isVisible => _isVisible;
  bool _isVisible = false;

  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;

  void isValidEmail(String input) {
    if (input == 'Admin') {
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }
}

class WaveWidget extends StatefulWidget {
  final size;
  final double yOffset;
  final Color color;

  const WaveWidget({Key key, this.size, this.yOffset, this.color})
      : super(key: key);

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget> with TickerProviderStateMixin {
  AnimationController animationController;
  List<Offset> wavePoints = [];

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 5000))
          ..addListener(() {
            wavePoints.clear();
            final double waveSpeed = animationController.value * 1080;
            final double fullSphere = animationController.value * Math.pi * 2;
            final double normalizer = Math.cos(fullSphere);
            final double waveWidth = Math.pi / 270;
            final double waveHeight = 20.0;

            for (int i = 0; i <= widget.size.width.toInt(); ++i) {
              double calc = Math.sin((waveSpeed - i) * waveWidth);

              wavePoints.add(
                Offset(
                  i.toDouble(),
                  calc * waveHeight * normalizer + widget.yOffset,
                ),
              );
            }
          });
    animationController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _){
        return ClipPath(
          clipper: ClipperWidget(
            waveList: wavePoints,
          ),
          child: Container(
            width: widget.size.width,
            height: widget.size.height,
            color: widget.color,
          ),
        );
      },
    );
  }
}

class ClipperWidget extends CustomClipper<Path> {
  final List<Offset> waveList;

  ClipperWidget({this.waveList});

  @override
  getClip(Size size) {
    final Path path = Path();
    path.addPolygon(waveList, false);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
