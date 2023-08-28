import 'package:flutter/material.dart';

// void main() {
//   runApp(Info(
//     number: '',
//   ));
// }

// ignore: must_be_immutable
class Info extends StatefulWidget {
  String number = '';
  Info({Key? key, required this.number}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final allChecked = CheckBoxModel(title: 'Бүх торгуулийг сонгох');
  final List<CheckBoxModel> checkBoxList = [
    CheckBoxModel(title: 'УБ.ЗХУТ хүү торгуулийн орлого'),
    CheckBoxModel(title: 'НЗЦА.Хүү торгуулийн орлого'),
    CheckBoxModel(title: 'УБ.ЗХУТ хүү торгуулийн орлого'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.number,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: Text(
              widget.number,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.indigo[600],
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => onAllClicked(allChecked),
              leading: Checkbox(
                value: allChecked.value,
                onChanged: (value) => onAllClicked(allChecked),
              ),
              title: Text(
                allChecked.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            ...checkBoxList.map((item) => ListTile(
                  onTap: () => onItemClicked(item),
                  leading: Checkbox(
                    value: item.value,
                    onChanged: (value) => onItemClicked(item),
                  ),
                  title: Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ], 
        ),
      ),
    );
  }

  void onAllClicked(CheckBoxModel ckbItem) {
    setState(() {
      allChecked.value = !allChecked.value;
      for (final item in checkBoxList) {
        item.value = allChecked.value;
      }
    });
  }

  void onItemClicked(CheckBoxModel item) {
    setState(() {
      item.value = !item.value;
      if (!item.value) {
        allChecked.value = false;
      } else {
        allChecked.value = checkBoxList.every((item) => item.value);
      }
    });
  }
}

class CheckBoxModel {
  String title;
  bool value;
  CheckBoxModel({required this.title, this.value = false});
}
