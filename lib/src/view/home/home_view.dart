import 'package:flutter/material.dart';
import 'package:mosaic/src/view/navbar/navbar_view.dart';
import 'package:mosaic/src/view/navrail/navrail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: NavBarView(selectedIndex: 0),
      body: Row(
        children: [
          NavRailView(selectedIndex: 0),
          Expanded(
            child: Center(
              child: Text('Home'),
            ),
          ),
        ],
      )
    );
  }
}
