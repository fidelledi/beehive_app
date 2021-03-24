import 'package:flutter/material.dart';

class articlesMain extends StatefulWidget {
  @override
  _articlesMain createState() => _articlesMain();
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}

class _articlesMain extends State<articlesMain> {
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(hexColor('#F8CD81')),
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: Image.asset(
            'assets/icons/back_icon.png',
            color: Color(
              hexColor('#14142A'),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20, left: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Articles",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Semibold',
                      color: Color(hexColor('#333333')),
                      fontSize: 24,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua.",
                style: TextStyle(
                  fontFamily: 'SF-Pro-Thin',
                  color: Color(
                    hexColor('#6E7191'),
                  ),
                  fontSize: 14,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 24),
                child: Container(
                  height: 210,
                  width: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 24,
                        offset: Offset(0, 24), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 45,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit\namet, consectetur",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              color: Color(
                                hexColor('#14142A'),
                              ),
                              fontSize: 20,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Text(
                            "Author",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Regular',
                              color: Color(
                                hexColor('#6E7191'),
                              ),
                              fontSize: 13,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Container(
                  height: 210,
                  width: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 24,
                        offset: Offset(0, 24), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 45,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit\namet, consectetur",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              color: Color(
                                hexColor('#14142A'),
                              ),
                              fontSize: 20,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Text(
                            "Author",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Regular',
                              color: Color(
                                hexColor('#6E7191'),
                              ),
                              fontSize: 13,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Container(
                  height: 210,
                  width: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 24,
                        offset: Offset(0, 24), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 45,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit\namet, consectetur",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              color: Color(
                                hexColor('#14142A'),
                              ),
                              fontSize: 20,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Text(
                            "Author",
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Regular',
                              color: Color(
                                hexColor('#6E7191'),
                              ),
                              fontSize: 13,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
