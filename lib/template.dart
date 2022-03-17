import 'package:flutter/material.dart';

class ProfileTemplate extends StatefulWidget {
  const ProfileTemplate({Key? key}) : super(key: key);

  @override
  State<ProfileTemplate> createState() => _ProfileTemplateState();
}

class _ProfileTemplateState extends State<ProfileTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            // Title
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "BIODATA",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Nama: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON age
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Umur: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON hobi
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Hobi: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON github
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Github: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON articles
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 400,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Artikel",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
