import 'package:flutter/material.dart';
import '../text_styles.dart';

class Button extends StatelessWidget {
  final String parentState;
  final Function btnFunc;
  final String btnText;
  final IconData btnIcon;
  Button({
    required this.btnFunc,
    required this.parentState,
    required this.btnText,
    required this.btnIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(bottom: 24, top: 8, left: 24, right: 24),
              ),
              onPressed: () => btnFunc(btnText.toLowerCase()),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Icon(btnIcon, size: 32),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment(0, .9),
              child: Text(
                btnText,
                style: subWhiteText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
