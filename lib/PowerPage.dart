//
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flip_card/flip_card.dart';
//
// class PowerPage extends StatefulWidget {
//   const PowerPage({super.key});
//
//   @override
//   State<PowerPage> createState() => _PowerPageState();
// }
//
// class _PowerPageState extends State<PowerPage> {
//   List<GlobalKey<FlipCardState>> _cardKeys = [
//     GlobalKey<FlipCardState>(),
//     GlobalKey<FlipCardState>(),
//     GlobalKey<FlipCardState>(),
//   ];
//
//   Timer? _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _startFlipping();
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   void _startFlipping() {
//     _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
//       _flipAllCards();
//     });
//   }
//
//   void _flipAllCards() {
//     for (var key in _cardKeys) {
//       key.currentState?.toggleCard();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         FlipCard(
//           key: _cardKeys[2],
//           fill: Fill.fillBack,
//           direction: FlipDirection.HORIZONTAL,
//           side: CardSide.FRONT,
//           speed: 500,
//           onFlipDone: (status) {
//             print(status);
//           },
//           front: Image.asset('assets/images/powerimage3.png', scale: 2),
//           back: Image.asset('assets/images/powerimage5.png', scale: 2),
//         ),
//         FlipCard(
//           key: _cardKeys[0],
//           direction: FlipDirection.HORIZONTAL,
//           side: CardSide.FRONT,
//           speed: 500,
//           onFlipDone: (status) {
//             print(status);
//           },
//           fill: Fill.fillBack,
//           front: Image.asset('assets/images/powerimage2.png', scale: 2),
//           back: Image.asset('assets/images/powerimage6.png', scale: 2),
//         ),
//         FlipCard(
//           key: _cardKeys[1],
//           fill: Fill.fillBack,
//           direction: FlipDirection.HORIZONTAL,
//           side: CardSide.FRONT,
//           speed: 500,
//           onFlipDone: (status) {
//             print(status);
//           },
//           front: Image.asset('assets/images/profitimage1.png', scale: 2),
//           back: Image.asset('assets/images/powerimage4.png', scale: 2),
//         ),
//       ],
//     );
//   }}
//



import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'constants.dart';

class PowerPage extends StatefulWidget {
  const PowerPage({super.key});

  @override
  State<PowerPage> createState() => _PowerPageState();
}

class _PowerPageState extends State<PowerPage> {

  @override
  Widget build(BuildContext context) {
    var  width= MediaQuery.of(context).size.width;
    List <Widget> imgList=[
      SizedBox(height: 600,width: width,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                    frontWidget: Image.asset('assets/images/powerimage3.png',fit: BoxFit.fill,),
                    backWidget: Image.asset('assets/images/powerimage5.png',fit: BoxFit.fill,)
                ),
              ), SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                  frontWidget: Image.asset('assets/images/powerimage2.png',fit: BoxFit.fill, ),
                  backWidget: Image.asset('assets/images/powerimage6.png',fit: BoxFit.fill,),
                ),
              ), SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                  frontWidget: Image.asset('assets/images/powerimage1.png',fit: BoxFit.fill,),
                  backWidget: Image.asset('assets/images/powerimage4.png', fit: BoxFit.fill,),
                ),
              ),
            ]),
      ),SizedBox(height: 600,width: width,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                    frontWidget: Image.asset('assets/images/powerimage3.png',fit: BoxFit.fill,),
                    backWidget: Image.asset('assets/images/powerimage5.png',fit: BoxFit.fill,)
                ),
              ), SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                  frontWidget: Image.asset('assets/images/powerimage2.png',fit: BoxFit.fill, ),
                  backWidget: Image.asset('assets/images/powerimage6.png',fit: BoxFit.fill,),
                ),
              ), SizedBox(width: width/4,height: 400,
                child: WidgetFlipper(
                  frontWidget: Image.asset('assets/images/powerimage1.png',fit: BoxFit.fill,),
                  backWidget: Image.asset('assets/images/powerimage4.png', fit: BoxFit.fill,),
                ),
              ),
            ]),
      )
    ];
    return
      Column(
        children: [

          ImageSlideshow(
            width:double.maxFinite,
            height: 800,
            initialPage: 0,
            indicatorColor: yellow2,
            indicatorRadius: 5,
            indicatorBottomPadding:120,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (index) {
              setState(() {
              });
            },
            autoPlayInterval: 7000,
            isLoop: true,
            children: imgList,
          ),

        ],
      );
      }
}

class WidgetFlipper extends StatefulWidget {
  const WidgetFlipper({super.key,
    required this.frontWidget,
    required this.backWidget,
  });

  final Widget frontWidget;
  final Widget backWidget;

  @override
  _WidgetFlipperState createState() => _WidgetFlipperState();
}

class _WidgetFlipperState extends State<WidgetFlipper> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;
  bool isFrontVisible = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    _frontRotation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween(begin: 0.0, end: pi / 2).chain(CurveTween(curve: Curves.linear)),
          weight: 50.0,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(pi / 2),
          weight: 50.0,
        ),
      ],
    ).animate(controller);
    _backRotation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(pi / 2),
          weight: 50.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween(begin: -pi / 2, end: 0.0).chain(CurveTween(curve: Curves.linear)),
          weight: 50.0,
        ),
      ],
    ).animate(controller);

    _timer = Timer(const Duration(seconds: 5), () {
      _toggleSide();
      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        _toggleSide();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedCard(
          animation: _backRotation,
          child: widget.backWidget,
        ),
        AnimatedCard(
          animation: _frontRotation,
          child: widget.frontWidget,
        ),
        _tapDetectionControls(),
      ],
    );
  }

  Widget _tapDetectionControls() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        GestureDetector(
          onTap: _leftRotation,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        GestureDetector(
          onTap: _rightRotation,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

  void _leftRotation() {
    _toggleSide();
  }

  void _rightRotation() {
    _toggleSide();
  }

  void _toggleSide() {
    if (isFrontVisible) {
      controller.forward();
      isFrontVisible = false;
    } else {
      controller.reverse();
      isFrontVisible = true;
    }
  }
}

class AnimatedCard extends StatelessWidget {
  const AnimatedCard({super.key,
    required this.child,
    required this.animation,
  });

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        var transform = Matrix4.identity();
        transform.setEntry(3, 2, 0.001);
        transform.rotateY(animation.value);
        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: child,
        );
      },
      child: child,
    );
  }
}
