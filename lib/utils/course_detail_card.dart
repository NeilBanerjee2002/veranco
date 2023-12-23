import 'package:flutter/material.dart';
import 'colors.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Container(
          height: 260, width: 300,
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image(
                  image: NetworkImage(
                      'https://assets.entrepreneur.com/content/3x2/2000/20190326201928-GettyImages-633710081-edit.jpeg?format=pjeg&auto=webp&crop=16:9&width=675&height=380'),
                ),
              ),
              SizedBox(height: 7,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Product Design Course", style: TextStyle(fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(image: NetworkImage('https://img-c.udemycdn.com/user/200_H/4466306_6fd8_3.jpg'),
                    height: 40, width: 50,),
                  ),
                  Column(
                    children: [
                      Text("   Colt Steele", style: TextStyle(fontWeight: FontWeight.w500),),
                      Text("Educator", style: TextStyle(fontWeight: FontWeight.w300),),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Icon(Icons.star, color: ctaColor,),
                  Text('4.8', style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
