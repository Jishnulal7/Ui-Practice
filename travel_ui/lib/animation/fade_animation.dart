// import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';


// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;

//   const FadeAnimation(  this.delay,  this.child, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     final tween = MultiTrackTween([
//       Track('opacity')
//           .add(const Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//       Track('traslateY').add(
//           const Duration(milliseconds: 500), Tween(begin: 120.0, end: 0.0),
//           curve: Curves.easeInOut)
//     ]);

//     return ControlledAnimation(
//       delay: Duration(milliseconds: (500 * delay).round()),
//       duration: tween.duration,
//       tween: tween,
//       child: child,
//       builderWithChild: (p0, child, animatedValue) => Opacity(
//           opacity: animatedValue['opacity'],
//           child: Transform.translate(
//             offset: Offset(0, animatedValue['traslateY']),
//             child: child,
//           )),
//     );
//   }
// }
