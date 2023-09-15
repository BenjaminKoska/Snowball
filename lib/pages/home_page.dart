import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snowball/pages/listen_page.dart';
import '../components/my_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  void listen() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const ListenPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        text: "Let's roll!",
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.snowselected,
        destinations: <Widget>[
          NavigationDestination(
            icon:
                SvgPicture.asset('assets/Snowflake.svg', width: 35, height: 35),
            selectedIcon: SvgPicture.asset('assets/Snowflake_Selected.svg',
                width: 35, height: 35),
            label: 'Roll',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/Chats.svg', width: 35, height: 35),
            selectedIcon: SvgPicture.asset(
              'assets/Chats_Selected.svg',
              width: 35,
              height: 35,
              color: Colors.snowblue,
            ),
            label: 'Snowballs',
          ),
          NavigationDestination(
              //selectedIcon: Icon(Icons.bookmark),
              icon: SvgPicture.asset('assets/Gear.svg', width: 35, height: 35),
              label: "Settings"),
          NavigationDestination(
            //selectedIcon: Icon(Icons.bookmark),
            icon: SvgPicture.asset('assets/UserCircle.svg',
                width: 35, height: 35),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the left
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "What are you most interested in?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 300),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    'assets/splatListening.svg',
                    width: 154,
                    height: 139,
                  ),
                  SvgPicture.asset(
                    'assets/splatTalking.svg',
                    width: 192,
                    height: 173,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: listen,
                    child: Container(
                      width: 162,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                      //margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      decoration: BoxDecoration(
                          color: Colors.snowpurple,
                          borderRadius: BorderRadius.circular(14)),
                      child: const Center(
                          child: Text(
                        "I want to listen",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 162,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                      decoration: BoxDecoration(
                          color: Colors.snowblue,
                          borderRadius: BorderRadius.circular(14)),
                      child: const Center(
                          child: Text(
                        "I want to talk",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
