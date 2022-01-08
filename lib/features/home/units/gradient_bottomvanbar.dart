part of '../view.dart';

Widget _GradientBottomNavBar() {
  return Container(
    decoration: BoxDecoration(
      gradient: gradient2,
    ),
    child: BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
      selectedItemColor: Colors.white,
      currentIndex: 0,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/bottom_nav/package.png',
            width: 20,
            height: 20,
          ),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/bottom_nav/home.png',
            width: 20,
            height: 20,
          ),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/bottom_nav/user.png',
            width: 20,
            height: 20,
          ),
          label: '.',
        ),
      ],
    ),
  );
}
