import 'package:Nixon/Apps/Habit%20App/db_halper1.dart';
import 'package:flutter/material.dart';
import 'package:Nixon/Apps/Note pad app/Classes/note.dart';

class AddNote1 extends StatefulWidget {
  final Note note;
  AddNote1({this.note});
  @override
  _AddNote1State createState() => _AddNote1State();
}

class _AddNote1State extends State<AddNote1> {
  bool _isEditiable = true;
  String title = 'Words Learnt';

  List<Widget> icons;
  TextEditingController _noteControllor;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final DatabaseHelper1 helper = DatabaseHelper1();

  @override
  void initState() {
    _noteControllor = TextEditingController();

    _setData();
    super.initState();
  }

  @override
  void dispose() {
    _noteControllor.dispose();
    super.dispose();
  }

  _setData() {
    if (widget.note != null) {
      _isEditiable = false;
      icons = [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            setState(() {
              _isEditiable = !_isEditiable;
            });
          },
        ),
      ];
      title = 'View Note';
      _noteControllor = TextEditingController(text: widget.note.note);
    }
  }

 
  _showSnakbar(String msg) {
    final snackbar = SnackBar(
      content: Text(msg),
      backgroundColor: Color.fromARGB(255, 129, 44, 14),
    );
  }

  bool _checkNotNull() {
    bool res;
      if (_noteControllor.text.isEmpty) {
      _showSnakbar('Words cannot be empty');
      res = false;
    } else {
      res = true;
    }
    return res;
  }

  _saveNote() {
    if (_checkNotNull() == true) {
      if (widget.note != null) {
        widget.note.note = _noteControllor.text;
        helper.updateNote(widget.note);
      } else {
        Note note =
            Note( note: _noteControllor.text);
        helper.insertNote(note);
      }
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: icons,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            TextField(
              enabled: _isEditiable ? true : false,
              controller: _noteControllor,
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Words',
                hintText: '1-',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: _isEditiable
                  ? RawMaterialButton(
                      fillColor: Theme.of(context).accentColor,
                      shape: StadiumBorder(),
                      onPressed: () {
                        _saveNote();
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
