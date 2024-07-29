import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'constants.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class EventsPage extends StatefulWidget {
  final String title;
  const EventsPage({super.key,
    required this.title,
  });
  static String id = "Events";
  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final List<Widget> imgList = [

         EventsImages(width: width,
           image1:'assets/images/expo2image1.jpg',
           image2:'assets/images/expo2image2.jpg',
           image3: 'assets/images/image4.jpg',
           image4:'assets/images/image4.jpg',
           image5:'assets/images/expo2image5.jpg',
           title1:  ResponsiveBreakpoints.of(context).largerThan(MOBILE)?'Nebu\nExpo':'Nebu Expo ',
           title2: '2021',
           ),
      EventsImages(width: width,
           image1:'assets/images/expo2image1.jpg',
           image2:'assets/images/expo2image2.jpg',
           image3: 'assets/images/expo2image3.jpg',
           image4:'assets/images/expo2image4.jpg',
           image5:'assets/images/expo2image5.jpg',
           title1:  ResponsiveBreakpoints.of(context).largerThan(MOBILE)?'Nebu\nExpo':'Nebu Expo ',
           title2: '2022',
           ),
      EventsImages(width: width,
           image1:'assets/images/expo3image1.jpeg',
           image2:'assets/images/expo3image2.jpeg',
           image3: 'assets/images/expo3image3.jpeg',
           image4:'assets/images/expo3image4.jpeg',
           image5:'assets/images/expo3image5.jpeg',
           title1:  ResponsiveBreakpoints.of(context).largerThan(MOBILE)?'Nebu\nExpo':'Nebu Expo ',
           title2: '2023',
           ),



    ];

    return ImageSlideshow(
      width:double.maxFinite,
      height: 800,
      initialPage: 0,
      indicatorColor: yellow2,
      indicatorRadius: 5,
      indicatorBottomPadding:100,
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
      autoPlayInterval: 5000,
      isLoop: true,
      children: imgList,
    );
  }
}

class EventsImages extends StatelessWidget {
  const EventsImages({
    super.key,
    required this.width, required this.image1, required this.image2, required this.image3, required this.image4, required this.image5,  required this.title1, required this.title2,
  });

  final double width;
  final String image1; final String image2; final String image3; final String image4; final String image5;
  final String title1;final String title2;


  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(top: 100),
      child: IntrinsicHeight(
        child: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
        Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                SizedBox(
                  height: 200,
                  width: width / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Clip the child image to a circular shape
                    child: Image.asset(
                      image1, // Replace with your image URL
                      fit: BoxFit.cover, // Cover the entire container
                    ),
                  ),
                )
      ,
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height:200,
                  width: width / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Clip the child image to a circular shape
                    child: Image.asset(
                      image2, // Replace with your image URL
                      fit: BoxFit.cover, // Cover the entire container
                    ),
                  ),
                ),
              ]),

              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 430,
                      width: width / 4.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Clip the child image to a circular shape
                        child: Image.asset(
                          image3, // Replace with your image URL
                          fit: BoxFit.cover, // Cover the entire container
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),



              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: width / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  Row(
                    children: [
                      SizedBox(
                        height: 200,
                        width: width / 5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 200,
                        width: width / 7,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "$title1\n$title2",
                                style: TextStyle(  color: darkBlue,
                                fontSize:width>=1900?width / 55:width / 40,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoKufiArabic',)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )

            ]):
        Column(
          children: [
        Column(
              children: [
                SizedBox(
                  height: 200,
                  width: width / 1.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                SizedBox(
                  height: 200,
                  width: width / 1.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),


              ],
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 200,
              width: width ,
              child: Center(
                child: Column(
                  children: [
                    Text(
                        title1,
                        style: TextStyle(  color: darkBlue,
                          fontSize:40,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic',)
                    ), Text(
                        title2,
                        style: TextStyle(  color: darkBlue,
                          fontSize:40,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoKufiArabic',)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
