import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/views/screens/cart_screen.dart';
import 'package:ecommerce_app/views/screens/categories_screen.dart';
import 'package:ecommerce_app/views/screens/dashboard_screen.dart';
import 'package:ecommerce_app/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = _buildScreens();

    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * 0.05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Pallete.whiteColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Pallete.gradient1.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * 0.05),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              if (mounted) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .32
                        : displayWidth * .15,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? displayWidth * .12 : 0,
                      width: index == currentIndex ? displayWidth * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Pallete.gradient1.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: const TextStyle(
                                  color: Pallete.gradient1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == currentIndex
                                  ? Pallete.gradient1
                                  : Pallete.backgroundColor),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> listOfStrings = [
  'Home',
  'Category',
  'Cart',
  'Profile',
];

List<IconData> listOfIcons = [
  Icons.home,
  Icons.category,
  Icons.shopping_cart,
  Icons.person,
];

List<Widget> _buildScreens() {
  return [
    DashBoardScreen(),
    CategoriesScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
}
