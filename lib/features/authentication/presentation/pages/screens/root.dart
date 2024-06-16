import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:authentication/features/authentication/presentation/pages/const/constants.dart';
import 'package:authentication/features/authentication/presentation/pages/models/plant.dart';
import 'package:authentication/features/authentication/presentation/pages/screens/cart_page.dart';
import 'package:authentication/features/authentication/presentation/pages/screens/favorite_page.dart';
import 'package:authentication/features/authentication/presentation/pages/home_page.dart';
import 'package:authentication/features/authentication/presentation/pages/screens/profile_page.dart';
import 'package:authentication/features/authentication/presentation/pages/screens/scan_page.dart';

class RootPage extends StatefulWidget {
  final int bottomIndex;
  const RootPage({super.key, required this.bottomIndex});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int? bottomIndex;

  @override
  initState() {
    super.initState();
    bottomIndex = widget.bottomIndex;
  }

  List<Plant> favorite = [];
  List<Plant> myCart = [];

  List<Widget> pages() {
    return [
      const HomePage(),
      FavoritePage(
        favoritePlants: favorite,
      ),
      CartPage(
        cartPlants: myCart,
      ),
      const ProfilePage(),
    ];
  }

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  List<String> appBarTitle = [
    'Home',
    'Favorites',
    'Shopping Cart',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.notifications,
                color: Constants.blackColor,
                size: 30,
              ),
              Text(
                appBarTitle[bottomIndex!],
                style: TextStyle(
                    color: Constants.blackColor,
                    fontFamily: 'Verdana',
                    fontSize: 20,
                    height: 2.5,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: IndexedStack(
        index: bottomIndex!,
        children: pages(),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(eccentricity: 1),
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
                child: const ScanPage(), type: PageTransitionType.bottomToTop),
          );
        },
        backgroundColor: Constants.primaryColor,
        child: Image.asset(
          'assets/images/code-scan-two.png',
          height: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Constants.primaryColor,
        activeColor: Constants.primaryColor,
        activeIndex: bottomIndex!,
        inactiveColor: Colors.black.withOpacity(0.5),
        gapLocation: GapLocation.center,
        icons: iconList,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
            final List<Plant> favoritedPlants = Plant.getFavoritedPlants();
            final List<Plant> addedToCartPlants = Plant.addedToCartPlants();

            favorite = favoritedPlants.toSet().toList();
            myCart = addedToCartPlants.toSet().toList();
          });
        },
      ),
    );
  }
}