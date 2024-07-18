import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';


class CicularAvatarWidget extends StatelessWidget {
  const CicularAvatarWidget({super.key, this.name, this.imageFile});
  final String? imageFile;
  final String? name;


  Widget circleAvatar( name, imageFile){
    var nameIntial = name[0].toUpperCase();
    if(imageFile != null){
      nameIntial = "";
    }
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      decoration:  BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(50),
        //shape: BoxShape.circle,
        border: Border.all(
          color: Styles.appPrimaryLightColor,
          width: 1.5,
        ),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: NetworkImage("$imageFile")
        // ),
      ),
      child: Center(
        child: Text(nameIntial,
          style:  TextStyle(color: Styles.appPrimaryLightColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return circleAvatar(name, imageFile);
  }
}