import 'package:disney_plus_clone_main_page/colors.dart';
import 'package:disney_plus_clone_main_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  var pageList = [const HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: disneyBackColor,
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.download,),label: "",),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(3), // Border width
              decoration: BoxDecoration( color: Colors.white70,borderRadius: BorderRadius.circular(50)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50), // Image border
                child: Image.asset("pictures/profile.png"),
              ),
            ),label: "",
          ),
        ],
        onTap: (index){
          setState(() {
            //selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        backgroundColor: disneyBackColor,
        elevation: 10,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
