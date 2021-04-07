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
                flex: 3,
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  children: [
                    ValidationIconButton(
                      icon: Image.asset('assets/badge_icon.png'),
                      label: 'Job',
                    ),
                    ValidationIconButton(
                        icon: Image.asset('assets/contract_icon.png'),
                        label: 'Official ID'),
                    ValidationIconButton(
                        icon: Image.asset('assets/letter_icon.png'),
                        label: 'References'),
                    ValidationIconButton(
                        icon: Image.asset('assets/registration_icon.png'),
                        label: 'Salary'),
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
