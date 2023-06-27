import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.onTap, 
    required this.onPressed,
  }) : super(key: key);

  final IconData leading;
  final String title;
  final String subtitle;
  final IconData trailing;
  final String onTap;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 5, 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: ListTile(
      onTap: () {
        print(onTap);
      },
    iconColor: Colors.black,
    minLeadingWidth: 0,                
    leading:  Icon(leading),
    title:  Text(title),
    subtitle:  Text(subtitle),
    trailing: IconButton(onPressed: onPressed , icon: Icon(trailing)),),);
  }
}