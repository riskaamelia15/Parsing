import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:parsing/sample_json.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String _name = "";
  late String _age = "";
  late String _usergithub = "";
  late String _repogithub = "";
  List _hobi = [];
  List<Article> _articles = [];

  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/sample.json");
    final jsonData = json.decode(jsonString);
    Sample sample = Sample.fromJson(jsonData);

    setState(() {
      _name = sample.name.toString();
      _age = sample.age.toString();
      _usergithub = sample.github!.username.toString();
      _repogithub = sample.github!.repository.toString();
      _hobi = sample.hobi!.toList();
      _articles = sample.articles!.toList();
    });
  }

  @override
  void initState() {
    _loadSampleJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Parsing Json'),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // Name
            Card(
              margin: const EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.purpleAccent],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Center(
                      child: Text(
                    "Nama : \n" + _name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 30.0),
                  )),
                ),
              ),
            ),

            // Age
            Card(
              margin: const EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.purpleAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Center(
                      child: Text(
                    "Umur : \n" + _age + " Tahun",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 30.0),
                  )),
                ),
              ),
            ),

            // Github
            Card(
              margin: const EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.purpleAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Center(
                      child: Text(
                    "Github : " +
                        _usergithub +
                        "\n Repository : " +
                        _repogithub,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 30.0),
                  )),
                ),
              ),
            ),

            // Hobi
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _hobi.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.purpleAccent]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Center(
                            child: Text(
                          _hobi[index].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30.0),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Articles
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _hobi.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.purpleAccent]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Center(
                            child: Text(
                          _articles[index].title +
                              "\n" +
                              _articles[index].subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
