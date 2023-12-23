import 'package:flutter/material.dart';
import 'colors.dart';

class MyLearningCard extends StatefulWidget {
  const MyLearningCard({Key? key}) : super(key: key);

  @override
  State<MyLearningCard> createState() => _MyLearningCardState();
}

class _MyLearningCardState extends State<MyLearningCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Container(
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(14),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image(
                  image: NetworkImage(
                      'https://assets.entrepreneur.com/content/3x2/2000/20190326201928-GettyImages-633710081-edit.jpeg?format=pjeg&auto=webp&crop=16:9&width=675&height=380'),
                  height: 80,
                ),
              ),
              SizedBox(width: 7,),
              Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Product Design Course", style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                CircleAvatar(child: 
                  Image(image: NetworkImage('https://media.licdn.com/dms/image/C4D03AQH4HQvfkNFE0Q/profile-displayphoto-shrink_400_400/0/1559071611059?e=1708560000&v=beta&t=4WhulGdJXh4d_-4kuyNL_6m5R3PSdxHkMQc2r_k3Ltw'),
                  ),radius: 30,)
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
