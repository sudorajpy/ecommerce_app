// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// import '../inherited_data_provider.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({ Key? key }) : super(key: key);
  
//   // get child => null;

//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   ScrollController scrollBottomBarController = ScrollController();
//   late AnimationController _controller;
//   late Animation<Offset> _offsetAnimation;
//   bool isScrollingDown = false;
//   bool isOnTop = true;
  
//   @override
//   void initState() {
//     myScroll();
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 300),
//       vsync: this,
//       // vsync: this,
//     );
//     _offsetAnimation = Tween<Offset>(
//       begin: Offset(0, widget.end),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     ))
//       ..addListener(() {
//         if (mounted) {
//           setState(() {});
//         }
//       });
//     _controller.forward();
//   }
  
  
//   void showBottomBar() {
//     if (mounted) {
//       setState(() {
//         _controller.forward();
//       });
//     }
//   }

//   void hideBottomBar() {
//     if (mounted) {
//       setState(() {
//         _controller.reverse();
//       });
//     }
//   }
  
  
//   Future<void> myScroll() async {
//     scrollBottomBarController.addListener(() {
//       if (scrollBottomBarController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//         if (!isScrollingDown) {
//           isScrollingDown = true;
//           isOnTop = false;
//           hideBottomBar();
//         }
//       }
//       if (scrollBottomBarController.position.userScrollDirection ==
//           ScrollDirection.forward) {
//         if (isScrollingDown) {
//           isScrollingDown = false;
//           isOnTop = true;
//           showBottomBar();
//         }
//       }
//     });
//   }
  
//   @override
//   void dispose() {
//     scrollBottomBarController.removeListener(() {});
//     _controller.dispose();
//     super.dispose();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       fit: StackFit.expand,
//       alignment: Alignment.bottomCenter,
//       children: [
//         InheritedDataProvider(
//           scrollController: scrollBottomBarController,
//           child: widget.child,
//         ),
//         Positioned(bottom:10, child:Container(),), //We will design the bottom bar here replacing this Container
        
//       ],      
//     );
//   }
// }