import 'package:cours/model/user.dart';
import 'package:cours/pages/login_screen.dart';
import 'package:cours/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
    
    
class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final LocalUser user = Provider.of<LocalUser>(context);
    final bool isLoggedIn = user != null;

    return isLoggedIn ? ProfileScreen() : LoginView();

  }
}
