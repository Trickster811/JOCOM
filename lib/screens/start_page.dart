import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jocom/functions.dart';
import 'package:jocom/screens/about_page.dart';
import 'package:jocom/screens/home_page.dart';
import 'package:jocom/screens/news_page.dart';
import 'package:jocom/screens/tour_page.dart';
import 'package:jocom/screens/web_tv_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  double appBarHeightSize = 0;

  final inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenName = [
      'Acceuil',
      'Tour',
      'Web TV',
      'Actualites',
    ];
    List<List> menuItemList = [
      [
        'assets/icons/info-square.4.svg',
        'About',
        AboutScreen(),
      ],
    ];
    final screens = [
      ChatScreen(
        appBarHeightSize: appBarHeightSize,
        menuItemList: menuItemList,
      ),
      TourScreen(),
      WebTVScreen(),
      NewsScreen(),
    ];
    AppBar appBar = AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        screenName[index],
        style: TextStyle(
          color: Theme.of(context).iconTheme.color,
          fontSize: 25,
        ),
      ),
      actions: [
        index != 2
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: Theme.of(context).iconTheme.color,
                ),
              )
            : Container(),
        IconButton(
          onPressed: () {
            UsualFunctions.openDialog(context, menuItemList, appBarHeightSize);
          },
          icon: SvgPicture.asset(
            'assets/icons/more-circle.1.svg',
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: screens[index],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: kSecondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                // print(widget.userInfo![0]);
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 0;
                });
              },
              icon: Column(
                children: [
                  index == 0
                      ? SvgPicture.asset(
                          'assets/icons/home.3.svg',
                          color: Theme.of(context).iconTheme.color,
                        )
                      : SvgPicture.asset(
                          'assets/icons/home.4.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                  Spacer(),
                  Text(
                    'Acceuil',
                    style: TextStyle(
                      fontSize: 7,
                      // color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                // print(widget.userInfo![0]);
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 1;
                });
              },
              icon: Column(
                children: [
                  index == 1
                      ? SvgPicture.asset(
                          'assets/icons/show.5.svg',
                          color: Theme.of(context).iconTheme.color,
                        )
                      : SvgPicture.asset(
                          'assets/icons/show.3.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                  Spacer(),
                  Text(
                    'Tour',
                    style: TextStyle(
                      fontSize: 7,
                      // color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 2;
                });
              },
              icon: Center(
                child: Column(
                  children: [
                    index == 2
                        ? SvgPicture.asset(
                            'assets/icons/video.1.svg',
                            color: Theme.of(context).iconTheme.color,
                          )
                        : SvgPicture.asset(
                            'assets/icons/video.svg',
                            color: Theme.of(context).iconTheme.color,
                          ),
                    Spacer(),
                    Text(
                      'Web TV',
                      style: TextStyle(
                        fontSize: 7,
                        // color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // print(widget.userInfo![0]);
                setState(() {
                  appBarHeightSize = appBar.preferredSize.height;
                  index = 3;
                });
              },
              icon: Column(
                children: [
                  index == 3
                      ? SvgPicture.asset(
                          'assets/icons/document.2.svg',
                          color: Theme.of(context).iconTheme.color,
                        )
                      : SvgPicture.asset(
                          'assets/icons/document.5.svg',
                          color: Theme.of(context).iconTheme.color,
                        ),
                  Spacer(),
                  Text(
                    'News',
                    style: TextStyle(
                      fontSize: 7,
                      // color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
