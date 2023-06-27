

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_card.dart';

class BioAPP extends StatelessWidget {
  const BioAPP({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("BIO"),
          centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.logout_outlined)),
            PopupMenuButton<String>(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              offset: const Offset(0, 55),
              onSelected: (String value) {
                print(value);
              },
              itemBuilder: (context){
              return[
              const PopupMenuItem(child: Text("info")),
              const PopupMenuItem(child: Text("instgram")),
              ];
            }),
          ],
        ),
       body: Container(
          decoration: const BoxDecoration(
            // color: Colors.black,
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black,
                Color.fromARGB(255, 22, 1, 97),
              ]
              )
          ),
          alignment: Alignment.center,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Spacer(),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                backgroundImage: NetworkImage('https://pics.freeicons.io/uploads/icons/png/3685308641630512577-512.png'),
              ),
              const SizedBox(height: 15),
              const Text("Mohammed KH - Mobile Developer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 15),),
              Text("UP - Level #2",style: GoogleFonts.abel(
                height: 2,
                color: Colors.white,
                fontSize: 15,
              ), ),
              const SizedBox(height: 5,),
              const Divider(thickness: 2, color: Colors.white, indent: 30, endIndent: 30, height: 50,),
                
                CustomCard(leading: Icons.phone_android_sharp, title: "Mobile", subtitle: "0567064950", trailing: Icons.call, onTap: "Call",onPressed: (){ _showMessage(context, message: "Call");},),                
                const SizedBox(height: 15,),
                CustomCard(leading: Icons.email_outlined, title: "Email", subtitle: "Mohammed@gmail.com", trailing: Icons.send_sharp, onTap: "sent",onPressed: (){ _showMessage(context, message:"Email Sent");},),
                const SizedBox(height: 15,),
                CustomCard(leading: Icons.location_on, title: "Location", subtitle: "GAZA - RAFAH", trailing: Icons.map_outlined, onTap: "Location Selected",onPressed: () { _showMessage(context, message: "Map opened"); },),
                
                const Spacer(),
                const Text("by MOKH",style: TextStyle(color: Colors.white),),
                const SizedBox(height: 10,),
                ],
                     
            
          ),
          
       ),
      );
  }
  void _showMessage(BuildContext context,{required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(milliseconds: 3000),
       ),
  );
}
}