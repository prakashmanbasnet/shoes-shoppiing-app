import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp/views/cartPage.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Image.asset(
                'assets/images/nike.jpg',
                height: 80,
                width: 80,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                  ))
            ],
          ),
          elevation: 0,
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.40,
                width: deviceWidth,
                padding: EdgeInsets.all(15),
                child: 
                    Container(
                      height: deviceHeight * 0.38,
                      width: deviceWidth * 0.70,
                     child: Image.asset('assets/images/shoes1.jpg'),
                    ),  
              
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: deviceHeight * 0.42,
                  width: deviceWidth,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: deviceHeight * 0.35,
                          width: deviceWidth,
                          margin: EdgeInsets.all(3),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[900],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 60),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Nike Air Max 90',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                           Text('\$199',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                       Text('shoes is very good and comfortable',
                                       style: TextStyle(
                                         color: Colors.white54
                                       ),
                                       ),
                                       SizedBox(height: 30,),
                                       Align(
                                         alignment: Alignment.bottomCenter,
                                         child: GestureDetector(
                                           onTap: (){
                                             Get.to(CartPage());
                                           },
                                           child: Container(
                                             height: deviceHeight*0.08,
                                             width: deviceWidth*0.70,
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(10),
                                             ),
                                             child: Center(
                                               child: Text('Add to Cart',
                                               style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 18,
                                                 fontWeight: FontWeight.bold
                                               ),
                                               ),
                                             ),
                                           ),
                                         ),
                                       )

                                    ],
                                  ),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 35,
                        child: Container(
                          height: deviceHeight * 0.15,
                          width: deviceWidth * 0.80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Color',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),

                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: deviceHeight*0.05,
                                        width: deviceWidth*0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[400],
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                          Container(
                                        height: deviceHeight*0.05,
                                        width: deviceWidth*0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                          Container(
                                        height: deviceHeight*0.05,
                                        width: deviceWidth*0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.green[600],
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
