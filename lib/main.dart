import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

void main(){
  runApp(const MyApps());
}
class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
