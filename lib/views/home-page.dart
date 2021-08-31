import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find exclusive',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'sneakers at low cost',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: deviceHeight * 0.070,
                width: deviceWidth * 0.93,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffffffff),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff000000),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: deviceWidth * 0.70,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for a model',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff9586A8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black38),
                  )
                ],
              ),
              SizedBox(height: deviceHeight*0.02),
              Container(
                height: deviceHeight * 0.35,
                width: deviceWidth ,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context,int  index) {
                      return Container(
                        height: deviceHeight * 0.35,
                        width: deviceWidth * 0.45,
                        margin: EdgeInsets.only(right: deviceWidth*0.04),
                        decoration: BoxDecoration(
                            color: index==1?Colors.yellow[700]:Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                index.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                      );
                    }),
              ),
                SizedBox(height: deviceHeight*0.03),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black38),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: deviceHeight*0.13,
                width: deviceWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context,int index){
                    return Container(
                      height: deviceHeight*0.13,
                       width: deviceWidth*0.50,
                       margin: EdgeInsets.only(right: 10),
                       padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Adidas',
                         style: TextStyle(
                           color: Colors.black87,
                           fontSize: 14,
                           fontWeight: FontWeight.bold
                         ),
                         ),
                          Text('Originals',
                          style: TextStyle(
                           color: Colors.indigo[200],
                           fontSize: 14,
                           fontWeight: FontWeight.bold
                         ),
                         ),
                         SizedBox(height: 15,),
                           Text('\$150',
                           style: TextStyle(
                           color: Colors.indigo[200],
                           fontSize: 14,
                           fontWeight: FontWeight.bold
                         ),
                           ),
                       ],
                      ),
                    );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
