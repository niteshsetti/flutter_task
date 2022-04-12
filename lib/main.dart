// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, override_on_non_overriding_member, annotate_overrides, unnecessary_this, unused_element, unused_local_variable, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'screens/details.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'oswal',
      ),
      home: Task(),
    );
  }
}

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student Details'),
        backgroundColor: Colors.green,
        centerTitle: false,
      ),
      body: Forms(),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  FormsState createState() => FormsState();
}

class FormsState extends State<Forms> {
  @override
  String dropdownvalue = 'CSE';
  String df_section = "A";
  String radioButtonItem = 'Male';
  String jsondata="Quote";
  String checkitem = '', checkitem1 = '', checkitem2 = '';
  int id = 1;
  var items = ['CSE', 'ECE', 'IT', 'MECH'];
  var section = ['A', 'B', 'C'];
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  final s_name = TextEditingController();
  final s_redgno = TextEditingController();
  late String sname = "";
  late String sredgno = "";
  var check_items = [];
  List<String> data = ["Quote"];
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  void getSWData() async {
    var res = await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    var resBody = json.decode(res.body);
    for (var i = 0; i < resBody.length; i++) {
      data.add(resBody[i]["title"].toString());
    }
    print(data.length);
  }

  void initState() {
    super.initState();
    this.getSWData();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
            child: Row(
              children: [
                Text(
                  'Student Name',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: TextField(
              controller: s_name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Student Name'),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: TextField(
              controller: s_redgno,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Student Redgno'),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                value: dropdownvalue,
                underline: SizedBox.shrink(),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(items),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                value: df_section,
                underline: SizedBox.shrink(),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: section.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(items),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    df_section = newValue!;
                  });
                },
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'ONE';
                      id = 1;
                    });
                  },
                ),
                Text(
                  'Male',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Female';
                      id = 2;
                    });
                  },
                ),
                Text(
                  'Female',
                  style: new TextStyle(fontSize: 17.0),
                ),
                Radio(
                  value: 3,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'TransGender';
                      id = 3;
                    });
                  },
                ),
                Text(
                  'TransGender',
                  style: new TextStyle(fontSize: 17.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
            child: Row(
              children: [
                Text(
                  'Student Sports',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: this.value,
                      onChanged: (value) {
                        setState(() {
                          if (this.value == false) {
                            this.value = true;
                            checkitem = "Cricket";
                            check_items.add(checkitem);
                          } else {
                            this.value = false;
                            check_items.remove(checkitem);
                          }
                        });
                      },
                    ),
                    Text(
                      'Cricket',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.value1,
                      onChanged: (value1) {
                        setState(() {
                          if (this.value1 == false) {
                            this.value1 = true;
                            checkitem1 = "Hockey";
                            check_items.add(checkitem1);
                          } else {
                            this.value1 = false;
                            check_items.remove(checkitem1);
                          }
                        });
                      },
                    ),
                    Text(
                      'Hockey',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.value2,
                      onChanged: (value2) {
                        setState(() {
                          if (this.value2 == false) {
                            this.value2 = true;
                            checkitem2 = "Badminton";
                            check_items.add(checkitem2);
                          } else {
                            this.value2 = false;
                            check_items.remove(checkitem2);
                          }
                        });
                      },
                    ),
                    Text(
                      'Badminton',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8),
            child: Row(
              children: [
                Text(
                  'Student Quotes',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                value: jsondata,
                underline: SizedBox.shrink(),
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: data.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(items),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    jsondata = newValue!;
                  });
                },
              ),
            ),
          ),
          MaterialButton(
            minWidth: double.maxFinite, // set minWidth to maxFinite
            color: Colors.green,
            onPressed: () {
              setState(() {
                sname = s_name.text;
                sredgno = s_redgno.text;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(sname, sredgno, dropdownvalue,
                        df_section, radioButtonItem, check_items,jsondata)),
              );
            },
            child: Text(
              "Submit",
              style: new TextStyle(fontSize: 17.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
