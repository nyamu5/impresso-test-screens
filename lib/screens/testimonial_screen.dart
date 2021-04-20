import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/constants.dart';

class TestimonialScreen extends StatelessWidget {
  static String id = 'testimonial_screen';

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
                      'Testimonial',
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
                      icon: Image.asset('assets/company_icon.png'),
                      label: 'Company / Educational \nTestimonial',
                    ),
                    ValidationIconButton(
                        icon: Image.asset('assets/job_icon.png'),
                        label: 'CV / Resume \nReferences'),
                    ValidationIconButton(
                        icon: Image.asset('assets/recommendations_icon.png'),
                        label: 'Recommendations'),
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
