import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioo_app/components/appp_drawer.dart';
import 'package:portfolioo_app/constants/text.dart';
import 'package:portfolioo_app/provider/dark_theme_provider.dart';
import 'package:portfolioo_app/utils/utils.dart';
import 'package:portfolioo_app/widgets/main_page/main_page_actions.dart';
import 'package:portfolioo_app/widgets/portfolio_details.dart';
import 'package:provider/provider.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isMobile  = true;


  @override
  Widget build(BuildContext context) {

    return Consumer(
        builder: (context, ThemeProvider themeProvider, child) {
          return Scaffold(
            backgroundColor: themeProvider.isDarkMode
                ? Color(0xFF235284)
                : Colors.white,
            key: _scaffoldKey,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 50,
              title: AppText(text: 'My Portfolio',),
              automaticallyImplyLeading: false,
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Utils.isMobile(context)
                        ? Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: themeProvider.isDarkMode
                              ? Colors.white
                              : Colors.grey,
                          size: 20,
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    )
                        : MainPageActions(
                      sc: myScrollController,
                    ),
                   InkWell(
                     onTap: (){
                       themeProvider.isDarkMode?themeProvider.isDark = false: themeProvider.isDark = true;
                     },
                       child: Icon(themeProvider.isDarkMode ? Icons.wb_sunny_outlined:Icons.wb_sunny, color: themeProvider.isDarkMode?Colors.white:Colors.grey)),

                  ],

                ),
              ],
            ),
            endDrawer: Utils.isMobile(context)
                ? AppDrawer(
              sc: myScrollController,
            )
                : null,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.orangeAccent,
              mini: Utils.isMobile(context) ? true : false,
              onPressed: () {
                if (isMobile) {
                  setState(() {
                    Orientation.portrait;
                  });
                }
                if (myScrollController.hasClients) {
                  final position = myScrollController.position.minScrollExtent;
                  myScrollController.jumpTo(position);
                  myScrollController.animateTo(
                      position, duration: const Duration(seconds: 3),
                      curve: Curves.easeIn);
                }
              },
              isExtended: true,
              tooltip: 'Scroll to Top',
              child: Icon(
                Icons.arrow_upward,
                color: themeProvider.isDarkMode ? Colors.white : Colors.black54,
              ),
            ),
            body: SingleChildScrollView(
                controller: myScrollController,
                child: const PortfolioDetails()),
          );
        }
    );
  }



}












