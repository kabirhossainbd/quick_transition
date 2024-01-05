
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'quick_transition_platform_interface.dart';

class QuickTransition {
  Future<String?> getPlatformVersion() {
    return QuickTransitionPlatform.instance.getPlatformVersion();
  }
}


enum TransitionMode {
  zoom,
  rightToLeft,
  leftToRight,
  topToBottom,
  bottomToTop,
}

class QuickTransitionRoute extends ModalRoute<void> {
  Widget child;
  bool isBottomSheet;
  final TransitionMode mode;
  final Duration  duration;
  QuickTransitionRoute({required this.child, this.isBottomSheet = false, this.mode = TransitionMode.zoom, this.duration = const Duration(milliseconds: 300)});

  @override
  Duration get transitionDuration => duration;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return !isBottomSheet ? AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: child,
        ),
      ),
    ) : Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: child,
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    switch (mode) {
      case TransitionMode.zoom:
        var slideTransition = FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
        return slideTransition;
        // ignore: dead_code
        break;

      case TransitionMode.rightToLeft:
        var slideTransition = SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
        return slideTransition;
        // ignore: dead_code
        break;

      case TransitionMode.leftToRight:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
        // ignore: dead_code
        break;

      case TransitionMode.topToBottom:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
        // ignore: dead_code
        break;

      case TransitionMode.bottomToTop:
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );

        // ignore: dead_code
        break;
      default:
        return FadeTransition(opacity: animation, child: child);
    }
  }
}