import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parsing/sample_json.dart';

class ProfileTemplate extends StatefulWidget {
  const ProfileTemplate({Key? key}) : super(key: key);

  @override
  State<ProfileTemplate> createState() => _ProfileTemplateState();
}

class _ProfileTemplateState extends State<ProfileTemplate> {
  late String _name = "";
  late String _age = "";
  List _hobi = [];
  late String _articles = "";
  late String _usergithub = "";
  late String _repogithub = "";
  late String _contact = "";

  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/sample.json");
    final jsonData = json.decode(jsonString);
    Sample sample = Sample.fromJson(jsonData);
    setState(() {
      _name = sample.name.toString();
      _age = sample.age.toString();
      _hobi = sample.hobi!.toList();
      _articles = sample.articles!.toString();
      _usergithub = sample.github!.username.toString();
      _repogithub = sample.github!.repository.toString();
      _contact = sample.contact!.toString();
    });
  }

  void initstate() {
    _loadSampleJson();
    super.initState();
  }

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

            // Tombol JSON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _loadSampleJson();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    color: Colors.deepPurple,
                    alignment: Alignment.center,
                    child: const Text("Read JSON File",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
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
                  "Nama: " + _name,
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
                  "Umur: " + _age + "Tahun",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // JSON hobi
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 150,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: ListView.builder(
                  itemCount: _hobi.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      _hobi[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            // JSON github
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
                child: Text(
                  "Github : " + _usergithub + "\n Repository : " + _repogithub,
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
