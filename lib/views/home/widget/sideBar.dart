import 'package:flutter/material.dart';
import 'package:shoesapp/views/home/widget/ItemContentInDrawer.dart';

class SideBarNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.indigo[900],
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Container(
                        height: deviceHeight * 0.07,
                        width: deviceWidth * 0.11,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/profile.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Prakash Man Basnet',
                        style: TextStyle(color: Colors.white70, fontSize: 17),
                      )
                    ],
                  )),
              SizedBox(height: deviceHeight * 0.08),
              ItemContentInDrawer(
                listItemName: 'Profile',
                icon: Icon(
                  Icons.home,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              ItemContentInDrawer(
                listItemName: 'My Cart',
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              ItemContentInDrawer(
                listItemName: 'Favorites',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              ItemContentInDrawer(
                listItemName: 'Order History',
                icon: Icon(
                  Icons.history,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              ItemContentInDrawer(
                listItemName: 'Notifications',
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
              ItemContentInDrawer(
                listItemName: 'Log out',
                icon: Icon(
                  Icons.login,
                  color: Colors.white70,
                  size: 25,
                ),
              ),
            ],
          )),
    );
  }
}
