import 'package:flutter/material.dart';

class PageTwoView extends StatelessWidget {
   
  const PageTwoView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: const Center(
         child: Text('PageTwoView'),
      ),
    );
  }
}