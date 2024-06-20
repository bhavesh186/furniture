import 'package:flutter/material.dart';

class FirebaseProfileScrn extends StatefulWidget {
  const FirebaseProfileScrn({super.key});

  @override
  State<FirebaseProfileScrn> createState() => _FirebaseProfileScrnState();
}

class _FirebaseProfileScrnState extends State<FirebaseProfileScrn> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter your name',
                  label: Text('name'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter your email',
                  label: Text('email'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: age,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter your age',
                  label: Text('age'),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
