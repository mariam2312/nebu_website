import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'constants.dart';
import 'generated/l10n.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key, required String title});
  static String id = "Products";
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int _current = 0;



  @override
  Widget build(BuildContext context) {
    var  width= MediaQuery.of(context).size.width;

    final List<Widget> imgList = [

      Image.asset("assets/images/productimage1.png",scale: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 1.2:1.6),
      Image.asset("assets/images/productimage1.png",scale: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 1.2:1.6,),
      Image.asset("assets/images/productimage3.png",scale: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 1.2:1.6,),
      Image.asset("assets/images/productimage4.png",scale: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? 1.2:1.6,),




    ];

    List<Widget> imageProduct = [
      Image.asset("assets/images/bag.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?3:5,),
      Image.asset("assets/images/wholesale.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?3:5,),
      Image.asset("assets/images/diamond2.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?3:5,),
      Image.asset("assets/images/gold2.png",scale: ResponsiveBreakpoints.of(context).largerThan(TABLET)?3:5,),

    ];
    List titleProduct = [
      Text( S.of(context).titleProduct1,style:TextStyle( color: darkBlue,
          fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titleProduct2
        ,style: TextStyle( color: darkBlue,
    fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
    fontWeight: FontWeight.bold,
    fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titleProduct3,style: TextStyle( color: darkBlue,
    fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
    fontWeight: FontWeight.bold,
    fontFamily: 'NotoKufiArabic'),),
      Text( S.of(context).titleProduct4,style: TextStyle( color: darkBlue,
    fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?30:20,
    fontWeight: FontWeight.bold,
    fontFamily: 'NotoKufiArabic'),),
    ];
    List descProduct = [ SizedBox(width: 400,
      child: Text(S.of(context).descProduct1, maxLines: 10,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,fontWeight: FontWeight.bold,
            fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descProduct2, maxLines: 410,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,
            fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,fontWeight: FontWeight.bold,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descProduct3, maxLines: 10,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,
            fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,
            fontWeight: FontWeight.bold,

            fontFamily: 'NotoKufiArabic'),),
    ),SizedBox(width: 400,
      child: Text(S.of(context).descProduct4, maxLines: 10,
        overflow: TextOverflow.ellipsis,style: TextStyle(color: darkBlue,
            fontSize:ResponsiveBreakpoints.of(context).largerThan(TABLET)?20:18,fontWeight: FontWeight.bold,

            fontFamily: 'NotoKufiArabic'),),
    ),

    ];

    return
      Container(color: Colors.white,
        child: Column(
          children: [const SizedBox(height: 50,),
            ResponsiveRowColumn(
              columnVerticalDirection: VerticalDirection.up,

              layout:ResponsiveBreakpoints.of(context).largerThan(TABLET)?
              ResponsiveRowColumnType.ROW
                  :ResponsiveRowColumnType.COLUMN,
              rowMainAxisAlignment: MainAxisAlignment.center,  columnMainAxisAlignment: MainAxisAlignment.center,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              rowCrossAxisAlignment: CrossAxisAlignment.center,
            rowSpacing:0,columnSpacing: 20,
              children: [


                ResponsiveRowColumnItem(child:
                ImageSlideshow(
                  width:ResponsiveBreakpoints.of(context).largerThan(TABLET)?width/2.5:width/1.1,
                  height: ResponsiveBreakpoints.of(context).largerThan(TABLET)?700:600,
                  initialPage: 0,
                  indicatorColor: yellow2,
                  indicatorRadius: 5,
                  indicatorBottomPadding:ResponsiveBreakpoints.of(context).largerThan(TABLET)?50:10,
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
                ResponsiveRowColumnItem(
                  child:
                  Container(padding: const EdgeInsets.symmetric(horizontal: 10),
                    width:ResponsiveBreakpoints.of(context).largerThan(TABLET)?width/2.5: width/1.1,
                    child:
                    Center(
                      child: Column(crossAxisAlignment:
                      ResponsiveBreakpoints.of(context).largerThan(TABLET)?CrossAxisAlignment.start:CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           SizedBox(
                            height:ResponsiveBreakpoints.of(context).largerThan(TABLET)? 300:30,
                          ),
                          ResponsiveBreakpoints.of(context).largerThan(TABLET)?
                          SizedBox(width: 400,
                            child: Column(crossAxisAlignment:
                            CrossAxisAlignment.start,children:[ imageProduct[_current],
                              const SizedBox(
                                height: 20,
                              ),

                              titleProduct[_current],]),
                          ):SizedBox(width: 400,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children:[ imageProduct[_current],
                              const SizedBox(
                                width: 5,
                              ),

                              titleProduct[_current],]),
                          ),



                          const SizedBox(
                            height: 20,
                          ),
                          descProduct[_current],
                          const SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                  ),),
              ],
            ),
          ],
        ),
      );

  }

}




