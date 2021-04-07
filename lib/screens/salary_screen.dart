import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/constants.dart';

class SalaryScreen extends StatelessWidget {
  static String id = 'salary_screen';

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
                      'Salary',
                      style: TextStyle(
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
                      icon: Image.asset('assets/badge_icon.png'),
                      label: 'Latest Monthly \nSalary Slip',
                    ),
                    ValidationIconButton(
                        icon: Image.asset('assets/contract_icon.png'),
                        label: 'Annual Income \nTax Slip'),
                    ValidationIconButton(
                        icon: Image.asset('assets/letter_icon.png'),
                        label: 'Others'),
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
                        'Other type of documents that can prove your salary income.',
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
