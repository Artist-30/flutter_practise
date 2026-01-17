import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  final String btnName;
  final Icon? btnIcon;
  final Color? btnbgColor;
  final TextStyle? btnTextStyle;
  final VoidCallback? btnCallBack;

  const RoundedBtn({super.key, 
    required this.btnName,
    this.btnIcon,
    this.btnbgColor = Colors.blue,
    this.btnTextStyle,
    this.btnCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        btnCallBack!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: btnbgColor!,
        shadowColor: btnbgColor!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
      child: btnIcon != null
          ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                btnIcon!,
                SizedBox(width: 11),
                Text(btnName, style: btnTextStyle),
              ],
            )
          : Text(btnName, style: btnTextStyle),
    );
  }
}
