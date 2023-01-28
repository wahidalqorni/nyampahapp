import 'package:flutter/material.dart';
import 'package:nyampahgo_app/pages/home_page.dart';
import 'package:nyampahgo_app/pages/profile_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const ProfilePage(),
    const HomePage(),
    const HomePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        
        body: PageStorage(bucket: bucket, child: currentScreen),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Tabbar Bottom Sebelah Kanan
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = const HomePage();
                          currentTab = 0;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/home_icon.png', width: 24, height: 24, ),
                        Text(
                          'Home',
                          style: blackTextStyle.copyWith(
                              fontSize: 11,
                              color:
                                  currentTab == 0 ? greenColor : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                      currentScreen = const HomePage();
                          currentTab = 1;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/order_icon.png', width: 24, height: 24, ),
                        Text(
                          'Orders',
                          style: blackTextStyle.copyWith(
                              fontSize: 11,
                              color:
                                  currentTab == 1 ? greenColor : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Tabbar Bottom Sebelah Kanan
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = const HomePage();
                          currentTab = 3;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image.asset('assets/data_icon.png', width: 24, height: 24, ),
                        Text(
                          'Notes',
                          style: blackTextStyle.copyWith(
                              fontSize: 11,
                              color:
                                  currentTab == 3 ? greenColor : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = const ProfilePage();
                          currentTab = 4;
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image.asset('assets/person_icon.png', width: 24, height: 24, ),
                        Text(
                          'My Profil', style: blackTextStyle.copyWith(fontSize: 11,
                              color:
                                  currentTab == 4 ? greenColor : Colors.grey),
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
