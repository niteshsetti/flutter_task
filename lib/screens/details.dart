// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  late final String name;
  late final String redgno;
  late final String stream;
  late final String section;
  late final String gender;
  late final List games;
  late final String Quote;
  Details(this.name, this.redgno, this.stream, this.section, this.gender,
      this.games,this.Quote);
  DetailsState createState() => DetailsState();
}

class DetailsState extends State<Details> {
  TextEditingController dis_name = TextEditingController();
  TextEditingController dis_redg = TextEditingController();
  TextEditingController dis_stream = TextEditingController();
  TextEditingController dis_section = TextEditingController();
  TextEditingController dis_gender = TextEditingController();
   TextEditingController dis_quote = TextEditingController();
  String conc = "";
  void initState() {
    super.initState();
    setState(() {
      dis_name.text = widget.name;
      dis_redg.text = widget.redgno;
      dis_stream.text = widget.stream;
      dis_section.text = widget.section;
      dis_gender.text = widget.gender;
      dis_quote.text=widget.Quote;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details Screen"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Student Details',
                style: TextStyle(fontSize: 17.0),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Name',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_name,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Redgno',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_redg,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Stream',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_stream,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Section',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_section,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Gender',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_gender,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Quote',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: TextField(
                controller: dis_quote,
                textAlign: TextAlign.start,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Student Games',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.games.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: Icon(Icons.games),
                        trailing: Text(
                          "GFG",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text(widget.games[index]));
                  }
                  ),
            ),
          ]),
        )
        );
  }
}
