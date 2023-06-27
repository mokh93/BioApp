// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:codesquad/screens/bio_app.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key : key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioAPP(),
      
    );
    
  }
}
  
  


