import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';
import 'package:veranco/utils/icon_list.dart';

class CoursePreviewScreen extends StatelessWidget {
  const CoursePreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    CustomIcon(
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                    CustomIcon(icon: Icon(Icons.share)),
                    CustomIcon(icon: Icon(Icons.shopping_cart_outlined)),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                        image: NetworkImage(
                            'https://static.wixstatic.com/media/e96e28_4b3ac3d5c87e495e9416d11085af7223~mv2.jpg/v1/fill/w_512,h_341,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/animations_primary.jpg')),
                    Positioned(
                      top: 50,
                      right: 125,
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 150,
                      ),
                    ),
                    Positioned(
                        top: 240, right: 140,
                    child: Text('Preview this course',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
                  ],
                ),
                SizedBox(height: 8,),
                Row(children: [
                  Text('Product Design',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Spacer(),
                  Text('₹ 1500',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: primaryColor),),
                ],),
                SizedBox(height: 8,),
                Text('Description'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
