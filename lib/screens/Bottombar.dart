import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:jotry/screens/Dash_bord.dart';

import 'Home_page.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({Key? key}) : super(key: key);

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Home_page(),
    const Dash_bord(),
    const Text("routines from nav bar"),
    Text("page 4")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.black45,
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 50, right: 10, left: 10),
              height: a == true ? 300 : 150,
              width: 450,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/img.jpg"),
                          foregroundColor: Colors.black,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[300]),
                          child: Row(
                            children: const [
                              Icon(Icons.light_mode_outlined,
                                  color: Colors.red, size: 20),
                              SizedBox(width: 10),
                              Text("Feb 25th", style: TextStyle(fontSize: 13)),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = !a;
                            });
                          },
                          child: Icon(
                            a == true
                                ? Icons.add_home_rounded
                                : Icons.add_home_outlined,
                            size: 25,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning,", style: TextStyle(fontSize: 25)),
                          Text(
                            "user 1 !",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Scenes",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 450,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.red[100],
                                          child: Icon(
                                            Icons.music_note,
                                            color: Colors.redAccent,
                                          ),
                                          maxRadius: 30),
                                      SizedBox(height: 10),
                                      Text("Music"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.blueAccent[100],
                                        child: Icon(
                                          Icons.directions_walk_outlined,
                                          color: Colors.blue,
                                        ),
                                        maxRadius: 30,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Out Going"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Colors.deepPurpleAccent[100],
                                        child: Icon(
                                          Icons.nights_stay,
                                          color: Colors.deepPurple,
                                        ),
                                        maxRadius: 30,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Night"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Colors.lightGreenAccent[100],
                                        child: Icon(
                                          Icons.movie,
                                          color: Colors.lightGreen,
                                        ),
                                        maxRadius: 30,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Movie"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.black12,
                                          child: Icon(
                                            Icons.lock_outline,
                                            color: Colors.black,
                                          ),
                                          maxRadius: 30),
                                      SizedBox(height: 10),
                                      Text("lock"),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                          foregroundColor: Colors.blueGrey,
                                          child: Icon(Icons.lock_open),
                                          maxRadius: 30),
                                      SizedBox(height: 10),
                                      Text("unlock"),
                                    ],
                                  ),
                                ],
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
          ),
          Expanded(
            child: SingleChildScrollView(
              child: _widgetOptions[_selectedIndex],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(right: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.only(right: 10),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                // elevation: 10,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Colors.orange,
                // type: BottomNavigationBarType.fixed,
                unselectedItemColor: const Color(0xFF526480),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.house_outlined),
                      label: "home",
                      activeIcon: Icon(Icons.home_rounded)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard_outlined),
                      label: "dashboard",
                      activeIcon: Icon(Icons.dashboard)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time), label: "settings"),
                  // BottomNavigationBarItem(
                  //     icon: Icon(
                  //         Icons.settings), label: "settings"),
                ],
              ),
            )),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                dropdownDirection: DropdownDirection.textDirection,
                customButton: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Select room",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                customItemsHeights: [
                  ...List<double>.filled(MenuItems.firstItems.length, 48),
                  8,
                  ...List<double>.filled(MenuItems.secondItems.length, 48),
                ],
                items: [
                  ...MenuItems.firstItems.map(
                    (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                  const DropdownMenuItem<Divider>(
                      enabled: false, child: Divider()),
                  ...MenuItems.secondItems.map(
                    (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                ],
                onChanged: (value) {
                  MenuItems.onChanged(context, value as MenuItem);
                },
                itemHeight: 48,
                // itemPadding: const EdgeInsets.only(left: 10, right: 10),
                dropdownWidth: 160,
                dropdownPadding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orangeAccent,
                ),
                dropdownElevation: 8,
                offset: const Offset(1, 6),
              ),
            ),

            //drop up button
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [
    bedroom,
    share,
    settings,
  ];
  static const List<MenuItem> secondItems = [logout];

  static const bedroom =
      MenuItem(text: 'Bed Room', icon: Icons.bedroom_parent_rounded);
  static const share = MenuItem(text: 'Hall', icon: Icons.meeting_room_sharp);
  static const settings = MenuItem(text: 'Kitchen', icon: Icons.kitchen);
  static const logout =
      MenuItem(text: 'Bed room 2', icon: Icons.bedroom_parent_rounded);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.bedroom:
        print("Bed room selected");

        break;
      case MenuItems.settings:
        //Do something
        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.logout:
        //Do something
        break;
    }
  }
}
