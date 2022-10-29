import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = Colors.red;
  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible =
        KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          isKeyboardVisible
              ? SizedBox(height: screenHeight / 14)
              : Container(
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
              top: screenHeight / 16,
              bottom: screenHeight / 17,
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
            margin: EdgeInsets.symmetric(horizontal: screenWidth / 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                fieldTitle('Employee ID'),
                customField('Employee ID required here', idController, false),
                fieldTitle('Password'),
                customField('Password required here', passController, true),
                Container(
                  height: 55,
                  width: screenWidth,
                  margin: EdgeInsets.only(top: screenHeight / 38),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Lato-Bold',
                        fontSize: screenWidth / 24,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

//  Making A Widgets Reusable
  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 11),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Lato-Bold',
          fontSize: screenWidth / 29,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

//  Widgets Customfield Reusable
  Widget customField(
      String guess, TextEditingController controller, bool obscure) {
    return Container(
      width: screenWidth,
      margin: const EdgeInsets.only(bottom: 11),
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
            width: screenWidth / 7,
            child: Icon(
              Icons.person,
              color: primary,
              size: screenWidth / 14,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 5),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight / 28,
                  ),
                  border: InputBorder.none,
                  hintText: guess,
                ),
                maxLines: 1,
                obscureText: obscure,
              ),
            ),
          )
        ],
      ),
    );
  }
}
