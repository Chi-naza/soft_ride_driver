import 'package:flutter/material.dart';
import 'package:soft_ride_driver/tab_screens/earnings_screen.dart';
import 'package:soft_ride_driver/tab_screens/home_screen.dart';
import 'package:soft_ride_driver/tab_screens/profile_screen.dart';
import 'package:soft_ride_driver/tab_screens/ratings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  TabController? tabController;
  int selectedIndex = 0;

  // what happens when a tab is clicked
  void onItemClicked(int index){
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          EarningsScreen(),
          RatingsScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(        
        onTap: onItemClicked,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,   
        currentIndex: selectedIndex,     
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
        ),
        items: const [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // Earnings
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Earnings',
          ),
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Ratings',
          ),
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}