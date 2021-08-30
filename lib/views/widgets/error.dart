import 'package:d_mount/theme.dart';
import 'package:flutter/material.dart';

class ErrorTxt extends StatelessWidget {
  final String message;
  final Function? onTap;
  ErrorTxt({required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: InkWell(
          onTap: (){},
          child: Container(
            child: Text(message,
              style: blackTitle.copyWith(
                color: Colors.red,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
