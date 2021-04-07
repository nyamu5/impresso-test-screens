import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/constants.dart';
import 'package:impresso_test/screens/education_screen.dart';
import 'package:impresso_test/screens/job_screen.dart';
import 'package:impresso_test/components/validate_icon_button.dart';
import 'package:impresso_test/screens/medical_screen.dart';
import 'package:impresso_test/screens/salary_screen.dart';
import 'package:impresso_test/screens/testimonial_screen.dart';
import 'package:impresso_test/screens/verify_screen.dart';

class ValidationScreen extends StatelessWidget {
  static String id = 'validationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 35, 15, 20),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Validation',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Alexandra van \nWolfeschlegelsteinzuipoa',
                            style: TextStyle(
                              color: kNameTextColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Pharmaceutical Science Specialisto',
                            style: TextStyle(
                              fontSize: 11,
                              color: kMutedTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Hewlett-Packard International \nCorporation of Industrial Clean \nEnergy',
                            style: TextStyle(
                              fontSize: 10,
                              color: kMutedTextColor,
                            ),
                          ),
                        ),
                        Text(
                          'Lausanne',
                          style: TextStyle(
                            fontSize: 10,
                            color: kMutedTextColor,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        VerifiedIcon(),
                        VerifiedIcon(),
                      ],
                    ),
                    LevelBadge(),
                    Flexible(
                      child: Image.asset(
                        'assets/profile_photo.png',
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Select to Validate',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  crossAxisCount: 3,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  children: [
                    ValidationIconButton(
                      icon: Image.asset('assets/job_icon.png'),
                      label: 'Job',
                      onTap: () {
                        Navigator.pushNamed(context, JobScreen.id);
                      },
                    ),
                    ValidationIconButton(
                      icon: Image.asset('assets/verify_icon.png'),
                      label: 'Official ID',
                      onTap: () {
                        Navigator.pushNamed(context, VerifyScreen.id);
                      },
                    ),
                    ValidationIconButton(
                      icon: Image.asset('assets/references_icon.png'),
                      label: 'References',
                      onTap: () {
                        Navigator.pushNamed(context, TestimonialScreen.id);
                      },
                    ),
                    ValidationIconButton(
                      icon: Image.asset('assets/salary_icon.png'),
                      label: 'Salary',
                      onTap: () {
                        Navigator.pushNamed(context, SalaryScreen.id);
                      },
                    ),
                    ValidationIconButton(
                      icon: Image.asset('assets/education_icon.png'),
                      label: 'Education',
                      onTap: () {
                        Navigator.pushNamed(context, EducationScreen.id);
                      },
                    ),
                    ValidationIconButton(
                      icon: Image.asset('assets/medical_icon.png'),
                      label: 'Medical',
                      onTap: () {
                        Navigator.pushNamed(context, MedicalScreen.id);
                      },
                    ),
                  ],
                ),
              ),
              BackBtn()
            ],
          ),
        ),
      ),
    );
  }
}

class LevelBadge extends StatelessWidget {
  const LevelBadge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Image.asset(
        'assets/S1_icon.png',
        width: 20,
      ),
    );
  }
}

class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Image.asset(
        'assets/checked_icon.png',
        width: 13,
      ),
    );
  }
}
