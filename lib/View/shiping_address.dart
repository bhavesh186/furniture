import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/common_color.dart';
import '../commonClass/checkBox.dart';

class ShipingAddressScreen extends StatefulWidget {
  const ShipingAddressScreen({super.key});

  @override
  State<ShipingAddressScreen> createState() => _ShipingAddressScreenState();
}

class _ShipingAddressScreenState extends State<ShipingAddressScreen> {

 // bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.blue;
    //   }
    //   return Colors.red;
    // }



    return Scaffold(
      
      appBar: AppBar(
        title: Text('Shipping address'),
        centerTitle: true,
      ),

      body :ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
            child: Column(
              children: [
               // CheckBox(),
                Container(

                  child: Column(
                    children: [

                    // Checkbox(
                    // checkColor: Colors.white,
                    // fillColor: MaterialStateProperty.resolveWith(getColor),
                    // value: isChecked,
                    // onChanged: (bool? value) {
                    //   setState(() {
                    //     isChecked = value!;
                    //   });
                    // },
                    // ),

                    ],

                  ),

                  height: 120.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),

    );
  }
}
