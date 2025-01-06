import 'package:flutter/material.dart';
import 'package:stroll_interview/Screens/home_page.dart';
import 'package:stroll_interview/config/colors.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: navColor,
        ),
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Image.asset("assets/icons/tab1.png"),
              height: 60,
            ),
            Tab(
              icon: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icons/tab2.png"),
                  ),
                  Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        height: 10,
                        width: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: notifyIconColor,
                        ),
                      ))
                ],
              ),
              height: 60,
            ),
            Tab(
              icon: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icons/tab3.png"),
                  ),
                  Positioned(
                    top: 8,
                    right: 0,
                    child: Container(
                      height: 10,
                      width: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: notifyIconColor,
                      ),
                      child: const Center(child: Text("10", style: TextStyle(fontSize: 10, letterSpacing: -1.2),)),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              icon: Image.asset("assets/icons/tab4.png"),
            )
          ],
        ),
      ),
    );
  }
}
