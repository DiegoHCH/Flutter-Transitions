import 'package:flutter/material.dart';
import 'package:transitions_views/views/pagetwo_view.dart';

class PageOneView extends StatelessWidget {
  const PageOneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: const Center(
        child: Text('PageOneView'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            const PageTwoView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);
          // return SlideTransition(
          //   position: Tween<Offset>(begin: const Offset(0.0 , -1.0), end: Offset.zero).animate(curvedAnimation),
          //   child: child,
          // );

          // return ScaleTransition(
          //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          //   child: child,
          // );

          // return RotationTransition(
          //   turns: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
          //   child: child,
          // );

          return FadeTransition(
            opacity: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
            child: child,
          );
        });
  }
}
