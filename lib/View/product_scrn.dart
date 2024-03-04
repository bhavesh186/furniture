import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 56.w,
                  ),
                  Image.asset(
                    'Images/Media.png',
                    scale: 3.7,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, top: 70),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_back_ios),
                ),
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 175),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          shape: BoxShape.circle,
                          border: Border.all(width: 3)),
                      child: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Icon(
                      Icons.circle,
                      color: Color(0xffB4916C),
                      size: 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Color(0xffE4CBAD),
                      size: 30,
                    ),
                  ],
                ),
                height: 170.h,
                width: 60.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ]),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Minimal Stand',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.poppins.toString(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ 50',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '01',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 25.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 30,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  '(50 reviews)',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                'Minimal Stand is made of by natural wood. '
                    'The design that is very simple and minimal. '
                    'This is truly one of the best furnitures in any family for now. '
                    'With 3 different colors, you can easily select '
                    'the best match for your home. ', style: TextStyle(fontSize: 16),),
          )
        ],
      ),
    );
  }
}
