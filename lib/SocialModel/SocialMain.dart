import 'dart:ui';

import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SocialMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox')
      ),
      body: Container(

      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}


