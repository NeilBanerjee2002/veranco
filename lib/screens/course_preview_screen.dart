import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';
import 'package:veranco/utils/icon_list.dart';
import 'package:veranco/snackbars&alerts/added_to_wishlist.dart';

class CoursePreviewScreen extends StatefulWidget {
  const CoursePreviewScreen({Key? key}) : super(key: key);

  @override
  _CoursePreviewScreenState createState() => _CoursePreviewScreenState();
}

class _CoursePreviewScreenState extends State<CoursePreviewScreen> {
  bool isIconPressed = false; // State to track if the icon is pressed

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkWhiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
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
                          icon: Icon(
                            isIconPressed
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isIconPressed ? Colors.red : null,
                          ),
                          onPressed: () {
                            setState(() {
                              isIconPressed = !isIconPressed;
                            });
                            showBottomDialog(context, 'Course added to wishlist');
                          },
                        ),
                        CustomIcon(icon: Icon(Icons.share)),
                        CustomIcon(
                          icon: Icon(Icons.shopping_cart_outlined),
                          onPressed: () {
                            showBottomDialog(context, 'Course added to Cart');
                          },
                        ),
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
                            top: 240,
                            right: 140,
                            child: Text('Preview this course',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          'Product Design',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          '₹ 1500',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Description'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet. Rem nostrum doloribus aut nobis magni ea debitis quam aut repellat molestiae et repudiandae rerum. Ab modi laborum ea fugiat animi et soluta obcaecati.'),
                    Text(
                      'Read More',
                      style: TextStyle(color: primaryColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          '4.8',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: ctaColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: ctaColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: ctaColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: ctaColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.star_border),
                      ],
                    ),
                    Text('(4k ratings) 32k students'),
                    Row(
                      children: [
                        Text(
                          '5h 33m',
                          style: TextStyle(color: primaryColor),
                        ),
                        Text('| 45 Lessons'),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text('Created by '),
                        Text(
                          'Colt Steele',
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.settings_voice_sharp),
                        Text('English'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.subtitles_rounded),
                        Text('Last updated 10/2023'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.event_available_rounded),
                        Text('English, Hindi, French & Simplified Chinese'),
                      ],
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  color: Colors.white70,
                                  width: 190,
                                  height: 50,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Course Content')
                                  ),
                                ),
                                Container(
                                  width: 190,
                                  height: 50,
                                  color: blueishWhiteColor,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text('Reviews',
                                      style: TextStyle(color: darkGrayColor),)
                                  ),
                                )
                              ],
                            ),
                            Container(
                              color: Colors.white70,
                              width: 380,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Section 2: Introduction'),
                                        Text('3/5 unit · 14 min',
                                        style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_drop_down_rounded),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white70,
                              width: 380,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Section 2: Introduction'),
                                        Text('3/5 unit · 14 min',
                                          style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_drop_down_rounded),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white70,
                              width: 380,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Section 2: Introduction'),
                                        Text('3/5 unit · 14 min',
                                          style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_drop_down_rounded),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: ctaColor,
                      child: Center(child: Text('Buy Now')),
                    ),
                  ),
                ),),
      ],
          ),
        ),
      ),
    );
  }
}
