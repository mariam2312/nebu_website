// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:auto_animated/auto_animated.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'constants.dart';
import 'generated/l10n.dart';

class StoryPage extends StatefulWidget {
  final String title;
  const StoryPage({
    required this.title,
  });

  static String id = "Story";

  @override
  State<StoryPage> createState() => _StoryPageState();
}


class _StoryPageState extends State<StoryPage> {
  bool isImageChanged = false;
  void changeStory() {
    setState(() {
      isImageChanged = !isImageChanged;
    });
  }
  final options = const LiveOptions(
    delay: Duration(milliseconds: 500),

    showItemInterval: Duration(seconds: 1),

    showItemDuration: Duration(seconds: 1),

    visibleFraction: 0.05,

    reAnimateOnVisibility: true,
  );

  final options2 = const LiveOptions(
    delay: Duration(milliseconds: 900),

    showItemInterval: Duration(seconds: 1),

    showItemDuration: Duration(seconds: 1),

    visibleFraction: 0.05,
    reAnimateOnVisibility: true,
  );

  Widget buildAnimatedItem2(
      BuildContext context,
      int index,
      Animation<double> animation,
      ) {
    return _buildItem0(animation);
  }

// Build animated item (helper for all examples)
  Widget buildAnimatedItem(
      BuildContext context,
      int index,
      Animation<double> animation,
      ) {
    // Define your three different widgets
    List<Widget> children = [
      OddItem(context: context, animation: animation, story:"2017" , text1:S.of(context).descstory1_1,index: 1, topMargin: 200,text2: S.of(context).descstory1_2, text3: S.of(context).descstory1_3, size1: Intl.getCurrentLocale() == 'ar'?14:18, size2: Intl.getCurrentLocale() == 'ar'?18:14, onTap:(){} ,),
      EvenItem(context: context, animation: animation,story: "2019", text1:S.of(context).descstory2_1,index:2, text2: S.of(context).descstory2_2, text3: '', color: yellow2,size:14 ,),
      OddItem(context: context, animation: animation, story:" 2022", text1:S.of(context).descstory3, index: 3, topMargin: 0,text2: '', text3: '',size2: 14, onTap: (){}, size1: 14,),
      EvenItem(context: context, animation: animation,story:"2023", text1:S.of(context).descstory4_1,index:4,text2: S.of(context).descstory4_2, text3: S.of(context).descstory4_3,color: darkBlue,size:18 ,),
      OddItem(context: context, animation: animation, story: "2024", text1:S.of(context).descstory5_1,index: 5, topMargin: 0,text2: S.of(context).descstory5_2, text3: '',size2: 18, onTap: (){launchWhatsapp();}, size1: 14,),
      dayItem(context: context, animation: animation,) ];
    return children[index % children.length];
  }
  Widget _buildItem0(Animation<double> animation) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0), // Start from left
          end: Offset.zero, // End at original position (no horizontal movement)
        ).animate(animation),
        child: Container(
          margin:  EdgeInsets.only(top: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
          148:340),
          child: ClipPath(
            clipper: BackgroundStory(),
            child: Container(  color: yellow2,
              height: 900,
              width: double.maxFinite,  child: Align(
              alignment: Alignment.centerLeft,
              child: Container( width: 120,margin: const EdgeInsets.only(top:250),
                  height: 120,child: Image.asset('Assets/images/light.png')),
            ),
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    String storyText =  S.of(context).story1;
    return  Container(color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isImageChanged==true)
              Container(
              height: MediaQuery.of(context).size.width>=700? Intl.getCurrentLocale() == 'ar'?1400:1600:Intl.getCurrentLocale() == 'ar'?1650:2000,
              //color: Colors.white,
              child:
              Stack(children: [
                LiveList.options(
                  options: options2,
                  itemBuilder: buildAnimatedItem2,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  physics: const NeverScrollableScrollPhysics(),
                ),

                //  With predefined options
                LiveList.options(
                  options: options,
                  itemBuilder: buildAnimatedItem,
                  scrollDirection: Axis.vertical,
                  itemCount:6,
                  physics: const NeverScrollableScrollPhysics(),
                ),


                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: GestureDetector(
                          onTap: changeStory,
                          child:
                          Text(storyText,style: TextStyle( color: darkBlue,
                              fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?80:60,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoKufiArabic'),)
                        )
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: changeStory,
                            child: DotLottieLoader.fromAsset("assets/images/book.lottie",
                                frameBuilder: (ctx, dotlottie) {
                                  if (dotlottie != null) {
                                    return Lottie.memory(dotlottie.animations.values.single);
                                  } else {
                                    return Container();
                                  }
                                }),
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Container(
                              width: 4,   color: darkBlue,
                              height:
                              MediaQuery.of(context).size.width>=1240?Intl.getCurrentLocale() == 'ar'?660:790
                                  :  MediaQuery.of(context).size.width>=1050 ?Intl.getCurrentLocale() == 'ar'?700:880:
                              MediaQuery.of(context).size.width>=700 ?
                              Intl.getCurrentLocale() == 'ar'?780:1050:
                              Intl.getCurrentLocale() == 'ar'?
                              1000: MediaQuery.of(context).size.width>=600 ?1230:1850,// Choose your color
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50), color: darkBlue),
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ]),
            )
            else Container(height: 500,
              child: Center(
                child: GestureDetector(
                  onTap:
                  changeStory,

                  child:  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(storyText,style: TextStyle( color: darkBlue,
                    fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?80:60,
                    fontWeight: FontWeight.bold,
                       fontFamily: 'NotoKufiArabic'),),

                        Container(width: Intl.getCurrentLocale() == 'ar'?150:100,height :Intl.getCurrentLocale() == 'ar'?150: 100,
                          child:
                            DotLottieLoader.fromAsset(
                              "assets/images/play.json",frameBuilder: (ctx, dotlottie) {
                            if (dotlottie != null) {
                              return Lottie.memory(dotlottie.animations.values.single,
                              );
                            } else {
                              return Container();
                            }
                          },
                            errorBuilder: (ctx, e, s) {
                              return Text(e.toString());
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),



          ],

         ),
    );
  }
}
class EvenItem extends StatelessWidget {
  const EvenItem({required this.text2,required this.text3,
    super.key,
    required this.context,
    required this.animation, required this.story, required this.text1,required this.index, required this.color, required this.size
  });

  final BuildContext context;
  final Animation<double> animation;
  final String text1;final String text2;final String text3;final String story;
  final int index;final Color color;
  final double size;
  @override
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.2, 0),
          end: Offset.zero,
        ).animate(animation),
        child:
        Column(

            crossAxisAlignment: Intl.getCurrentLocale() == 'ar'
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: width / 1.5),
                child:
                Text(story,
                    style:
                    TextStyle(height: 1, color: darkBlue,  fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 40:35,fontWeight: FontWeight.bold)),
              ),
              EvenLine(
                width: width,

              ),
              Container(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? MediaQuery.of(context).size.width / 4:MediaQuery.of(context).size.width /2.5,
                margin:EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 1.95)
                ,
                child: Wrap(  direction: Axis.horizontal,

                  children: [
                    Text(text1,
                        style:
                        TextStyle(height: 1.3, color: color, fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic')),
                    Text(text2,
                        style:
                        TextStyle(height: 1.3, color: darkBlue, fontSize: size,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic')),
                    Text(text3,
                        style:
                        TextStyle(height: 1.3, color: darkBlue, fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic')),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
class OddItem extends StatelessWidget {
  const OddItem({
    required this.text2,
    required this.text3,
    super.key,
    required this.context,
    required this.size2,
    required this.animation,
    required this.text1,
    required this.story,
    required this.topMargin,
    required this.index,
    required this.onTap, // No parentheses here
    required this.size1,
  });

  final BuildContext context;
  final Animation<double> animation;
  final String text1;
  final String text2;
  final String text3;
  final String story;
  final double topMargin;
  final double size2;
  final double size1;
  final int index;
  final Function() onTap; // No parentheses here

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-0.2, 0),
          end: Offset.zero,
        ).animate(animation),
        child: Container(
          margin: EdgeInsets.only(top: topMargin),
          child: Column(
              crossAxisAlignment: Intl.getCurrentLocale() == 'ar'
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width / 1.5),
                  child:
                  Text(story,
                      style:
                      TextStyle(height: 1, color: darkBlue,  fontSize:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 40:35,fontWeight: FontWeight.bold)),
                ),
                OddLine(
                  width: width,

                ),
                Container(width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)? MediaQuery.of(context).size.width / 4:MediaQuery.of(context).size.width /2.5,
                  margin:EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 1.95)
                  ,
                  child: Wrap(
                    children: [
                      Text(
                        text1,
                        style: TextStyle(height: 1.3, color: darkBlue, fontSize: size1,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic'),
                      ),
                      GestureDetector(
                        onTap: onTap, // No parentheses here
                        child: Text(
                          text2,
                          style: TextStyle(height: 1.3, color: darkBlue, fontSize: size2,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic'),
                        ),
                      ),
                      Text(
                        text3,
                        style: TextStyle(height: 1.3, color: darkBlue, fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'NotoKufiArabic'),
                      ),
                    ],
                  ),

                ),
              ]),
        ),
      ),
    );
  }
}
class EvenLine extends StatelessWidget {
  final double width;

  const EvenLine({required this.width});

  @override
  Widget build(BuildContext context) {
    return Intl.getCurrentLocale() == 'en'
        ? Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: darkBlue),

          width: 20,
          height: 20,
        ),
        Container(margin: EdgeInsets.only(right:width /2),
            width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  width / 4:width / 2.5, height: 3, color: darkBlue),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(margin: EdgeInsets.only(right:width /2),
          width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  width / 4:width / 2.5,
          height: 4,
          color: darkBlue,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: darkBlue),
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
class OddLine extends StatelessWidget {
  const OddLine({
    required this.width,

  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Intl.getCurrentLocale() == 'en'
        ? Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container( margin: EdgeInsets.only(left: width /2 ),

            width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  MediaQuery.of(context).size.width / 4:MediaQuery.of(context).size.width / 3,
            height: 4,
            color: darkBlue),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: darkBlue),

          width: 20,
          height: 20,
        ),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: darkBlue),

          width: 20,
          height: 20,
        ),
        Container(
            margin: EdgeInsets.only(left: width /2),
            width:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?  MediaQuery.of(context).size.width / 4:MediaQuery.of(context).size.width / 2.5,
            height: 4,
            color: darkBlue),
      ],
    );
  }
}

class dayItem extends StatelessWidget {
  const dayItem({
    super.key,
    required this.context,
    required this.animation,
  });

  final BuildContext context;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-0.2, 0),
            end: Offset.zero,
          ).animate(animation),
          child:Intl.getCurrentLocale() == 'ar'?
    Center(
    child: Text("اليوم",style: TextStyle(   color: darkBlue,
    fontSize:80,
    fontWeight: FontWeight.bold,
    fontFamily: 'NotoKufiArabic'),)):Center(
            child: Text("ToDay",style: TextStyle(   color: darkBlue,
                fontSize:80,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoKufiArabic'),),
          )

      ),
    );
  }
}


class BackgroundStory extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.6);
    path.lineTo(size.width, size.height * 0.18);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height * 0.67);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

