import 'package:catatan_siemak/model_todo.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final DataTodo todo;

  DetailScreen({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: todo.circleIcon,
                  title: Text(todo.title),
                  subtitle: Text(todo.subtitle),
                ),
                Container(
                  child: Text(todo.body),
                ),
                Container(
                  child: Image.network(
                      "https://i.ytimg.com/vi/V015SjjbYXE/maxresdefault.jpg"),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => "",
                      child: Text("LIke"),
                    ),
                    FlatButton(
                      onPressed: () => "",
                      child: Text("Commant"),
                    ),
                    FlatButton(
                      onPressed: () => "",
                      child: Text("Share"),
                    ),
                  ],
                ),
                Container(
                    child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, posisi) {
                    return ListTile(
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.network("https://i.ytimg.com/vi/V015SjjbYXE/maxresdefault.jpg", fit: BoxFit.cover,),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Lorem Ipsum", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum"),
                        ],
                      ),
                      subtitle: Text("3 second ago"),
                    );
                  },
                ))
              ],
            ),
          ),
        ));
  }
}

// Expanded(
//                     child: FlatButton(
//                       onPressed: () => "",
//                       child: Text("LIke"),
//                     ),
//                   ),
