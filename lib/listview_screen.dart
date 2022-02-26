import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:MyStatefulWidget()
      ),

    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.number}) : super(key: key);

  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.red,
        border:Border.all(),
      ),
child: Text("Element # $number", style: Theme.of(context).textTheme.headline6),
);
  }


}
class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index+1);
      }


    );

    // return ListView(
    //   scrollDirection: Axis.vertical,
    //   children:[
    //     MyListItem(number:1),
    //     MyListItem(number:2),
    //     MyListItem(number:3),
    //     MyListItem(number:4),
    //     MyListItem(number:5),
    //     MyListItem(number:6),
    //     MyListItem(number:7),
    //     MyListItem(number:8),
    //     MyListItem(number:9),
    //     MyListItem(number:10),
    //     MyListItem(number:11),
    //     MyListItem(number:12),
    //   ],
    // );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:20,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Icon(Icons.anchor),
        title: Text("Item $index"),
        selected: index == _selectedIndex,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
      );
    },

    );

  }

}