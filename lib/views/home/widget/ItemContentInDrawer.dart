import 'package:flutter/material.dart';

class ItemContentInDrawer extends StatelessWidget {

 ItemContentInDrawer({required this.listItemName,required this.icon});
 final String listItemName;
 final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:25),
      child: Row(
        children: [
         icon,
          SizedBox(width: 20),
          Text(listItemName,
          
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15
          ),)
        ],
      ),
    );
  }
}