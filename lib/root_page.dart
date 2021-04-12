import 'package:flutter/material.dart';
import 'package:instarcopy/login_page.dart';
import 'package:instarcopy/tap_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return TapPage(snapshot.data);
        } else {
          return LoginPage();
        }
      },
    );
  }
}
