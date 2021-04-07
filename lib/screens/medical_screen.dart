import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';

class MedicalScreen extends StatelessWidget {
  static String id = 'medical_screen';

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
                      'Medical Records',
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
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
