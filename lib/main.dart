import 'package:catatan_siemak/detail_todo.dart';
import 'package:catatan_siemak/model_todo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF039CC9),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String nama = '';
  TabController _controller;
  List<DataTodo> listTodo = [
    DataTodo(
        title: "Cabai 1 kg",
        subtitle: "Senin, 11 Maret 2019",
        body:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        circleIcon: circle(Colors.grey)),
    DataTodo(
        title: "Beras cap supersemar 1 karung",
        subtitle: "Senin, 11 Maret 2019",
        body:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        circleIcon: circle(Colors.purple)),
    DataTodo(
        title: "Kecap Bangau 1 botol",
        subtitle: "Senin, 11 Maret 2019",
        body:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        circleIcon: circle(Colors.green)),
    DataTodo(
        title: "Tepung Tapioka 1 karung",
        subtitle: "Senin, 11 Maret 2019",
        body:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        circleIcon: circle(Colors.red)),
    DataTodo(
        title: "Mentimun 1 kg",
        subtitle: "Senin, 11 Maret 2019",
        body:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        circleIcon: circle(Colors.blue)),
  ];

  List<DataTodo> listTodoHistory = [];

  static Widget circle(warna) {
    return Container(
      width: 20,
      height: 20,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), color: warna),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catata Emak"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              text: "To-Do",
              icon: Icon(Icons.add),
            ),
            Tab(
              text: "History",
              icon: Icon(Icons.history),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Container(
              child: ListView.builder(
            itemCount: listTodo.length,
            itemBuilder: (context, posisi) {
              return ListTile(
                leading: listTodo.elementAt(posisi).circleIcon,
                title: Text(nama == '' ? listTodo.elementAt(posisi).title : nama),
                subtitle: Text(listTodo.elementAt(posisi).subtitle),
                onTap: () {
                  setState(() {
                    listTodoHistory.add(listTodo.elementAt(posisi));
                    nama = 'nama saya';
                  });
                },
              );
            },
          )),

          //Halaman History
          Container(
              child: ListView.builder(
            itemCount: listTodoHistory.length,
            itemBuilder: (context, posisi) {
              var data = listTodoHistory.elementAt(posisi);
              return ListTile(
                leading: data.circleIcon,
                title: Text(nama == '' ? data.title : nama),
                subtitle: Text(data.subtitle),
                onTap: () {
                  setState(() {
                    nama = 'nama saya';
                  });
                },
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("floatingActionButton was clicked");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
