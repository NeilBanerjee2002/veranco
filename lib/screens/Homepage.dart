import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';

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
        backgroundColor: Colors.white,
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCardActive = !isCardActive;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        color: isCardActive ? activecolorbox : inactivecolorbox,
                        child: TextButton(
                          child: Text(
                            'All courses',
                            style: TextStyle(
                              color: isCardActive ? activecolortext : inactivecolortext,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isCardActive ? isCardActive = false :
                                  isCardActive = true;
                            });
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCardActive = !isCardActive;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        color: isCardActive ? activecolorbox : inactivecolorbox,
                        child: TextButton(
                          child: Text(
                            'Design',
                            style: TextStyle(
                              color: isCardActive ? activecolortext : inactivecolortext,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isCardActive ? isCardActive = false :
                              isCardActive = true;
                            });
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCardActive = !isCardActive;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        color: isCardActive ? activecolorbox : inactivecolorbox,
                        child: TextButton(
                          child: Text(
                            'Painting',
                            style: TextStyle(
                              color: isCardActive ? activecolortext : inactivecolortext,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isCardActive ? isCardActive = false :
                              isCardActive = true;
                            });
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCardActive = !isCardActive;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        color: isCardActive ? activecolorbox : inactivecolorbox,
                        child: TextButton(
                          child: Text(
                            'Digital Marketing',
                            style: TextStyle(
                              color: isCardActive ? activecolortext : inactivecolortext,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isCardActive ? isCardActive = false :
                              isCardActive = true;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
