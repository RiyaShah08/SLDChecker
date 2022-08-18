import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/testscreen.dart';

class HomePaege extends StatefulWidget {
  const HomePaege({Key? key}) : super(key: key);

  @override
  State<HomePaege> createState() => _HomePageState();
}

class _HomePageState extends State<HomePaege> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePaege(), ), );
                    },
                    leading: Image.asset(
                      'asset/homeline.png', height: 25, width: 25,),
                    title: Text('Home', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'asset/test.png', height: 25, width: 25,),
                    title: Text('Test', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),

                  ),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'asset/therapy.png', height: 25, width: 25,),
                    title: Text('Therapy', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'asset/blog.png', height: 25, width: 25,),
                    title: Text('Blog', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'asset/account.png', height: 25, width: 25,),
                    title: Text('School', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'asset/contact.png', height: 25, width: 25,),
                    title: Text('Contact', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100),),
                  ),

                  Spacer(),

                  ListTile(
                    onTap: () {},
                    leading: Image.asset('asset/logout.png', height: 25, width: 25,),
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

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Online Therapy',
                    style: TextStyle(color: Color(0xFF0085A3), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' from Leading', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: ' Machine Learning',
                          style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: ' models and algorithm.',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      height: 93,
                      width: 160,
                      child: ListTile(
                        onTap: () {} ,
                        title: AutoSizeText('Online Leaning', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: 14, color: Color(0xFF0085A3),) ),
                        subtitle: AutoSizeText('Either your therapist leads your child’s lesson every week, or you do.', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w200, fontFamily: "Poppins", fontSize: 12, color: Colors.black),),
                      ),
                    ),
                    SizedBox(),
                    Image.asset('asset/op.png', height: 100, width: 128,),
                  ],
                ),
              ),

              SizedBox(height: 17,),
              Image.asset('asset/plus.png', height: 22, width: 22, alignment: Alignment.center,),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset('asset/dp.png', height: 100, width: 128,),
                    Container(
                      height: 93,
                      width: 170,
                      child: ListTile(
                        onTap: () {} ,
                        title: AutoSizeText('Daily Practice', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: 14, color: Color(0xFF0085A3),) ),
                        subtitle: AutoSizeText('Your child completes online games, videos, activities to reinforce lessons b/w session.', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w200, fontFamily: "Poppins", fontSize: 12, color: Colors.black),),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),

              SizedBox(height: 17,),
              Image.asset('asset/equal.png', height: 22, width: 22, alignment: Alignment.center,),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 93,
                      width: 170,
                      child: ListTile(
                        onTap: () {} ,
                        title: AutoSizeText('Fast Progress', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: 14, color: Color(0xFFECB819),) ),
                        subtitle: AutoSizeText('Your child becomes the secure, confident fellow you know they can be.', textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w200, fontFamily: "Poppins", fontSize: 12, color: Colors.black),),
                      ),
                    ),
                    SizedBox(),
                    Image.asset('asset/fp.png', height: 100, width: 128,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Align(alignment: Alignment.topRight, child: Text('Learn more!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200, fontFamily: "Poppins", color: Color(0xFF6D6C6C)),)),
              ),
              SizedBox(height: 32,),
              Text('We guarantee results!', style: TextStyle(fontSize: 16, color: Color(0xFFABA7A7), fontFamily: "Poppins", fontWeight: FontWeight.w200, ),),
              MaterialButton(
                color: Color(0xFF0085A3),
                height: 40,
                minWidth: 125,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xFF0085A3)),
                ),
                child: Text("Try Now", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                },
              ),
            ],),
        ),
        ),
      );
  }

    void _handleMenuButtonPressed() {
      // _advancedDrawerController.value = AdvancedDrawerValue.visible();
      _advancedDrawerController.showDrawer();
  }
}
