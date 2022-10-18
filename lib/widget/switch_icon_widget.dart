import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utility/my_app_color.dart';

class SwitchIconWidget extends StatefulWidget {
  final Icon icon;
  final String iconText;

  const SwitchIconWidget(
      {super.key, required this.icon, required this.iconText});

  @override
  State<SwitchIconWidget> createState() => _SwitchIconWidgetState();
}

class _SwitchIconWidgetState extends State<SwitchIconWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Container(
      child: Row(
        children: [
          // Our icon
          widget.icon,
          SizedBox(
            width: w * 0.02,
          ),
          // Our text
          Text(
            widget.iconText,
            style: TextStyle(
              fontSize: h * 0.02,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          // the switch
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: MyAppColors.appWhite,
            inactiveThumbColor: MyAppColors.appWhite,
            dragStartBehavior: DragStartBehavior.start,
            activeTrackColor: MyAppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
