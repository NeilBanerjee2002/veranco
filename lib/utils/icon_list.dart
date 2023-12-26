import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  const CustomIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final Icon icon;
  final VoidCallback? onPressed;

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: widget.onPressed,
    );
  }
}
