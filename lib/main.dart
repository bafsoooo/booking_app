import "package:booking_app/screens/explore_screen.dart";
import "package:booking_app/screens/home_screen.dart";
import "package:booking_app/screens/planner_screen.dart";
import "package:booking_app/screens/profile_screen.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        scaffoldBackgroundColor: Colors.white,
        switchTheme: SwitchThemeData(
          trackOutlineColor: WidgetStateProperty.all(Colors.grey),
          trackOutlineWidth: WidgetStateProperty.all(1.5),
        ),
        textTheme: GoogleFonts.interTextTheme(
          
        ),
        useMaterial3: true,
        cardTheme: CardThemeData(
          color: Colors.white
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 73, 92, 245)
          ),
          selectedLabelStyle: TextStyle(
            color: Color.fromARGB(255, 73, 92, 245)
          )
        )
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final _screens = const [
    HomeScreen(),
    ExploreScreen(),
    PlannerScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Planner'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}