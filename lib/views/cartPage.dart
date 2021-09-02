import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.indigo[50],
        appBar: AppBar(
            backgroundColor: Colors.indigo[50],
            elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: deviceWidth * 0.29,
              ),
              Text('Cart')
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: deviceHeight*0.70,
                width: deviceWidth,
                margin: EdgeInsets.only(top: 20),
                color: Colors.indigo[50],
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: deviceHeight * 0.25,
                        width: deviceWidth,
                     
                        child: Row(
                          children: [
                            Container(
                                height: deviceHeight * 0.20,
                                width: deviceWidth * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Image.asset(
                                  'assets/images/shoes1.jpg',
                                  height: 10,
                                  width: 10,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: deviceHeight * 0.13,
                                  width: deviceWidth * 0.45,
                                  margin: EdgeInsets.only(top: 20),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike',style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('Air Max 90'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('\$199',
                                          style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),),
                                          SizedBox(
                                            width: deviceWidth * 0.20,
                                          ),
                                          Text('More'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: deviceWidth * 0.45,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: deviceHeight * 0.05,
                                        width: deviceWidth * 0.09,
                                        decoration: BoxDecoration(
                                            color: Colors.indigo[400],
                                            borderRadius: BorderRadius.circular(5)),
                                            child: Icon(Icons.remove,
                                            color: Colors.white,
                                            ),
                                      ),
                                      Container(
                                        height: deviceHeight * 0.05,
                                        width: deviceWidth * 0.09,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5)),
                                            child:Center(
                                              child: Text('1',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                              ),),
                                            )
                                      ),
                                      Container(
                                        height: deviceHeight * 0.05,
                                        width: deviceWidth * 0.09,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(5)),
                                            child:Icon(Icons.add,
                                            color: Colors.white,
                                            ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Container(
                    height: deviceWidth*0.17,
                    width: deviceWidth*0.35,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('TOTAL',style: TextStyle(
                          color: Colors.black,
                        
                        ),),
                        SizedBox(height: 10,),
                        Text('\$955',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: deviceWidth*0.17,
                    width: deviceWidth*0.55,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                    ,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
