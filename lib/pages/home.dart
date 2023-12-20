import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            // Handle leading tap
          },
          child: Container(
            margin: EdgeInsets.all(10),
            child: SvgPicture.asset('assets/icons/arrow-small-left.svg'),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              // Handle action tap
            },
            child: Container(
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/menu-burger.svg'),
              margin: EdgeInsets.all(10),
              width: 37,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    body: Column(
      children: [
         Container(
           margin: EdgeInsets.only(top: 40 ,left: 20,right: 20 ),
           decoration: BoxDecoration(
             boxShadow: [
               BoxShadow(color: Color(0xff1D1617).withOpacity(0.11),
               blurRadius:40,
               spreadRadius: 0.0)
             ]

           ),
           child: TextField(
             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white70,
               contentPadding: EdgeInsets.all(15),
               prefixIcon: Padding(
                 padding: const EdgeInsets.all(12),
                 child: SvgPicture.asset('assets/icons/search.svg'),
               ),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
                 borderSide: BorderSide.none
               )

             ),
           ),
         )
      ],
    ),
    );
  }
}
