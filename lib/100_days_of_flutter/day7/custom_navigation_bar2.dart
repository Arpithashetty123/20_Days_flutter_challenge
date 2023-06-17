  /*This is only for bottom navigation bar*/
 
import 'package:flutter/material.dart';
class CustomNavigationBarOption extends StatefulWidget {
  @override
  _CustomNavigationBarStateOption createState() => _CustomNavigationBarStateOption();
}
class _CustomNavigationBarStateOption extends State<CustomNavigationBarOption> {
    int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Align(
        alignment: Alignment.bottomCenter,
        child: BottomNavigationBar(
            selectedItemColor:  Colors.black,
            unselectedItemColor: Color.fromARGB(255, 23, 23, 24).withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 183, 183, 245),
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: _onTabSelected,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'Profile',
              ),
            
            ],
          ),
      ),
    );
  }
}