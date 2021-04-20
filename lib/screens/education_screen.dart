import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/constants.dart';

class EducationScreen extends StatelessWidget {
  static String id = 'education_screen';

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
                  children: [
                    Text(
                      'Education',
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
                flex: 2,
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: [
                    ValidationIconButton(
                      icon: Image.asset('assets/certificate_icon.png'),
                      label: 'Certificate',
                    ),
                    ValidationIconButton(
                        icon: Image.asset('assets/contract_icon.png'),
                        label: 'Degree'),
                    ValidationIconButton(
                        icon: Image.asset('assets/masters_icon.png'),
                        label: 'Masters'),
                    ValidationIconButton(
                        icon: Image.asset('assets/phd_icon.png'), label: 'PhD'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
