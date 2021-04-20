import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/constants.dart';

class JobScreen extends StatelessWidget {
  static String id = 'job_screen';

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
                      'Job',
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: kMutedTextColor,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        'Only Company Badge dated within the last 6 months will be accepted.',
                        style: TextStyle(
                          fontSize: 10,
                          color: kMutedTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
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
