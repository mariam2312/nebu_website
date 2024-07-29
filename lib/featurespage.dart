// import 'package:flutter/material.dart';
// import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:responsive_framework/responsive_framework.dart';
//
// import 'constants.dart';
// import 'generated/l10n.dart';
//
// class Profit extends StatefulWidget {
//   const Profit({super.key});
//
//   @override
//   State<Profit> createState() => _ProfitState();
// }
//
// class _ProfitState extends State<Profit> {
//
//     int _current = 0;
//
//
//     List<Widget> imageProfit = [
//       Image.asset("assets/images/bag.png",scale: 3,),
//       Image.asset("assets/images/bag.png",scale: 3,),   Image.asset("assets/images/bag.png",scale: 3,),
//       Image.asset("assets/images/bag.png",scale: 3,),
//
//     ];
//
//     final List<Widget> imgList = [
//       Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset("assets/images/backgroundMobile.png",scale: 4, ),
//           Positioned(top: 100,child: Image.asset("assets/images/mobile.png",scale: 6, )),
//         ],
//       ),
//       Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset("assets/images/backgroundMobile.png",scale: 4, ),
//           Positioned(top: 100,child: Image.asset("assets/images/mobile.png",scale: 6, )),
//         ],
//       ),  Stack(
//         alignment: Alignment.center,
//         children: [
//           Image.asset("assets/images/backgroundMobile.png",scale: 4, ),
//           Positioned(top: 100,child: Image.asset("assets/images/mobile.png",scale: 6, )),
//         ],
//       ),
//
//     ];
//     @override
//     Widget build(BuildContext context) {
//       List titleProfit = [
//         Row(
//           children: [
//             Text( S.of(context).titleProfit1,style: textStyleActions,),
//             Text(S.of(context).titleProfit1_1,style: const TextStyle(color: Colors.greenAccent,  fontSize:30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'NotoKufiArabic'),)
//           ],
//         ),Row(
//           children: [
//             Text( S.of(context).titleProfit1,style: textStyleActions,),
//             Text(S.of(context).titleProfit2,style: const TextStyle(color: Colors.greenAccent,  fontSize:30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'NotoKufiArabic'),)
//           ],
//         ),Row(
//           children: [
//             Text( S.of(context).titleProfit1,style: textStyleActions,),
//             Text(S.of(context).titleProfit3,style: const TextStyle(color: Colors.greenAccent,  fontSize:30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'NotoKufiArabic'),)
//           ],
//         ),Row(
//           children: [
//             Text( S.of(context).titleProfit1,style: textStyleActions,),
//             Text(S.of(context).titleProfit4,style: const TextStyle(color: Colors.greenAccent,  fontSize:30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'NotoKufiArabic'),)
//           ],
//         ),
//
//       ];
//       List descProfit = [ SizedBox(width: 300,
//         child: Text(S.of(context).descProfit1, maxLines: 3,
//           overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,  fontSize:20,
//
//               fontFamily: 'NotoKufiArabic'),),
//       ),SizedBox(width: 300,
//         child: Text(S.of(context).descProfit2, maxLines: 3,
//           overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,  fontSize:20,
//
//               fontFamily: 'NotoKufiArabic'),),
//       ),SizedBox(width: 300,
//         child: Text(S.of(context).descProfit3, maxLines: 3,
//           overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,  fontSize:20,
//
//               fontFamily: 'NotoKufiArabic'),),
//       ),SizedBox(width: 300,
//         child: Text(S.of(context).descProfit4, maxLines: 3,
//           overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,  fontSize:20,
//
//               fontFamily: 'NotoKufiArabic'),),
//       ),
//
//       ];
//       var  width= MediaQuery.of(context).size.width;
//
//       return  ResponsiveRowColumn(
//
//       layout:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
//       ResponsiveRowColumnType.ROW
//           :ResponsiveRowColumnType.COLUMN,
//       rowMainAxisAlignment: MainAxisAlignment.center,  columnMainAxisAlignment: MainAxisAlignment.center,
//       columnCrossAxisAlignment: CrossAxisAlignment.center,
//       rowCrossAxisAlignment: CrossAxisAlignment.center,
//       columnSpacing: 10,  rowSpacing:30,
//       children: [
//
//
//
//       ResponsiveRowColumnItem(
//       child:
//       Center(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//         imageProfit[_current],
//
//         const SizedBox(
//         height: 20,
//         ),
//
//         titleProfit[_current],
//
//         const SizedBox(
//         height: 20,
//         ),
//         descProfit[_current],
//         const SizedBox(
//         height: 100,
//         ),
//
//         ],
//         ),
//       ),),
//         ResponsiveRowColumnItem(child:
//         ImageSlideshow(
//           width:ResponsiveBreakpoints.of(context).largerThan(TABLET)?width/2:width,
//           height: 800,
//           initialPage: 0,
//           indicatorColor: yellow2,
//           indicatorRadius: 5,
//           indicatorBottomPadding:120,
//           indicatorBackgroundColor: Colors.grey,
//           onPageChanged: (index) {
//             setState(() {
//               _current = index;
//             });
//           },
//           autoPlayInterval: 5000,
//           isLoop: true,
//           children: imgList,
//         ),),
//       ],
//       );
//
//
//
//
//
//
// }
// }
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'constants.dart';
import 'generated/l10n.dart';

class FeaturesPage extends StatefulWidget {
   FeaturesPage({super.key, required String title});
  static String id = "Products";
  @override
  State<FeaturesPage> createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {
  int _current = 0;






  @override
  Widget build(BuildContext context) {
    var  width= MediaQuery.of(context).size.width;



    List<Widget> imagefeature = [
      Image.asset("assets/images/inventoryicon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?2:3,),
      Image.asset("assets/images/invoiceicon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?6:8,),
      Image.asset("assets/images/reporticon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?6:8,),
      Image.asset("assets/images/profitsicon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?6:8,),
      Image.asset("assets/images/pie-charticon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?6:8,),
      Image.asset("assets/images/timeicon.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?6:8,),

    ];
    List titlefeature = [
      Text( S.of(context).titlefeature1,style:TextStyle( color: green,
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titlefeature2
        ,style:TextStyle( color: const Color(0XFF703542),
            fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titlefeature3,style:TextStyle( color: const Color(0XFF47526C),
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titlefeature4,style:TextStyle( color: const Color(0XFF007D55),
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titlefeature5,style:TextStyle( color: const Color(0XFFF7B2D8),
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titlefeature6,style:TextStyle( color: const Color(0XFF5E528C),
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
    ];
    List descfeature = [ SizedBox(width: 400,
      child: Text(S.of(context).descfeature1, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold,  fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descfeature2, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold,  fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descfeature3, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold,  fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descfeature4, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold, fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),
      SizedBox(width: 400,
      child: Text(S.of(context).descfeature5, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold, fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descfeature6, maxLines: 15,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold, fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),

    ];



    final List<Widget> imgList = [
      SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        // height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?500:300, // adjust the height
        child: Image.asset("assets/images/featureimage1.png", fit: BoxFit.cover),
      ), SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        height: 300, // adjust the height
        child: Image.asset("assets/images/featureimage2.png",scale: 3.2,),
      ), SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        // height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?500:300, // adjust the height
        child: Image.asset("assets/images/featureimage3.png",fit: BoxFit.cover),
      ), SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        // height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?500:300, // adjust the height
        child: Image.asset("assets/images/featureimage4.png",scale: 3.2, ),
      ), SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        // height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?500:300, // adjust the height
        child: Image.asset("assets/images/featureimage5.png",scale: 3.2, ),
      ), SizedBox(
        width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width, // adjust the width
        // height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?500:300, // adjust the height
        child: Image.asset("assets/images/featureimage6.png",scale: 3.2, ),
      ),

    ];

    return
      Column(
        children: [const SizedBox(height: 50,),
          ResponsiveRowColumn(
            layout:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
              ResponsiveRowColumnType.ROW
            :ResponsiveRowColumnType.COLUMN,
              rowMainAxisAlignment: MainAxisAlignment.center,  columnMainAxisAlignment: MainAxisAlignment.center,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
              rowSpacing:0,columnSpacing: 0,
              children: [


              ResponsiveRowColumnItem(
                child:
                Container(padding: const EdgeInsets.symmetric(horizontal: 10),width:ResponsiveBreakpoints.of(context).largerThan(TABLET)? width/3:width/1.2,
                  child: Column(crossAxisAlignment:
                  ResponsiveBreakpoints.of(context).largerThan(TABLET)?CrossAxisAlignment.start:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(
                        height:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 100:30,
                      ),

                      ResponsiveBreakpoints.of(context).largerThan(TABLET)?
                      SizedBox(width: 400,
                        child: Column(crossAxisAlignment:
                        CrossAxisAlignment.start,                        children:[ imagefeature[_current],
                          const SizedBox(
                            height: 20,
                          ),

                          titlefeature[_current],]),
                      ):
              SizedBox(width: 400, child: Row(                            mainAxisAlignment: MainAxisAlignment.start,

            children:[ imagefeature[_current],
                        const SizedBox(
                          width: 5,
                        ),

                        titlefeature[_current],])),


                      const SizedBox(
                        height: 20,
                      ),
                      descfeature
                      [_current],
                      // const SizedBox(
                      //   height: 100,
                      // ),

                    ],
                  ),
                ),),
              ResponsiveRowColumnItem(child:
              ImageSlideshow(
                width:ResponsiveBreakpoints.of(context).largerThan(TABLET)?width/3:width/1.2,
                height:ResponsiveBreakpoints.of(context).largerThan(TABLET)?700: 600,
                initialPage: 0,
                indicatorColor: yellow2,
                indicatorRadius: 5,
                indicatorBottomPadding:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:10,
                indicatorBackgroundColor: Colors.grey,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                autoPlayInterval: 5000,
                isLoop: true,
                children: imgList,
              ),),
            ],
          ),
        ],
      );

  }

}




