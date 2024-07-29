// import 'package:flutter/material.dart';
// import 'package:nebu_website/constants.dart';
// import 'package:responsive_framework/responsive_framework.dart';
//
// import 'generated/l10n.dart';
//
// class GoalPage extends StatefulWidget {
//   final String title;
//   const GoalPage(
//       {super.key, required this.title, });
//
//   static String id = "GoalPage";
//
//   @override
//   State<GoalPage> createState() => _GoalPageState();
// }
//
// class _GoalPageState extends State<GoalPage> {
//   @override
//   Widget build(BuildContext context) {
//     return
//     Container(
//       height: ResponsiveBreakpoints.of(context).largerThan(MOBILE)?500:800,margin: const EdgeInsets.only(bottom: 50),
//       child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           ResponsiveRowColumn(         columnVerticalDirection:VerticalDirection.up,
//
//             layout:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
//           ResponsiveRowColumnType.ROW
//               :ResponsiveRowColumnType.COLUMN,
//             rowMainAxisAlignment: MainAxisAlignment.spaceAround,  columnMainAxisAlignment: MainAxisAlignment.center,
//           columnCrossAxisAlignment: CrossAxisAlignment.center,
//           rowCrossAxisAlignment: CrossAxisAlignment.center,
//           // rowSpacing:200,
//           columnSpacing: 50,
//           // rowPadding: EdgeInsets.all(50),columnPadding: EdgeInsets.all(50),
//           children: [
//             ResponsiveRowColumnItem(child:
//                     Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(S.of(context).goal,style: TextStyle(
//                             color: darkBlue,
//                             fontSize:40,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'NotoKufiArabic'
//                         )),
//
//                         Text(S.of(context).goalDesc,style: TextStyle(
//                     color: darkBlue,
//                     fontSize:20,
//                     fontFamily: 'NotoKufiArabic'
//                     )),
//
//                       ],
//                     ),),
//
//             ResponsiveRowColumnItem(child:
//             Image.asset("assets/images/goal.png",scale:2),),
//
//
//           ],
//           ),ResponsiveRowColumn(
//             layout:ResponsiveBreakpoints.of(context).largerThan(MOBILE)?
//           ResponsiveRowColumnType.ROW
//               :ResponsiveRowColumnType.COLUMN,
//             rowMainAxisAlignment: MainAxisAlignment.spaceAround,  columnMainAxisAlignment: MainAxisAlignment.center,
//           columnCrossAxisAlignment: CrossAxisAlignment.center,
//           rowCrossAxisAlignment: CrossAxisAlignment.center,
//           // rowSpacing:200,
//           columnSpacing: 50,
//           children: [
//             ResponsiveRowColumnItem(child:  Image.asset("assets/images/vision.png",scale:2),),
//
//           ResponsiveRowColumnItem(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(S.of(context).vision,style: TextStyle(
//                   color: darkBlue,
//                   fontSize:40,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'NotoKufiArabic'
//               )),const SizedBox(height: 20,),
//               Text(S.of(context).visionDesc,style:TextStyle(
//                   color: darkBlue,
//                   fontSize:20,
//                   fontFamily: 'NotoKufiArabic'
//               )),const SizedBox(height:50,),
//             ],
//           ),),
//
//
//
//           ],
//           ),
//         ],
//       ),
//     );
//
//   }
//
//
//   }
//
