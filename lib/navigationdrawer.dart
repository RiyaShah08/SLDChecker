import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:sldchecker/contact.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/testscreen.dart';
import 'package:sldchecker/therapymain.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.white,

      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOutBack,
      animationDuration: const Duration(milliseconds: 500),

      childDecoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: Colors.black45),
      ),


      drawer: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 20),
            child: ListTileTheme(
              textColor: Colors.black,
              iconColor: Colors.black,

              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerScreen(),),);
                    },
                    leading: Image.asset(
                      'asset/homeline.png', height: 25, width: 25,),
                    title: Text('Home', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(),),);
                    },
                    leading: Image.asset(
                      'asset/test.png', height: 25, width: 25,),
                    title: Text('Test', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),

                  ),

                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Therapy(),),);
                    },
                    leading: Image.asset(
                      'asset/therapy.png', height: 25, width: 25,),
                    title: Text('Therapy', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  // ListTile(
                  //   onTap: () {},
                  //   leading: Image.asset(
                  //     'asset/blog.png', height: 25, width: 25,),
                  //   title: Text('Blog', style: TextStyle(
                  //       fontSize: 20,
                  //       fontFamily: 'Inter',
                  //       fontWeight: FontWeight.w100),),
                  // ),

                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),),);
                    },
                    leading: Image.asset(
                      'asset/contact.png', height: 25, width: 25,),
                    title: Text('Contact', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  Spacer(),

                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Image.asset(
                      'asset/logout.png', height: 25, width: 25,),
                    title: Text('Logout', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),


      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              IconButton(
                //onpress on menu appbar open navigation
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    //animation
                    return AnimatedSwitcher(
                      duration: Duration(milliseconds: 250),

                      //icon change from menu to clear
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        color: Colors.black,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Image.asset('asset/profile.png', height: 45, width: 45,),
            ),
          ],
        ),

        body: Stack(
          children: [
            HomePage(),
          ],
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}