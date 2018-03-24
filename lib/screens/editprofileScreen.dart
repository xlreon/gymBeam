import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  EditProfileScreenState createState() => new EditProfileScreenState();
}

class EditProfileScreenState extends State<EditProfileScreen> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Edit Profile'),
        leading: new IconButton(
          icon: new Icon(Icons.close),
          tooltip: 'Discard Changes',
          onPressed: () => showAlert(),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text("SAVE",style: new TextStyle(color: Colors.white),),
            onPressed: () => saveDetails(),
          ),
        ],
      ),
      body: new Container(
        child: new Center(
          child: new Text("Edit Profile Screen"),
        ),
      ),
    );
  }

  void showAlert()
  {
    AlertDialog dialog = new AlertDialog(
      title: new Text('Discard Changes?'),
      actions: <Widget>[
        new FlatButton(
          child: new Text('Discard'),
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pop();
          },
        ),
        new FlatButton(
          child: new Text('Cancel'),
          onPressed: () {
            print("Cancelled");
            Navigator.pop(context);
          },
        ),
      ],
    );

    //SHOW DIALOG
    showDialog(context: context,child: dialog);
  }
  
  void saveDetails()
  {
    print("Save Button Pressed");
  }

}