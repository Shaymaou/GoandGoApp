import 'package:flutter/material.dart';
import 'package:goandgoapp/Profile/profile.dart';
import '../../Chat/screens/chat_screen.dart';
import '../../Travelers/AvailableTravalersScreen.dart';
import '../widgets/bottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildScreen() {
    switch (_currentIndex) {
      case 0://Cars
        return const Placeholder();
      case 1: //traveler
        return const AvailableTravelerScreen();
      case 2://Home
        return const Placeholder();
      case 3://chat
        return const ChatScreen();
      case 4://profile
        return const ProfileScreen();
      default:
        return const Placeholder();
    }
  }
}
