import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  const CustomIcon({Key? key, required this.icon}) : super(key: key);
  final Icon icon;

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: () {
        // Handle button press
      },
    );
  }
}
