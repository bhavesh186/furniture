// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'Common/button.dart';
// import 'Common/newtext_formfield.dart';
//
// class UpdateProfile extends StatefulWidget {
//
//   final String name;
//   UpdateProfile({super.key, required this.name});
//
//
//   @override
//   State<UpdateProfile> createState() => _UpdateProfileState();
//
//   TextEditingController emailController = TextEditingController();
// }
//
// class _UpdateProfileState extends State<UpdateProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:       Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 100),
//           child: Column(
//             children: [
//               NewTextFormfield(
//                 addController: widget.emailController,
//                 yourhinttext: 'Enter Your Name',
//                 yourlabletext: 'Name',
//
//               ),
//               SizedBox(height: 20.h,),
//
//               GlobleButton(onTap: () {  }, button: 'Save',),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }







import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'botom_navigation_bar.dart';

class UpdateProfile extends StatefulWidget {
  final String name;
  const UpdateProfile({super.key, required this.name});

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController nameController = TextEditingController();
  String? Token;
  @override
  void initState() {
    nameController.text = widget.name;
    super.initState();
  }

  Future<void> login(String Name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');

    if (token == null) {
      throw Exception('Token not found');
    }
    try {
      http.Response response = await http.put(
        Uri.parse(
            'https://typescript-al0m.onrender.com/api/user/update-profile'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'name': Name,
        }),
      );

      log(response.statusCode.toString());

      log(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('profile Updateee!!');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('profile Updateee!!'),
          ),
        );

      } else {
        log('Fail!');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                login(nameController.text);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigation(),
                    ),
                        (route) => false);
              },
              child: const Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
