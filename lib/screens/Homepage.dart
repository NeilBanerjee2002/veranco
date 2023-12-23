import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';
import 'package:veranco/utils/course_card.dart';
import 'package:veranco/utils/course_detail_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  final activecolortext = Colors.white;
  final activecolorbox = primaryColor;
  final inactivecolorbox = Colors.white;
  final inactivecolortext = primaryColor;
  bool isCardActive = false;

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: lightGrayColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome', style: TextStyle(color: darkGrayColor)),
                        Text('Name of the user'),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-icon/user_318-563642.jpg?w=360'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: inputborder,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.filter_list),
                      onPressed: () {
                        print("Filter button pressed");
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    CourseCard(title: 'All courses',),
                    CourseCard(title: 'Design',),
                    CourseCard(title: 'Painting',),
                    CourseCard(title: 'Degital Marketing',),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseDetail(),
                    CourseDetail(),
                    CourseDetail(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
