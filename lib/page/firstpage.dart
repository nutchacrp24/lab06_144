import 'package:flutter/material.dart';
import 'package:lab06_144/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];
  List _selectedItem = [];

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHoddy();
    print(hobbies);
  }

  List<Widget> creteCheckbox() {
    List<Widget> widgets = [];

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widgets;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LAB06_144"),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        const Text("HOBBY"),
        Column(
          children: creteCheckbox(),
        ),
        Text(_selectedItem.toString()),
      ]),
    );
  }
}
