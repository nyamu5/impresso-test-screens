import 'package:flutter/material.dart';
import 'package:impresso_test/constants.dart';

class ValidationIconButton extends StatelessWidget {
  ValidationIconButton({@required this.icon, @required this.label, this.onTap});

  final Widget icon;
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            child: icon,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: kMutedTextColor),
          ),
        ],
      ),
    );
  }
}
