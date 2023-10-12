import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/create_screen/pre_create_screen/pre_create_screen.dart';
import 'package:quality_quest/presentation/screens/profile_screen/profile_screen.dart';
import 'package:quality_quest/services/constants/colors.dart';


import 'join_screen/join_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int bottomNavbarIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// #Backgroun color
      backgroundColor: CustomColors.oxFFFFFFFF,

      /// #Body
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeScreen(),
          LibraryScreen(),
          SearchUserScreen(),
          PreCreateScreen(),
          ProfileScreen(),
        ],
      ),

      /// #BottomNavigationBar
      bottomNavigationBar: BottomNavBar(
        bottomNavbarIndex: bottomNavbarIndex,
        onTap: (value) {
          bottomNavbarIndex = value;
          pageController.jumpToPage(bottomNavbarIndex);
          setState(() {});
        },
      ),
    );
  }
}
