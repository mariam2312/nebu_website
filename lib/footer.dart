import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'constants.dart';
import 'generated/l10n.dart';

class FooterPage extends StatefulWidget {
  final String title;
  const FooterPage({super.key, required this.title});
  static String id = "Header";
  @override
  State<FooterPage> createState() => _FooterPageState();
}


class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {  var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(height:1000,color: Colors.white,
          child:  ListView(  shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),

            children:
            [
              Column (

            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Stack(clipBehavior: Clip.none,
                  children: [Image.asset("assets/images/devices.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 3:5,),
                Positioned(bottom:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
                32:17,left:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 130: 80,
                  // bottom: 37,left:160,
                  child: IconButton(
                      icon: Image.asset("assets/images/googlePlay.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 2.5: 4.6,),
                      onPressed: () async {
                        await goToGooglePlayPage();}


                  ),
                ),   Positioned(bottom: ResponsiveBreakpoints.of(context).largerThan(TABLET)? 30:15,left:-10,
                  //bottom: 35,left:-10,
                  child: IconButton(
                      icon: Image.asset("assets/images/appStore.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)? 2.9:5.2,),
                      onPressed: () async {
                        await goToAppStorePage();}


                  ),
                ),]),

                Container(
                  padding:



                  EdgeInsets.symmetric(horizontal:Intl.getCurrentLocale() == 'ar'?
                  ResponsiveBreakpoints.of(context).largerThan(TABLET) ?150:10:width>=1166?150:10),
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveRowColumn(

                              layout:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
                              ResponsiveRowColumnType.ROW
                        :ResponsiveRowColumnType.COLUMN,
                              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,  columnMainAxisAlignment: MainAxisAlignment.center,
                              columnCrossAxisAlignment: CrossAxisAlignment.center,
                              rowCrossAxisAlignment: CrossAxisAlignment.center,
                               rowSpacing:10,
                              columnSpacing: 20,
                              // rowPadding: EdgeInsets.all(50),columnPadding: EdgeInsets.all(50),
                              children: [

                      ResponsiveRowColumnItem(child: Text(S.of(context).nebusystemjewellery,
                            style: TextStyle(
                            color: darkBlue,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoKufiArabic',
                            ),
                            ),),
                                ResponsiveRowColumnItem(

                        child:width>1250 || Intl.getCurrentLocale() == 'ar'?
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(S.of(context).findout,style:TextStyle( color: darkBlue,
                                fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:16,
                                 fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic',)),
                               SizedBox(width: Intl.getCurrentLocale() == 'ar'?20:10,),

          MouseRegion(
          cursor: SystemMouseCursors.click,child:  GestureDetector(onTap: (){launchWhatsapp();},
                       child:Intl.getCurrentLocale() == 'ar'?
                      Image.asset("assets/images/clickon.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 4:5)  :
                      Image.asset("assets/images/clickhere.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 4:6),
                      ),
                    ),
                            ],

                      ) :  Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(S.of(context).findout,style:TextStyle( color: darkBlue,
                                fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:16,
                                 fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic',)),
                               SizedBox(width: Intl.getCurrentLocale() == 'ar'?20:10,),

          MouseRegion(
          cursor: SystemMouseCursors.click,child:  GestureDetector(onTap: (){launchWhatsapp();},
                       child:Intl.getCurrentLocale() == 'ar'?
                      Image.asset("assets/images/clickon.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 4:5)  :
                      Image.asset("assets/images/clickhere.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 4:6),
                      ),
                    ),
                            ],

                      )

                      ),







                        ],
                      ),
                      const SizedBox(height:40,),
                      width>=730?Intl.getCurrentLocale() == 'ar'?
                      Row(
                        children: [
                          Image.asset("assets/images/arlogo.png",scale: 4.5,),
                          const SizedBox(width: 80),
                          Image.asset("assets/images/logo.png",scale: 7.5,),
                        ],
                      ) : Row(
                        children: [   Image.asset("assets/images/logo.png",scale: 7.5,),
                          const SizedBox(width: 80),

                          Image.asset("assets/images/arlogo.png",scale: 4.5,),

                        ],
                      ):Container(),
                        const SizedBox(height: 20,),
                     Intl.getCurrentLocale() == 'ar'? width>=730?
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text( S.of(context).products,style: TextStyle(  color: darkBlue,
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic'),),
                            const SizedBox(height: 20,),
                            Text( S.of(context).titleProduct1,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titleProduct2,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titleProduct3,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titleProduct4,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),

                                          ],),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Container(
                              width: 2,   color: Colors.grey,
                              height: 200),
                          ),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text( S.of(context).features,style: TextStyle(  color: darkBlue,
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic'),),
                              const SizedBox(height: 20,),

                              Text( S.of(context).titlefeature1,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titlefeature2,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titlefeature3,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),
                            Text( S.of(context).titlefeature4,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature5,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature6,style: TextStyle(  color: darkBlue,
                                fontSize:18,
                                fontFamily: 'NotoKufiArabic')),

                                            ],),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Container(
                                width: 2,   color: Colors.grey,
                                height: 200),
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( S.of(context).sources,style: TextStyle(  color: darkBlue,
                                  fontSize:20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 20,),

                              Text( S.of(context).commonquestions,style: TextStyle(  color: darkBlue,
                                  fontSize:18,
                                  fontFamily: 'NotoKufiArabic')),
                              Text( S.of(context).privacypolicy,style: TextStyle(  color: darkBlue,
                                  fontSize:18,
                                  fontFamily: 'NotoKufiArabic')),
                              Text( S.of(context).blog,style: TextStyle(  color: darkBlue,
                                  fontSize:18,
                                  fontFamily: 'NotoKufiArabic')),


                            ],)  ,

                          RotatedBox(
                            quarterTurns: 2,
                            child: Container(
                                width: 2,   color: Colors.grey,
                                height: 200),
                          ),
                           Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text( S.of(context).Contactus,style: TextStyle(  color: darkBlue,
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 20,),

                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    launchWhatsapp();
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/call.png", scale: 5,),
                                      const SizedBox(width: 5,),
                                      Text("+201222200056", style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 16,
                                        fontFamily: 'NotoKufiArabic',
                                      )),
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                cursor: SystemMouseCursors.click,         
                                child: GestureDetector(onTap: (){launchEmail();},
                                  child: Row(
                                  children: [Image.asset("assets/images/massage.png",scale: 5,),
                                    const SizedBox(width: 5,),

                                    Text("peteraziz@nebusystems.com",style: TextStyle(  color: darkBlue,
                                        fontSize:14,
                                        fontFamily: 'NotoKufiArabic')),
                                  ],
                                                      ),
                                ),
                              ),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                MouseRegion(
                                    cursor: SystemMouseCursors.click,child:
                                GestureDetector(onTap: (){goToTelegramChannel();},
                                    child:Image.asset("assets/images/telegram.png",scale: 6.5,))),                          const SizedBox(width: 5,),

                             MouseRegion(
                             cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToYoutupePage();},
                                 child:  Image.asset("assets/images/youtupe.png",scale: 6.5,))),
          const SizedBox(width: 5,),


                             MouseRegion(
                             cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToInstagramPage();},
          child:   Image.asset("assets/images/instagram.png",scale: 6.5,))),                          const SizedBox(width: 5,),


                             MouseRegion(
                             cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToFacebookPage();},
          child:  Image.asset("assets/images/facebook.png",scale: 6.5,))),

                              ],
                            ),
                                             ],),
                    ],
                  ):



                        Padding(
                          padding:  EdgeInsets.all(Intl.getCurrentLocale() == 'ar'?20:0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Intl.getCurrentLocale() == 'ar'?
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[ Image.asset("assets/images/arlogo.png",scale: 7,),  Image.asset("assets/images/logo.png",scale: 15,),] ):
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[ Image.asset("assets/images/logo.png",scale: 15,),Image.asset("assets/images/arlogo.png",scale: 7,),  ] ),
                              const SizedBox(height: 30,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text( S.of(context).Contactus,style: TextStyle(  color: darkBlue,
                                      fontSize:16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'NotoKufiArabic'),),
                                  const SizedBox(height: 10,),
                          
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            launchWhatsapp();
                                          },
                                          child: Row(
                                            children: [
                                              Image.asset("assets/images/call.png", scale: 6,),
                                              const SizedBox(width: 5,),
                                              Text("+201222200056", style: TextStyle(
                                                color: darkBlue,
                                                fontSize: 14, fontWeight: FontWeight.bold,
                                                fontFamily: 'NotoKufiArabic',
                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          MouseRegion(
                                              cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToTelegramChannel();},
                                              child: Image.asset("assets/images/telegram.png",scale: 9))),                          const SizedBox(width: 5,),
                          
                                          MouseRegion(
                                              cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToYoutupePage();},
                                              child: Image.asset("assets/images/youtupe.png",scale:9))),                          const SizedBox(width: 5,),
                          
                          
                                          MouseRegion(
                                              cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToInstagramPage();},child:
                                          Image.asset("assets/images/instagram.png",scale: 9,))),                          const SizedBox(width: 5,),
                          
                          
                                          MouseRegion(
                                              cursor: SystemMouseCursors.click,  child: GestureDetector(onTap: (){goToFacebookPage();},
                                              child:   Image.asset("assets/images/facebook.png",scale: 9,))),
                          
                                        ],
                                      ),
                                    ],
                                  ),
                          
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(onTap: (){launchEmail();},
                                    child: Row(
                                      children: [Image.asset("assets/images/massage.png",scale: 6,),
                                        const SizedBox(width: 5,),
                          
                                        Text("peteraziz@nebusystems.com",style: TextStyle(  color: darkBlue,
                                            fontSize:14, fontWeight: FontWeight.bold,
                                            fontFamily: 'NotoKufiArabic')),
                                      ],
                                    ),
                                  ),
                                  ),
                          
                                ],),
                              const SizedBox(height: 30,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text( S.of(context).products,style: TextStyle(  color: darkBlue,
                                          fontSize:16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic'),),
                                      const SizedBox(height:10,),
                                      Text( S.of(context).titleProduct1,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titleProduct2,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titleProduct3,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titleProduct4,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                  
                                    ],),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 30,),

                                      Text( S.of(context).features,style: TextStyle(  color: darkBlue,
                                          fontSize:16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic'),),
                                      const SizedBox(height: 10,),
                          
                                      Text( S.of(context).titlefeature1,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titlefeature2,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titlefeature3,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                                      Text( S.of(context).titlefeature4,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature5,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature6,style: TextStyle(  color: darkBlue,
                                          fontSize:14, fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoKufiArabic')),
                          
                                    ],),
                          
                                ],
                              ),
                          
                              const SizedBox(height: 30,),
                          
                              Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text( S.of(context).sources,style: TextStyle(  color: darkBlue,
                                      fontSize:16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 10,),
                          
                                  Text( S.of(context).commonquestions,style: TextStyle( fontWeight: FontWeight.bold,  color: darkBlue,
                                      fontSize:14,
                                      fontFamily: 'NotoKufiArabic')),
                                  Text( S.of(context).privacypolicy,style: TextStyle( fontWeight: FontWeight.bold,  color: darkBlue,
                                      fontSize:14,
                                      fontFamily: 'NotoKufiArabic')),
                                  Text( S.of(context).blog,style: TextStyle(  fontWeight: FontWeight.bold, color: darkBlue,
                                      fontSize:14,
                                      fontFamily: 'NotoKufiArabic')),
                          
                          
                                ],)  ,
                            ],
                          ),
                        ):width>880?  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text( S.of(context).products,style: TextStyle(  color: darkBlue,
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'NotoKufiArabic'),),
                             const SizedBox(height: 20,),
                             Text( S.of(context).titleProduct1,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titleProduct2,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titleProduct3,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titleProduct4,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),

                           ],),
                         RotatedBox(
                           quarterTurns: 2,
                           child: Container(
                               width: 2,   color: Colors.grey,
                               height: 200),
                         ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text( S.of(context).features,style: TextStyle(  color: darkBlue,
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'NotoKufiArabic'),),
                             const SizedBox(height: 20,),

                             Text( S.of(context).titlefeature1,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titlefeature2,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titlefeature3,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).titlefeature4,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature5,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature6,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),

                           ],),
                         RotatedBox(
                           quarterTurns: 2,
                           child: Container(
                               width: 2,   color: Colors.grey,
                               height: 200),
                         ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text( S.of(context).sources,style: TextStyle(  color: darkBlue,
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 20,),

                             Text( S.of(context).commonquestions,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).privacypolicy,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),
                             Text( S.of(context).blog,style: TextStyle(  color: darkBlue,
                                 fontSize:18,
                                 fontFamily: 'NotoKufiArabic')),


                           ],)  ,

                         RotatedBox(
                           quarterTurns: 2,
                           child: Container(
                               width: 2,   color: Colors.grey,
                               height: 200),
                         ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text( S.of(context).Contactus,style: TextStyle(  color: darkBlue,
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 20,),

                             MouseRegion(
                               cursor: SystemMouseCursors.click,
                               child: GestureDetector(
                                 onTap: () {
                                   launchWhatsapp();
                                 },
                                 child: Row(
                                   children: [
                                     Image.asset("assets/images/call.png", scale: 5,),
                                     const SizedBox(width: 5,),
                                     Text("+201222200056", style: TextStyle(
                                       color: darkBlue,
                                       fontSize: 16,
                                       fontFamily: 'NotoKufiArabic',
                                     )),
                                   ],
                                 ),
                               ),
                             ),

                             MouseRegion(
                               cursor: SystemMouseCursors.click,
                               child: GestureDetector(onTap: (){launchEmail();},
                                 child: Row(
                                   children: [Image.asset("assets/images/massage.png",scale: 5,),
                                     const SizedBox(width: 5,),

                                     Text("peteraziz@nebusystems.com",style: TextStyle(  color: darkBlue,
                                         fontSize:14,
                                         fontFamily: 'NotoKufiArabic')),
                                   ],
                                 ),
                               ),
                             ),
                             const SizedBox(height: 20,),
                             Row(
                               children: [
                                 MouseRegion(
                                     cursor: SystemMouseCursors.click,child:
                                 GestureDetector(onTap: (){goToTelegramChannel();},
                                     child:Image.asset("assets/images/telegram.png",scale: 6.5,))),                          const SizedBox(width: 5,),

                                 MouseRegion(
                                     cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToYoutupePage();},
                                     child:  Image.asset("assets/images/youtupe.png",scale: 6.5,))),
                                 const SizedBox(width: 5,),


                                 MouseRegion(
                                     cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToInstagramPage();},
                                     child:   Image.asset("assets/images/instagram.png",scale: 6.5,))),                          const SizedBox(width: 5,),


                                 MouseRegion(
                                     cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToFacebookPage();},
                                     child:  Image.asset("assets/images/facebook.png",scale: 6.5,))),

                               ],
                             ),
                           ],),
                       ],
                     ):



                     Padding(
                       padding:  EdgeInsets.all(Intl.getCurrentLocale() == 'ar'?20:0),
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [Intl.getCurrentLocale() == 'ar'?
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:[ Image.asset("assets/images/arlogo.png",scale: 7,),  Image.asset("assets/images/logo.png",scale: 15,),] ):
                         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children:[ Image.asset("assets/images/logo.png",scale: 15,),Image.asset("assets/images/arlogo.png",scale: 7,),  ] ),
                           const SizedBox(height: 30,),
                           Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text( S.of(context).Contactus,style: TextStyle(  color: darkBlue,
                                   fontSize:16,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'NotoKufiArabic'),),
                               const SizedBox(height: 10,),

                               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   MouseRegion(
                                     cursor: SystemMouseCursors.click,
                                     child: GestureDetector(
                                       onTap: () {
                                         launchWhatsapp();
                                       },
                                       child: Row(
                                         children: [
                                           Image.asset("assets/images/call.png", scale: 6,),
                                           const SizedBox(width: 5,),
                                           Text("+201222200056", style: TextStyle(
                                             color: darkBlue,
                                             fontSize: 14, fontWeight: FontWeight.bold,
                                             fontFamily: 'NotoKufiArabic',
                                           )),
                                         ],
                                       ),
                                     ),
                                   ),
                                   Row(
                                     children: [
                                       MouseRegion(
                                           cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToTelegramChannel();},
                                           child: Image.asset("assets/images/telegram.png",scale: 9))),                          const SizedBox(width: 5,),

                                       MouseRegion(
                                           cursor: SystemMouseCursors.click,child: GestureDetector(onTap: (){goToYoutupePage();},
                                           child: Image.asset("assets/images/youtupe.png",scale:9))),                          const SizedBox(width: 5,),


                                       MouseRegion(
                                           cursor: SystemMouseCursors.click, child: GestureDetector(onTap: (){goToInstagramPage();},child:
                                       Image.asset("assets/images/instagram.png",scale: 9,))),                          const SizedBox(width: 5,),


                                       MouseRegion(
                                           cursor: SystemMouseCursors.click,  child: GestureDetector(onTap: (){goToFacebookPage();},
                                           child:   Image.asset("assets/images/facebook.png",scale: 9,))),

                                     ],
                                   ),
                                 ],
                               ),

                               MouseRegion(
                                 cursor: SystemMouseCursors.click,
                                 child: GestureDetector(onTap: (){launchEmail();},
                                   child: Row(
                                     children: [Image.asset("assets/images/massage.png",scale: 6,),
                                       const SizedBox(width: 5,),

                                       Text("peteraziz@nebusystems.com",style: TextStyle(  color: darkBlue,
                                           fontSize:14, fontWeight: FontWeight.bold,
                                           fontFamily: 'NotoKufiArabic')),
                                     ],
                                   ),
                                 ),
                               ),

                             ],),
                           const SizedBox(height: 30,),
                           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text( S.of(context).products,style: TextStyle(  color: darkBlue,
                                       fontSize:16,
                                       fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic'),),
                                   const SizedBox(height:10,),
                                   Text( S.of(context).titleProduct1,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titleProduct2,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titleProduct3,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titleProduct4,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),

                                 ],),
                               Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   const SizedBox(height: 30,),

                                   Text( S.of(context).features,style: TextStyle(  color: darkBlue,
                                       fontSize:16,
                                       fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic'),),
                                   const SizedBox(height: 10,),

                                   Text( S.of(context).titlefeature1,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titlefeature2,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titlefeature3,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),
                                   Text( S.of(context).titlefeature4,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature5,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),   Text( S.of(context).titlefeature6,style: TextStyle(  color: darkBlue,
                                       fontSize:14, fontWeight: FontWeight.bold,
                                       fontFamily: 'NotoKufiArabic')),

                                 ],),

                             ],
                           ),

                           const SizedBox(height: 30,),

                           Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text( S.of(context).sources,style: TextStyle(  color: darkBlue,
                                   fontSize:16,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'NotoKufiArabic'),),                    const SizedBox(height: 10,),

                               Text( S.of(context).commonquestions,style: TextStyle( fontWeight: FontWeight.bold,  color: darkBlue,
                                   fontSize:14,
                                   fontFamily: 'NotoKufiArabic')),
                               Text( S.of(context).privacypolicy,style: TextStyle( fontWeight: FontWeight.bold,  color: darkBlue,
                                   fontSize:14,
                                   fontFamily: 'NotoKufiArabic')),
                               Text( S.of(context).blog,style: TextStyle(  fontWeight: FontWeight.bold, color: darkBlue,
                                   fontSize:14,
                                   fontFamily: 'NotoKufiArabic')),


                             ],)  ,
                         ],
                       ),
                     )










                          ]),
                ),

              ],)],
          )),
        Container(padding: EdgeInsets.symmetric(horizontal:ResponsiveBreakpoints.of(context).largerThan(TABLET)?150:10),
          width: width,height: 150,color: darkBlue,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).nebusystemgold,style: TextStyle(  color: Colors.white,
                      fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 25:18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoKufiArabic'),),
                  ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
                  Row(
                    children: [
                      Text(S.of(context).Poweredby1,style: TextStyle(  color: Colors.white,
                          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 25:18,
                          fontFamily: 'NotoKufiArabic'),),
                      Text(S.of(context).Poweredby2,style: TextStyle(  color: Colors.white,
                          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 25:18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic'),),
                    ],
                  )
                      :
                  Column(crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).Poweredby1,style: TextStyle(  color: Colors.white,
                          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 25:18,
                          fontFamily: 'NotoKufiArabic'),),
                      Text(S.of(context).Poweredby2,style: TextStyle(  color: Colors.white,
                          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 25:18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic'),),
                    ],
                  ),
                ],),
              Image.asset("assets/images/smalllogo.png",scale:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
              5:8,)
            ],),
        )

      ],
    );
    
  }
}
