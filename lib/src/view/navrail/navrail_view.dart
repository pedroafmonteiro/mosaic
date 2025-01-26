import 'package:flutter/material.dart';

class NavRailView extends StatefulWidget {
  const NavRailView({super.key, this.selectedIndex = 0});

  final int selectedIndex;

  @override
  NavRailViewState createState() => NavRailViewState();
}

class NavRailViewState extends State<NavRailView> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.of(context).size.width >= 600;
    if (isWide) {
      return NavigationRail(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/settings');
              break;
          }
        },
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
