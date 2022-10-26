import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = Colors.red;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: Icon(
              Icons.person,
              color: Colors.white70,
              size: screenWidth / 4,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: screenHeight / 14,
              bottom: screenHeight / 14,
            ),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: screenWidth / 19,
                fontFamily: 'Lato-Bold',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: screenWidth / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'Employee ID',
                    style: TextStyle(
                      fontFamily: 'Lato-Bold',
                      fontSize: screenWidth / 29,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 2.5,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth / 13,
                        child: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight / 29,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
