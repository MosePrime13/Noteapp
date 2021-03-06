import 'package:flutter/material.dart';

class NoteList extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }

}

class NoteListState extends State<NoteList> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes')
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
        },
        tooltip: 'Add  note',
        child: Icon(Icons.add)
      ),
    );
  }


  ListView getNoteListView(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {

        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar( 
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right)
            ),
            title: Text('Dummy title', style: TextStyle()),
            subtitle: Text('Dummy date'),
            trailing: Icon(Icons.delete, color: Colors.grey),
            onTap: (){
              debugPrint('Pressed on a notelist card');
            },
          ), 
        );
      
      }
    );
  }

}