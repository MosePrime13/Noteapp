import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return NoteDetailState();
  }
}

class NoteDetailState extends State{

  static var _priorities = ['High', 'Low'];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Detail')
      ),
      body: noteDetailForm(),
    );
  }

  Padding noteDetailForm(){
    return Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[

              // STATUS
              ListTile(
                title: DropdownButton(
                  items: _priorities.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem)
                    );
                  }).toList(),
                  style:TextStyle( color: Colors.black ),
                  value: 'Low',
                  onChanged: (valueSelected){
                    setState(() {
                      debugPrint('User selected $valueSelected');
                    });
                  }
                ),
              ),

              // TITLE
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(),
                  onChanged: (titlevalue) {
                    debugPrint('Text field value is $titlevalue');
                  },
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    )
                  )
                ),
              ),

              // DECSRIPTION
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: descriptionController,
                  style: TextStyle(),
                  onChanged: (descriptionvalue) {
                  debugPrint('Text field value is $descriptionvalue');
                  },
                  decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                  )
                ),
              ),

              // SUBMIT BUTTONS
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text('Save', style: TextStyle()),
                        onPressed: (){
                          debugPrint('SAVE Button pressed');
                        },
                      ),
                    ),

                    Container(width: 10.0,),

                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text('Delete', style: TextStyle()),
                        onPressed: (){
                          debugPrint('DELETE Button pressed');
                        },
                      ),
                    )
                  ]
                ),
              )

            ],
          ),
        );
    // return ListView(
    //   children: <Widget>[
       
    //   ],
    // );
  }

}
