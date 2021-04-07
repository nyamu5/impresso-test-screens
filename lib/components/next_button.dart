import 'package:flutter/material.dart';

class NextBtn extends StatelessWidget {
  NextBtn({this.onTap, this.label = 'NEXT'});

  final String label;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: OutlinedButton(
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(width: 1, color: Colors.white),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
