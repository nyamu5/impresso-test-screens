import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/screens/nationalID_screen.dart';

class VerifyScreen extends StatelessWidget {
  static String id = 'verify_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Verify Identity',
                      style: TextStyle(
                        height: 2,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Select Type of Submitted Document',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ValidationIconButton(
                      icon: Hero(
                        tag: 'id_icon',
                        child: Image.asset('assets/id_icon.png'),
                      ),
                      label: 'National ID',
                      onTap: () {
                        Navigator.pushNamed(context, NationalIdScreen.id);
                      },
                    ),
                    ValidationIconButton(
                        icon: Image.asset('assets/dl_icon.png'),
                        label: 'Driver\'s License'),
                    ValidationIconButton(
                        icon: Image.asset('assets/passport_icon.png'),
                        label: 'Passport'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              NextBtn(),
              BackBtn(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
