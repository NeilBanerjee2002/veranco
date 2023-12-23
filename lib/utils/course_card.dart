import 'package:flutter/material.dart';
import 'colors.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  final activecolortext = Colors.white;
  final activecolorbox = primaryColor;
  final inactivecolorbox = Colors.white;
  final inactivecolortext = primaryColor;
  bool isCardActive = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          isCardActive = !isCardActive;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        color: isCardActive ? activecolorbox : inactivecolorbox,
        child: TextButton(
          child: Text(
            widget.title,  // Accessing the title using widget.title
            style: TextStyle(
              color: isCardActive ? activecolortext : inactivecolortext,
            ),
          ),
          onPressed: () {
            setState(() {
              isCardActive ? isCardActive = false : isCardActive = true;
            });
          },
        ),
      ),
    );
  }
}
