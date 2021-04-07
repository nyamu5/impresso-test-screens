import 'package:flutter/material.dart';
import 'package:impresso_test/components/back_button.dart';
import 'package:impresso_test/components/next_button.dart';
import 'package:impresso_test/constants.dart';

class NationalIdScreen extends StatelessWidget {
  static String id = 'nationalID_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'id_icon',
                      child: Image.asset(
                        'assets/id_icon.png',
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'National ID',
                      style: TextStyle(
                        height: 2,
                        fontSize: 12,
                        color: kMutedTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('assets/sampleId_icon.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Text(
                      'Upload your ID photo. \nYour ID photo must be recognizable from your profile photo.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'We accept only: \nDriver\'s license or any institutional government issued ID with photo.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'JPEG, PDF and PNG files Only. File size shouldn’t exceed 10MB. Maximum 6 Files.',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
