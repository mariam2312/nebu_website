import 'dart:async';

import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:nebu_website/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'generated/l10n.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage(
      {super.key, required this.title, });

  static String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool slideshowPlaying = true; // Initially the slideshow is playing

  double _opacityInvoices = 0.0;
  double _opacityOpenAccount = 0.0;
  double _opacityManagement = 0.0;
  final GlobalKey _imageSlideshowKey = GlobalKey();
  Timer? _autoPlayTimer;
  bool _isAutoPlay = true;
  int _currentPage = 0;

  void _startAutoPlay() {
    if (_autoPlayTimer != null) {
      _autoPlayTimer!.cancel();
    }
    _autoPlayTimer = Timer.periodic(Duration(seconds: 8), (Timer timer) {
      if (_isAutoPlay) {
        _currentPage++;
        // Your logic to change page
        // For example, use a method to change page in the ImageSlideshow widget
      }
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
      _isAutoPlay = false; // Stop auto-play when user scrolls manually
      _startAutoPlay(); // Restart auto-play timer if needed
    });
  }
  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _toggleOpacityDevices();_toggleOpacityRolles();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
   String demoId ="HVtfiQ74O5U";

   List <Widget> HomePageList=[

     ResponsiveRowColumn(
       layout:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
       ResponsiveRowColumnType.ROW
           :ResponsiveRowColumnType.COLUMN,
       rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
       columnMainAxisAlignment: MainAxisAlignment.center,
       columnCrossAxisAlignment: CrossAxisAlignment.center,
       rowCrossAxisAlignment: CrossAxisAlignment.center,
      rowSpacing: 0,
       columnSpacing: 20,


       children: [
         ResponsiveRowColumnItem(child:
         HomeDetails(context)
         ),

         ResponsiveRowColumnItem(
           child:
           SizedBox(width:ResponsiveBreakpoints.of(context).largerThan(TABLET) ? width/3:width,
             child: Center(
               child: Stack(clipBehavior: Clip.none, children: [Image.asset("assets/images/rolles.png",
                   scale: ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 1.7:2.3),
                 Positioned(
                   top:
                 ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
                 60:70
                   ,left:
                 ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 300:180, child: AnimatedOpacity(
                   opacity: _opacityOpenAccount,
                   duration: const Duration(seconds: 2),
                   curve: Curves.fastOutSlowIn,
                   child:
                   Intl.getCurrentLocale() == 'ar'?
                   Image.asset("assets/images/openaccount.png",
                     scale:width>520?3: 4.5 ,):
                   Image.asset("assets/images/enopenaccount.png",scale:width>520?2.5: 4.7,),

                 ),),
                 Positioned(
                   //bottom:70,
                   top:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 250 :200,
                   right:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  190:100,
                   child: AnimatedOpacity(
                   opacity: _opacityManagement,
                   duration: const Duration(seconds: 3),
                   curve: Curves.fastOutSlowIn,
                   child: Intl.getCurrentLocale() == 'ar'? Image.asset("assets/images/management.png",scale:width>520?3.5:4.5,):
                   Image.asset("assets/images/enmanagement.png",scale:width>520?2:3.5,),

                 ),),
                 Positioned(
                   //bottom: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 10:5,
                   top:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 340:250,
                   left:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  290:180, child: AnimatedOpacity(
                   opacity: _opacityInvoices,
                   duration: const Duration(seconds: 4),
                   curve: Curves.fastOutSlowIn,
                   child:Intl.getCurrentLocale() == 'ar'?  Image.asset("assets/images/invoices.png",scale:width>520?2.5: 3.5):
                   
                   Image.asset("assets/images/eninvoices.png",scale:width>520?2.5:4.7),

                 ),),

               ],
               ),
             ),
           ),
         ),

       ],
     ),


   width>=760?
     Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children:[
       SizedBox(width:width/4,
         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
           children: [
           Column(children: [
             Row(children: [Image.asset("assets/images/platforms.png",scale:width>=800?4: 4.5,)
               ,const SizedBox(width: 5,),
               Text(S.of(context).homemultiplatform,softWrap:true,maxLines:2,style:  TextStyle(
                   color: darkBlue,
                   fontSize:20,
                   fontWeight: FontWeight.bold,
                   fontFamily: 'NotoKufiArabic'
               )),
             ]),
             Text(S.of(context).deschomemultiplatform,softWrap:true,maxLines:5,
                 style:  TextStyle(color: darkBlue, fontSize:16, fontFamily: 'NotoKufiArabic'
             )),
           ],),

         const SizedBox(height: 30,),
             Column(children: [
              Row(children: [Image.asset("assets/images/pictures.png",scale: 4,),             const SizedBox(width: 5,),

             Text(S.of(context).homereferencepictures,softWrap:true,maxLines:2,style:  TextStyle(
               color: yellow2,
               fontSize:20,
               fontWeight: FontWeight.bold,
             ),)
             ]),
             Text(S.of(context).deschomereferencepictures    ,    softWrap:true,maxLines:5       ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
             )),
           ],),
             const SizedBox(height: 30,),

           Column(children: [
             Row(children: [Image.asset("assets/images/cloud.png",scale: 4,),             const SizedBox(width: 5,),

             Text(S.of(context).homecloudsystem,softWrap:true,maxLines:2,style:  TextStyle(
             color: darkBlue,
             fontSize:20,
               fontWeight: FontWeight.bold,
             ),)
             ]),
             Text(S.of(context).deschomecloudsystem  ,softWrap:true,maxLines:5          ,style:  TextStyle(color: darkBlue, fontSize:16, fontFamily: 'NotoKufiArabic'
             ),
             )],),
         ],),
       ),



         SizedBox(width:width/2.5,child:  Intl.getCurrentLocale() == 'ar'? Image.asset("assets/images/nebufeatures.png",)
               :Image.asset("assets/images/ennebufeatures.png",)),



           SizedBox(width:width/4,
             child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Column(children: [
             Row(children: [Image.asset("assets/images/decentralized.png",scale: 4,)            ,const SizedBox(width: 5,),

                 Text(S.of(context).homeDecentralized,softWrap:true,maxLines:2,style:  TextStyle(
                   color: yellow2,
                   fontSize:20,
                   fontWeight: FontWeight.bold,
                 ),)
             ]),

               Text(S.of(context).deschomeDecentralized       ,softWrap:true,maxLines:5        ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
               )),
                      ],),

             const SizedBox(height: 30,),

                      Column(children: [
             Row(
               children: [           Image.asset("assets/images/encrypt.png",scale: 4,),             const SizedBox(width: 5,),


                 Text(S.of(context).homebinaryencryption,softWrap:true,maxLines:2,style:  TextStyle(
                   color: darkBlue,
                   fontSize:20,
                   fontWeight: FontWeight.bold,
                 )),
               ],
             ),    Text(S.of(context).deschomebinaryencryption ,softWrap:true,maxLines:5            ,style:  TextStyle(color: darkBlue, fontSize:16, fontFamily: 'NotoKufiArabic'
             )),
                      ],),
             const SizedBox(height: 30,),

                      Column(children: [
             Row(
               children: [           Image.asset("assets/images/qr.png",scale: 4,),             const SizedBox(width: 5,),


                 Text(S.of(context).homefastcoding,softWrap:true,maxLines:2,style:  TextStyle(
                   color: yellow2,
                   fontSize:20,
                   fontWeight: FontWeight.bold,
                 )),
               ],
             ),    Text(S.of(context).deschomefastcoding ,softWrap:true,maxLines:5            ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
             )),
                      ],),
                    ],),
           ),
   ] ))
         :
     Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
       children: [
const SizedBox(height: 50,),
         SizedBox(width: width/1.4,child : Intl.getCurrentLocale() == 'ar'? Image.asset("assets/images/nebufeatures.png",scale: 1,)

         :Image.asset("assets/images/ennebufeatures.png",)),
         const SizedBox(height: 50,),

       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(width: width/2,
             padding: Intl.getCurrentLocale() == 'ar' ? const EdgeInsets.only(right:10): const EdgeInsets.only(left: 10),
             child:
                   Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Column(children: [
                     Row(children: [Image.asset("assets/images/platforms.png",scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5)
                     ,const SizedBox(width: 5,),
                     Text(S.of(context).homemultiplatform,softWrap: true,maxLines:2 , style:  TextStyle(
                     color: darkBlue,
                     fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic'
                     )),
                     ]),
                       ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomemultiplatform
                     ,style:  TextStyle(color: darkBlue, fontSize:16, fontFamily: 'NotoKufiArabic'
               )):const Text(""),
               ],),
               Column(children: [
               Row(children: [Image.asset("assets/images/pictures.png",scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5),             const SizedBox(width: 5,),

               Text(S.of(context).homereferencepictures,style:  TextStyle(
               color: yellow2,
                 fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
               fontWeight: FontWeight.bold,
               ),)
               ]),
                 ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomereferencepictures
               ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
               )):const Text("")
               ],),
               Column(children: [
               Row(children: [Image.asset("assets/images/cloud.png",scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5),             const SizedBox(width: 5,),

               Text(S.of(context).homecloudsystem,style:  TextStyle(
               color: darkBlue,
                 fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
               fontWeight: FontWeight.bold,
               ),)
               ]),
                 ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomecloudsystem
               ,style:  TextStyle(color: darkBlue, fontSize:16, fontFamily: 'NotoKufiArabic'
               ),
               ):const Text("")],),
                     ],
                   ),
           ),
           Container(width: width/2,
             padding: Intl.getCurrentLocale() == 'ar' ? const EdgeInsets.only(right:10): const EdgeInsets.only(left: 10),
             child:
                   Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Column(children: [
                     Row(children: [Image.asset("assets/images/qr.png",
                         scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5)
                     ,const SizedBox(width: 5,),
                     Text(S.of(context).homefastcoding,softWrap: true,maxLines:2 , style:  TextStyle(
                     color: yellow2,
                         fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic'
                     )),
                     ]),
                       ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomefastcoding
                     ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
               )):const Text(""),
               ],),
               Column(children: [
               Row(children: [Image.asset("assets/images/encrypt.png",scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5),             const SizedBox(width: 5,),

               Text(S.of(context).homebinaryencryption,style:  TextStyle(
               color: darkBlue,
                 fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
               fontWeight: FontWeight.bold,
               ),)
               ]),
                 ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomebinaryencryption
               ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
               )):const Text("")
               ],),
               Column(children: [
               Row(children: [Image.asset("assets/images/decentralized.png",
                   scale:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 5: Intl.getCurrentLocale() == 'ar'? 6:7.5),
                 const SizedBox(width: 5,),

               Text(S.of(context).homeDecentralized,style:  TextStyle(
               color: yellow2,
                 fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
               fontWeight: FontWeight.bold,
               ),)
               ]),
                 ResponsiveBreakpoints.of(context).largerThan(TABLET)? Text(S.of(context).deschomeDecentralized
               ,style:  TextStyle(color: yellow2, fontSize:16, fontFamily: 'NotoKufiArabic'
               ),
               ):const Text("")],),
                     ],
                   ),
           ),
         ],
       ),

     ],),


     Center(
       child:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
       DotLottieLoader.fromAsset(Intl.getCurrentLocale() == 'ar'?"assets/images/ardevices.json":"assets/images/endevices.json",
           frameBuilder: (ctx, dotlottie) {
             if (dotlottie != null) {
               return Lottie.memory(dotlottie.animations.values.single);
             } else {
               return Center(
                 child: CircularProgressIndicator(),
               );             }
           }):
       Padding(
         padding: const EdgeInsets.all(10),
         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const SizedBox(height: 50,),
             Image.asset("assets/images/devices.png",scale: 5,),
             const SizedBox(height: 20,),

             Row(
               children: [
                 SizedBox(width:50,height:50,
                   child: DotLottieLoader.fromAsset("assets/images/diamond.json",
                       frameBuilder: (ctx, dotlottie) {
                         if (dotlottie != null) {
                           return Lottie.memory(dotlottie.animations.values.single);
                         } else {
                           return Container();
                         }
                       }),
                 ),
                 Text(           S.of(context).nebuDiamond,style: TextStyle(color: darkBlue,fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic' ),
                 )
               ],
             ),
             Row(
               children: [
                 SizedBox(width:50,height:50,
                   child: DotLottieLoader.fromAsset("assets/images/retail.json",
                       frameBuilder: (ctx, dotlottie) {
                         if (dotlottie != null) {
                           return Lottie.memory(dotlottie.animations.values.single);
                         } else {
                           return Container();
                         }
                       }),
                 ),
                 Text(           S.of(context).neburetail,style: TextStyle(color: darkBlue,fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic' ),
                 )
               ],
             ),
             Row(
               children: [
                 SizedBox(width:50,height:50,
                   child: DotLottieLoader.fromAsset("assets/images/wholesale1.json",
                       frameBuilder: (ctx, dotlottie) {
                         if (dotlottie != null) {
                           return Lottie.memory(dotlottie.animations.values.single);
                         } else {
                           return Container();
                         }
                       }),
                 ),
                 Text(           S.of(context).nebuwholesale,style: TextStyle(color: darkBlue,fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic' ),
                 )
               ],
             ),
             Row(
               children: [
                 SizedBox(width:50,height:50,
                   child: DotLottieLoader.fromAsset("assets/images/goldbar.json",
                       frameBuilder: (ctx, dotlottie) {
                         if (dotlottie != null) {
                           return Lottie.memory(dotlottie.animations.values.single);
                         } else {
                           return Container();
                         }
                       }),
                 ),
                 Text(           S.of(context).nebutrader,style: TextStyle(color: darkBlue,fontSize: 16,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'NotoKufiArabic' ),
                 )
               ],
             ),

           ],
         ),
       )
     ),


     Column(mainAxisAlignment: MainAxisAlignment.start,
       children: [
       const SizedBox(height: 50,),
         GestureDetector(onTap: (){
           showDialog<String>(useSafeArea: false,
             context: context,
             builder: (BuildContext context) => AlertDialog(
              // title: Center(child: const Text('open NEBU Demo')),
               title: Center(child:

                   Container(width: width,height: height/1.3,margin: const EdgeInsets.all(0),padding: const EdgeInsets.all(0),
                     child: HtmlWidget(
                       '<iframe src="https://www.youtube.com/embed/$demoId" frameborder="0" allowfullscreen></iframe>',
                       webView: true,
                     ),
                   ),

               ),
               actions: <Widget>[
                 TextButton(
                   onPressed: () => Navigator.pop(context, 'Cancel'),
                   child: const Text('Cancel'),
                 ),

               ],
             ),
           );
             },
             child: Image.asset('assets/images/video.png',scale:1.3)),
       ],
     ),


  //const Center(child: Text("updates")),




    ];

    return   Column(
      children: [

        ImageSlideshow(
          key: _imageSlideshowKey,
          disableUserScrolling: false,
          width: double.maxFinite,
          height: 800,
          initialPage: 0,
          indicatorColor: Colors.yellow, // Assuming yellow2 is replaced with Colors.yellow
          indicatorRadius: 5,
          indicatorBottomPadding: 10,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: _onPageChanged,
          autoPlayInterval: 8000,
          isLoop: true,
          children: HomePageList,
        ),
       // const SizedBox(height: 50,
       // )

      ],
    );


  }
  void _toggleOpacityRolles() {
    List<Duration> visibleTimesRolles = [
      const Duration(seconds: 2),
      const Duration(seconds: 3),
      const Duration(seconds: 4), const Duration(seconds: 5),
    ];


    int currentIndex = 0;
    bool isVisible = true;  // Track current visibility state

    void toggleNextRolles() {
      setState(() {
        // Set opacity based on current state
        switch (currentIndex) {
          case 0:
            _opacityInvoices = isVisible ? 1.0 : 0.0;
            _opacityOpenAccount = 0.0;
            _opacityManagement = 0.0;


            break;
          case 1:
            _opacityInvoices = 0.0;
            _opacityOpenAccount = isVisible ? 1.0 : 0.0;
            _opacityManagement = 0.0;

            break;
          case 2:
            _opacityInvoices = 0.0;
            _opacityOpenAccount = 0.0;
            _opacityManagement = isVisible ? 1.0 : 0.0;

            break;
            case 3:
            _opacityInvoices = isVisible ? 1.0 : 0.0;
            _opacityOpenAccount =  isVisible ? 1.0 :0.0;
            _opacityManagement = isVisible ? 1.0 : 0.0;

            break;

        }
      });

      // Toggle visibility after the specified visible time
      Future.delayed(visibleTimesRolles[currentIndex], () {
        setState(() {
          isVisible = false;  // Hide current image after visible time
        });

        // Move to the next image index, if not the last one
        currentIndex++;

        if (currentIndex < visibleTimesRolles.length) {
          // Show next image after the current one disappears
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              isVisible = true;  // Show next image
            });
            toggleNextRolles();  // Continue toggling in a loop
          });
        } else {
          // Restart sequence from the beginning after the last image
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              currentIndex = 0;  // Reset to start
              isVisible = true;  // Show the first image again
            });
            toggleNextRolles();  // Continue toggling in a loop
          });
        }
      });
    }

    toggleNextRolles();
  }
  void _toggleOpacityDevices() {

    List<Duration> visibleTimesDevices = [
      const Duration(seconds: 2),
      const Duration(seconds: 3),
      const Duration(seconds: 4),
      const Duration(seconds: 5),
      const Duration(seconds: 6),
    ];

    int currentIndex = 0;

  void toggleNextDevices() {
      setState(() {
        // Set opacity based on current state
        switch (currentIndex) {
          case 0:


            break;
          case 1:
            break;
          case 2:

            break;
            case 3:

            break;
            case 4:

            break;
        }
      });

      // Toggle visibility after the specified visible time
      Future.delayed(visibleTimesDevices[currentIndex], () {
        setState(() {
// Hide current image after visible time
        });

        // Move to the next image index, if not the last one
        currentIndex++;

        if (currentIndex < visibleTimesDevices.length) {
          // Show next image after the current one disappears
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
// Show next image
            });
            toggleNextDevices();  // Continue toggling in a loop
          });
        } else {
          // Restart sequence from the beginning after the last image
          Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {
              currentIndex = 0;  // Reset to start
// Show the first image again
            });
            toggleNextDevices();  // Continue toggling in a loop
          });
        }
      });
    }

    toggleNextDevices();
  }





  String videoId = '';
  void playVideo(String id) {
    setState(() {
      videoId = id;
    });
  }
  Widget HomeDetails(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    String demoId ="HVtfiQ74O5U";

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         SizedBox(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?400: 250,
           child:
           Center(
             child: Text(softWrap: true,
               maxLines: 3,
               S.of(context).homeTitle,style: TextStyle(
                 color: darkBlue,
                 fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?35:22,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'NotoKufiArabic'
             ) ,),
           ),
         ),
            const SizedBox(height: 15,),
            SizedBox(width: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?400:250,
              child: Center(
                child: Text(S.of(context).homeDesc,
                    softWrap: true,
                    maxLines: 4,
                    style:TextStyle(
                    color: darkBlue,
                    fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?20:16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NotoKufiArabic',
                ) ),
              ),
            ),
            const SizedBox(height: 20,),
    ResponsiveRowColumn(

    layout:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
    ResponsiveRowColumnType.ROW
        :ResponsiveRowColumnType.COLUMN,
    rowMainAxisAlignment: MainAxisAlignment.center,  columnMainAxisAlignment: MainAxisAlignment.center,
    columnCrossAxisAlignment: CrossAxisAlignment.center,
    rowCrossAxisAlignment: CrossAxisAlignment.center,
    rowSpacing: 10,
    columnSpacing: 5,
    // rowPadding: const EdgeInsets.all(30),columnPadding: const EdgeInsets.all(20),
    children: [

    ResponsiveRowColumnItem(child:
    // HomeButton(textColor:Colors.white,text:S.of(context).Contactus,backgroudColor: yellow2, onTap: (){},),

    MouseRegion(
    cursor: SystemMouseCursors.click,        child: GestureDetector(
          onTap:  ()async{launchWhatsapp();},
          child: SizedBox(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE) ?200: 250,
            child: Center(
              child:
              ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? Intl.getCurrentLocale() == 'ar'?
                   Image.asset("assets/images/arsmallbuttoncontactus.png",):
              Image.asset("assets/images/ensmallbuttoncontactus.png",): Intl.getCurrentLocale() == 'ar'?Image.asset("assets/images/arlargebuttoncontactus.png"):Image.asset("assets/images/enlargebuttoncontactus.png")
            ),
          ),
        ),
      ),
    ),
      ResponsiveRowColumnItem(child:
    MouseRegion(
    cursor: SystemMouseCursors.click,       child: GestureDetector(
          onTap: () {

       showDialog<String>(useSafeArea: false,
         context: context,
         builder: (BuildContext context) => AlertDialog(
          // title: Center(child: const Text('open NEBU Demo')),
           title: Center(child:

               Container(width: width,height: height/1.3,margin: const EdgeInsets.all(0),padding: const EdgeInsets.all(0),
                 child: HtmlWidget(
                   '<iframe src="https://www.youtube.com/embed/$demoId" frameborder="0" allowfullscreen></iframe>',
                   webView: true,
                 ),
               ),

           ),
           actions: <Widget>[
             TextButton(
               onPressed: () => Navigator.pop(context, 'Cancel'),
               child: const Text('Cancel'),
             ),

           ],
         ),
       );
         },


          child: SizedBox(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE) ?200: 250,
            child: Center(
                child:
             // Intl.getCurrentLocale() == 'ar'?
                ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? Intl.getCurrentLocale() == 'ar'?
                Image.asset("assets/images/arsmallbuttondemo.png",):Image.asset("assets/images/ensmallbuttondemo.png",): Intl.getCurrentLocale() == 'ar'?Image.asset("assets/images/arlargebuttondemo.png"):Image.asset("assets/images/enlargebuttondemo.png")

            ),
          ),
        ),
     )
      ),

          ],

        ),

          ]

    );
  }
}
