import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp/views/cartPage.dart';
import 'package:shoesapp/views/home/home-page.dart';
import 'package:shoesapp/views/home/productDetails.dart';
 void main(){
   runApp(Myapp());
 }

 class Myapp extends StatelessWidget {
  
 
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       home:HomePage(),
       debugShowCheckedModeBanner: false, 
       theme: ThemeData(
         primaryColor: Colors.white
       ),
     );
   }
 }
