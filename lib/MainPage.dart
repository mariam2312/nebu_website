// import 'package:dotlottie_loader/dotlottie_loader.dart';
// import 'package:flutter/material.dart';
// import 'package:hover_menu/hover_menu.dart';
// import 'package:intl/intl.dart';
// import 'package:lottie/lottie.dart';
// import 'package:nebu_website/ProductsPage.dart';
// import 'package:nebu_website/constants.dart';
// import 'package:nebu_website/footer.dart';
// import 'package:nebu_website/featurespage.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
//
// import 'EventsPage.dart';
// import 'HomePage.dart';
// import 'StoryPage.dart';
// import 'TeamPage.dart';
// import 'generated/l10n.dart';
// import 'main.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({
//     super.key,
//   });
//
//   //final String title;
//   static String id = "MainPage";
//
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
// var langValue = 'ar';
// String _selectedItem = 'HomePage';
// final ItemScrollController itemScrollController = ItemScrollController();
// ScrollController _scrollController = ScrollController();
//
// int _currentIndex = 0;
// Color _appBarTextColor = Colors.white;
//
// class _MainPageState extends State<MainPage> {
//
//   void scrollTo({required int index}) {
//     itemScrollController.scrollTo(
//         index: index,
//         duration: const Duration(seconds: 1),
//         curve: Curves.fastLinearToSlowEaseIn);
//     setState(() {
//       _currentIndex = index;
//
//     });
//   }
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(() {
//       if (_scrollController.offset > 800 && _scrollController.offset < 1550) {
//         setState(() {
//           _currentIndex = 1;
//           _appBarTextColor = yellow2;
//         });
//       } else if (_scrollController.offset > 1550 && _scrollController.offset < 2300) {
//         setState(() {
//           _currentIndex = 2;
//           _appBarTextColor =yellow2;
//         });
//       } else if (_scrollController.offset > 2300 && _scrollController.offset < 3000) {
//         setState(() {
//           _currentIndex = 3;
//           _appBarTextColor =yellow2;
//         });
//       }else if (_scrollController.offset > 3000 && _scrollController.offset < 3800) {
//         setState(() {
//           _currentIndex = 4;
//           _appBarTextColor =yellow2;
//         });
//       }else if (_scrollController.offset > 3800 && _scrollController.offset < 4500) {
//         setState(() {
//           _currentIndex = 5;
//           _appBarTextColor =yellow2;
//         });
//       } else {
//         setState(() {
//           _currentIndex = 0;
//           _appBarTextColor = Colors.white;
//         });
//       }
//     });
//   }
//
//   final screenlist = <Widget>[
//
//     const HomePage(title: 'HomePage',
//     ),
//     const ProductsPage(
//       title: "prodcuts",
//     ),
//     FeaturesPage(title: "featurePage"),
//     const TeamPage(
//       title: "team",
//     ),
//     const EventsPage(
//       title: "events",
//     ),
//
//     const StoryPage(
//       title: "story",
//     ),
//
//     const FooterPage(title: 'Header',
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           surfaceTintColor: darkBlue,
//           shadowColor: ResponsiveBreakpoints.of(context).largerThan(TABLET)
//               ?Colors.grey[100]:darkBlue,
//           bottomOpacity: ResponsiveBreakpoints.of(context).largerThan(TABLET)
//               ?10:0,
//           elevation:ResponsiveBreakpoints.of(context).largerThan(TABLET)
//               ? 5:0,
//           backgroundColor: darkBlue,
//           iconTheme: const IconThemeData(color: Colors.white),
//
//           title:
//           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                     child:
//
//                       Intl.getCurrentLocale() == "ar"
//                           ?   Image.asset("assets/images/arlogo.png", width:ResponsiveBreakpoints.of(context).largerThan(TABLET)
//                           ? 100:60,)
//                           :   Image.asset("assets/images/logo.png", width: ResponsiveBreakpoints.of(context).largerThan(TABLET)
//                           ?100:60,),
//
//
//                     onTap: () {
//                       Navigator.pushNamed(context, MainPage.id);
//                     }),
//                 ResponsiveBreakpoints.of(context).largerThan(TABLET)
//                     ?
//                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       headerItem(text: S
//                           .of(context)
//                           .products,
//                         index: 1,
//                         textColor:_currentIndex==1?_appBarTextColor:Colors.white,
//
//                       ),
//                       headerItem(text: S
//                           .of(context)
//                           .features,
//                           index: 2,
//                         textColor:_currentIndex==2?_appBarTextColor:Colors.white,
//                       ),
//                       headerItem(text: S
//                           .of(context)
//                           .team,
//                           index: 3,
//                         textColor:_currentIndex==3?_appBarTextColor:Colors.white,
//                       ),
//                       headerItem(text: S
//                           .of(context)
//                           .events,
//                           index: 4,
//                         textColor:_currentIndex==4?_appBarTextColor:Colors.white,
//                       ),
//
//                       headerItem(index: 5,
//                         text: S
//                             .of(context)
//                             .story0,
//                         textColor:_currentIndex==5?_appBarTextColor:Colors.white,
//                       ),
//
//                     ]):Container(),
//
//
//                 langContainer(context),
//
//
//               ])),
//
//       drawer: ResponsiveBreakpoints.of(context).largerThan(TABLET)
//           ? null
//           : Drawer(
//         child: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/background.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView(
//                   padding: EdgeInsets.zero,
//                   children: [
//                     SizedBox(height: 130,
//                       child: DrawerHeader(
//                         margin: const EdgeInsets.only(bottom: 20),
//                         decoration: BoxDecoration(
//                           color: darkBlue,
//                         ),
//                         child: Image.asset(
//                           scale: 3,
//                             Intl.getCurrentLocale() == "ar"
//                                 ? "assets/images/arlogo.png"
//                                 : "assets/images/logo.png",
//                           ),
//                         ),
//                     ),
//
//                     const Divider(),
//                     ListTile(
//                       title: Text(
//                         S.of(context).products,
//                         style: textStyleActions,
//                       ),
//                       onTap: () {
//                         Navigator.pop(context);
//                         scrollTo(index: 1);
//                       },
//                     ),
//                     const Divider(),
//                     ListTile(
//                       title: Text(
//                         S.of(context).features,
//                         style: textStyleActions,
//                       ),
//                       onTap: () {
//                         Navigator.pop(context);
//                         scrollTo(index: 2);
//                       },
//                     ),
//                     const Divider(),
//                     ListTile(
//                       title: Text(
//                         S.of(context).team,
//                         style: textStyleActions,
//                       ),
//                       onTap: () {
//                         Navigator.pop(context);
//                         scrollTo(index: 3);
//                       },
//                     ),
//                     const Divider(),
//                     ListTile(
//                       title: Text(
//                         S.of(context).events,
//                         style: textStyleActions,
//                       ),
//                       onTap: () {
//                         Navigator.pop(context);
//                         scrollTo(index:4);
//                       },
//                     ),
//
//                     const Divider(),
//                     ListTile(
//                       title: Text(
//                         S.of(context).story0,
//                         style: textStyleActions,
//                       ),
//                       onTap: () {
//                         Navigator.pop(context);
//                         scrollTo(index: 5);
//                       },
//                     ),
//                     const Divider(),
//                   ],
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,        child: GestureDetector(
//                 onTap:  ()async{launchWhatsapp();},
//                 child: SizedBox(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE) ?200: 250,
//                   child: Center(
//                       child:
//
//                       Intl.getCurrentLocale() == 'ar'?Image.asset("assets/images/arsmallbuttoncontactus.png",height: 50,):
//                       Image.asset("assets/images/ensmallbuttoncontactus.png",height: 50,)
//                   ),
//                 ),
//               ),
//               ),              const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//
//       body: Stack(
//         children:[ Container(
//           decoration:  ResponsiveBreakpoints.of(context).largerThan(MOBILE)?const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/background.png"),
//               fit: BoxFit.cover,
//             ),
//           ): const BoxDecoration(
//           ),
//           child: ScrollablePositionedList.builder(
//             itemCount: screenlist.length,
//             itemScrollController: itemScrollController,
//             itemBuilder: (context, index) {
//               return screenlist[index];
//             },
//           ),
//         ),
//
//           Positioned(
//             bottom: 0, // Adjust as per your layout
//             left: 0, // Adjust as per your layout
//             child: MouseRegion(
//     cursor: SystemMouseCursors.click,
//               child: GestureDetector(onTap: () {
//                   launchWhatsapp();
//                   },
//               child: DotLottieLoader.fromNetwork("https://lottie.host/c68dfef0-d39f-48d8-b54d-13fbb54d5794/fpD9kh5IJg.json",
//                             frameBuilder: (ctx, dotlottie) {
//                               if (dotlottie != null) {
//                                 return Lottie.memory(dotlottie.animations.values.single,width: 100,height: 100);
//                               } else {
//                                 return Container();
//                               }
//                             }),
//                         ),
//             ),// WhatsApp color
//             ),
//
//
//
//         ]
//       ),
//
//
//     );
//   }
//   Widget langContainer(BuildContext context) {
//
//     return
//       HoverMenu(width: 130,
//           title: MouseRegion(
//             onEnter: (_) {
//               setState(() {
//               });
//             },
//             onExit: (_) {
//               setState(() {
//               });
//             },
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//
//                 });
//               },
//               child:
//               PopupMenuButton<String>(
//                 offset: const Offset(0, 50), // Adjust the offset as needed
//                 child: Image.asset(
//                   "assets/images/lang.png",
//                   width: 40, // Adjust image size as needed
//                 ),
//                 itemBuilder: (BuildContext context) =>
//                 <PopupMenuEntry<String>>[
//                   PopupMenuItem<String>(
//                     value: "ar",
//                     child: Center(
//                       child:Image.asset("assets/images/egyptflag.png",width: 40,height: 40,),
//
//                     ),
//                   ),
//                   PopupMenuItem<String>(
//                     value: "en",
//                     child: Center(
//                       child:  Image.asset("assets/images/usaflag.png",width: 40,height: 40,),
//
//                     ),
//                   ),
//                 ],
//                 onSelected: (String value) {
//                   setState(() {
//                     langValue = value;
//                   });
//
//                   MyApp.setLocale(context, Locale(value, ''));
//                 },
//               )
//             ),
//           ),
//           items:[
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.grey[200],              ),
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     langValue = "ar";
//                   });
//
//                   MyApp.setLocale(context, Locale(langValue, ''));
//                                 },
//                 child: ListTile(
//                   mouseCursor: SystemMouseCursors.click,
//                   title:
//                   Center(
//                     child:
//                       Image.asset("assets/images/egyptflag.png",width: 40,height: 40,),
//
//                    // ]),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.grey[200], // Background color changes on hover
//               ),
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     langValue = "en";
//                   });
//
//                   MyApp.setLocale(context, Locale(langValue, ''));
//                                 },
//                 child: ListTile(
//                   mouseCursor: SystemMouseCursors.click,
//                   title:
//                   Center(
//                     child:
//                    // Row(mainAxisAlignment: MainAxisAlignment.center,
//                    //     children: [
//                       Image.asset("assets/images/usaflag.png",width: 40,height: 40,)
//                     //,SizedBox(width: 5,),
//                     //  Text("en",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                    //   ])
//                   ),
//                 ),
//               ),
//             ),
//
//           ],);
//   }
//   Widget headerItem(
//       {required String text, required int index,    required Color textColor,
//
//       }) {
//
//       return MouseRegion(
//           cursor: SystemMouseCursors.click,child:  GestureDetector(
//         onTap: () {
//           setState(() {
//             _selectedItem = text;
//           });
//           scrollTo(index: index);
//         },
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           alignment: Alignment.center,
//           child: Text(
//             text,
//             style:
//             TextStyle(
//               color: _currentIndex == index? yellow2 : Colors.white,
//
//               // color: _selectedItem == text ?
//               //       yellow2
//               //       : textColor,
//                 fontWeight: FontWeight.w500,
//                 fontFamily: 'NotoKufiArabic',
//                 fontSize: 18,),
//           ),
//         ),
//       ));
//     }
// }
import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:nebu_website/ProductsPage.dart';
import 'package:nebu_website/footer.dart';
import 'package:nebu_website/featurespage.dart';
import 'package:nebu_website/EventsPage.dart';
import 'package:nebu_website/HomePage.dart';
import 'package:nebu_website/StoryPage.dart';
import 'package:nebu_website/TeamPage.dart';
import 'package:nebu_website/generated/l10n.dart';
import 'package:nebu_website/constants.dart';
import 'package:nebu_website/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String id = "MainPage";

  @override
  State<MainPage> createState() => _MainPageState();
}

var langValue = 'ar';
String _selectedItem = 'HomePage';
final ScrollController _scrollController = ScrollController();

int _currentIndex = 0;
Color _appBarTextColor = Colors.white;

class _MainPageState extends State<MainPage> {
  static const double page1Offset = 0;
  static const double page2Offset = 790;
  static const double page3Offset = 1540;
  static const double page4Offset = 2290;
  static const double page5Offset = 2990;
  static const double page6Offset = 3790;

  void scrollTo({required int index}) {
    double offset;
    switch (index) {
      case 1:
        offset = page2Offset;
        break;
      case 2:
        offset = page3Offset;
        break;
      case 3:
        offset = page4Offset;
        break;
      case 4:
        offset = page5Offset;
        break;
      case 5:
        offset = page6Offset;
        break;
      default:
        offset = page1Offset;
    }
    _scrollController.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > page1Offset && _scrollController.offset < page2Offset) {
        setState(() {
          _currentIndex = 0;
          _appBarTextColor = Colors.white;
        });
      } else if (_scrollController.offset > page2Offset && _scrollController.offset < page3Offset) {
        setState(() {
          _currentIndex = 1;
          _appBarTextColor = yellow2;
        });
      } else if (_scrollController.offset > page3Offset && _scrollController.offset < page4Offset) {
        setState(() {
          _currentIndex = 2;
          _appBarTextColor = yellow2;
        });
      } else if (_scrollController.offset > page4Offset && _scrollController.offset < page5Offset) {
        setState(() {
          _currentIndex = 3;
          _appBarTextColor = yellow2;
        });
      } else if (_scrollController.offset > page5Offset && _scrollController.offset < page6Offset) {
        setState(() {
          _currentIndex = 4;
          _appBarTextColor = yellow2;
        });
      } else if (_scrollController.offset > page6Offset) {
        setState(() {
          _currentIndex = 5;
          _appBarTextColor = yellow2;
        });
      }
    });
  }

  final screenlist = <Widget>[
    const HomePage(title: 'HomePage'),
    const ProductsPage(title: "products"),
    FeaturesPage(title: "featurePage"),
    const TeamPage(title: "team"),
    const EventsPage(title: "events"),
    const StoryPage(title: "story"),
    const FooterPage(title: 'Footer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: darkBlue,
        shadowColor: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? Colors.grey[100] : darkBlue,
        bottomOpacity: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 10 : 0,
        elevation: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 5 : 0,
        backgroundColor: darkBlue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Intl.getCurrentLocale() == "ar"
                  ? Image.asset(
                "assets/images/arlogo.png",
                width: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100 : 60,
              )
                  : Image.asset(
                "assets/images/logo.png",
                width: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100 : 60,
              ),
              onTap: () {
                Navigator.pushNamed(context, MainPage.id);
              },
            ),
            ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                headerItem(
                  text: S.of(context).products,
                  index: 1,
                  textColor: _currentIndex == 1 ? _appBarTextColor : Colors.white,
                ),
                headerItem(
                  text: S.of(context).features,
                  index: 2,
                  textColor: _currentIndex == 2 ? _appBarTextColor : Colors.white,
                ),
                headerItem(
                  text: S.of(context).team,
                  index: 3,
                  textColor: _currentIndex == 3 ? _appBarTextColor : Colors.white,
                ),
                headerItem(
                  text: S.of(context).events,
                  index: 4,
                  textColor: _currentIndex == 4 ? _appBarTextColor : Colors.white,
                ),
                headerItem(
                  text: S.of(context).story0,
                  index: 5,
                  textColor: _currentIndex == 5 ? _appBarTextColor : Colors.white,
                ),
              ],
            )
                : Container(),
            langContainer(context),
          ],
        ),
      ),
      drawer: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? null
          : Drawer(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 130,
                      child: DrawerHeader(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: darkBlue,
                        ),
                        child: Image.asset(
                          scale: 3,
                          Intl.getCurrentLocale() == "ar"
                              ? "assets/images/arlogo.png"
                              : "assets/images/logo.png",
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        S.of(context).products,
                        style: textStyleActions,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        scrollTo(index: 1);
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        S.of(context).features,
                        style: textStyleActions,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        scrollTo(index: 2);
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        S.of(context).team,
                        style: textStyleActions,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        scrollTo(index: 3);
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        S.of(context).events,
                        style: textStyleActions,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        scrollTo(index: 4);
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        S.of(context).story0,
                        style: textStyleActions,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        scrollTo(index: 5);
                      },
                    ),
                    const Divider(),
                  ],
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () async {
                    launchWhatsapp();
                  },
                  child: SizedBox(
                    width: ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 200 : 250,
                    child: Center(
                      child: Intl.getCurrentLocale() == 'ar'
                          ? Image.asset("assets/images/arsmallbuttoncontactus.png", height: 50)
                          : Image.asset("assets/images/ensmallbuttoncontactus.png", height: 50),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                ? const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            )
                : const BoxDecoration(),
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(child: screenlist[0]),
                SliverToBoxAdapter(child: screenlist[1]),
                SliverToBoxAdapter(child: screenlist[2]),
                SliverToBoxAdapter(child: screenlist[3]),
                SliverToBoxAdapter(child: screenlist[4]),
                SliverToBoxAdapter(child: screenlist[5]),
                SliverToBoxAdapter(child: screenlist[6]),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchWhatsapp();
                },
                child: DotLottieLoader.fromNetwork(
                  "https://lottie.host/c68dfef0-d39f-48d8-b54d-13fbb54d5794/fpD9kh5IJg.json",
                  frameBuilder: (ctx, dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(
                        dotlottie.animations.values.single,
                        width: 100,
                        height: 100,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget langContainer(BuildContext context) {
    return HoverMenu(
      width: 130,
      title: MouseRegion(
        onEnter: (_) {
          setState(() {});
        },
        onExit: (_) {
          setState(() {});
        },
        child: InkWell(
          onTap: () {
            setState(() {});
          },
          child: PopupMenuButton<String>(
            offset: const Offset(0, 50),
            child: Image.asset(
              "assets/images/lang.png",
              width: 40,
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: "ar",
                child: Center(
                  child: Image.asset(
                    "assets/images/egyptflag.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: "en",
                child: Center(
                  child: Image.asset(
                    "assets/images/usaflag.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ],
            onSelected: (String value) {
              setState(() {
                langValue = value;
              });
              MyApp.setLocale(context, Locale(value, ''));
            },
          ),
        ),
      ),
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[200],
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                langValue = "ar";
              });
              MyApp.setLocale(context, Locale(langValue, ''));
            },
            child: ListTile(
              mouseCursor: SystemMouseCursors.click,
              title: Center(
                child: Image.asset(
                  "assets/images/egyptflag.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[200],
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                langValue = "en";
              });
              MyApp.setLocale(context, Locale(langValue, ''));
            },
            child: ListTile(
              mouseCursor: SystemMouseCursors.click,
              title: Center(
                child: Image.asset(
                  "assets/images/usaflag.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget headerItem({
    required String text,
    required int index,
    required Color textColor,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedItem = text;
          });
          scrollTo(index: index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: _currentIndex == index ? _appBarTextColor : Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'NotoKufiArabic',
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
