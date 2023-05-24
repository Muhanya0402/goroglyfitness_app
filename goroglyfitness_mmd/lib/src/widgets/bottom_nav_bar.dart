import 'package:app/src/widgets/blut_filter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubits/navigation_tab_cubit.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: SafeArea(
          child: GNav(
            tabBorderRadius: 15,
            gap: 8,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            tabMargin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            activeColor: Colors.white,
            iconSize: 26,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 14),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.redAccent.shade700,
            color: Colors.white,
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Главная',
              ),
              GButton(
                icon: Icons.receipt,
                text: 'Расписание',
              ),
              GButton(
                icon: Icons.newspaper,
                text: 'Новости',
              ),
              GButton(
                icon: Icons.person,
                text: 'Профиль',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Настройки',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;

                switch (index) {
                  case 0:
                    context.go('/home');
                    break;
                  case 1:
                    context.go('/schedule');
                    break;
                  case 2:
                    context.go('/news');
                    break;
                  case 3:
                    context.go('/profile');
                    break;
                  case 4:
                    context.go('/settings');
                    break;
                  default:
                    context.go('/');
                    break;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}

// class BottomNavBar extends StatefulWidget {
//   BottomNavBar({super.key});
//
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;
//
//   double _iconHeight = 25;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         // color: Colors.black87,
//       ),
//       child: BottomNavyBar(
//         showElevation: true,
//         containerHeight: 70,
//         itemCornerRadius: 20,
//         animationDuration: const Duration(milliseconds: 250),
//         backgroundColor: Colors.black,
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//             activeColor: Colors.redAccent.shade700,
//             icon: Image.asset(
//               'icons/bottom_navigation_bar_icons/home.png',
//               height: _iconHeight,
//             ),
//             title: Text(
//               'Home',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           BottomNavyBarItem(
//             activeColor: Colors.redAccent.shade700,
//             icon: Image.asset(
//               'icons/bottom_navigation_bar_icons/schedule.png',
//               height: _iconHeight,
//             ),
//             title: Text(
//               'Schedule',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           BottomNavyBarItem(
//             activeColor: Colors.redAccent.shade700,
//             icon: Image.asset(
//               'icons/bottom_navigation_bar_icons/news.png',
//               height: _iconHeight,
//             ),
//             title: Text(
//               'News',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           BottomNavyBarItem(
//             activeColor: Colors.redAccent.shade700,
//             icon: Image.asset(
//               'icons/bottom_navigation_bar_icons/profile.png',
//               height: _iconHeight,
//             ),
//             title: Text(
//               'Profile',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           BottomNavyBarItem(
//             activeColor: Colors.redAccent.shade700,
//             icon: Image.asset(
//               'icons/bottom_navigation_bar_icons/settings.png',
//               height: _iconHeight,
//             ),
//             title: Text(
//               'Settings',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//         selectedIndex: _currentIndex,
//         onItemSelected: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//
//           switch (index) {
//             case 0:
//               context.go('/home');
//               break;
//             case 1:
//               context.go('/schedule');
//               break;
//             case 2:
//               context.go('/news');
//               break;
//             case 3:
//               context.go('/profile');
//               break;
//             case 4:
//               context.go('/settings');
//               break;
//             default:
//               context.go('/');
//               break;
//           }
//         },
//       ),
//     );
//   }
// }
