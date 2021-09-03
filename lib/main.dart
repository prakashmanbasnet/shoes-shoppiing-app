import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp/constant/firebase.dart';
import 'package:shoesapp/controller/authController.dart';
import 'package:shoesapp/views/authentication/LoginPage.dart';
import 'package:shoesapp/views/cartPage.dart';
import 'package:shoesapp/views/home/home-page.dart';
import 'package:shoesapp/views/home/productDetails.dart';
 void main()async{
   
     WidgetsFlutterBinding.ensureInitialized();
   await initialization.then((value) {
   Get.put(AuthController());
   
   });

   runApp(Myapp());
 }

 class Myapp extends StatelessWidget {
  
 
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       home:LoginPage(),
       debugShowCheckedModeBanner: false, 
       theme: ThemeData(
         primaryColor: Colors.white
       ),
     );
   }
 }
