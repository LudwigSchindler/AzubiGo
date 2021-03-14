import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListView(
        shrinkWrap: true,
        children: [
          ExpansionTile(
            title: Text('Entwicklung'),
            children: <Widget>[
              ExpansionTile(
                title: Text('   CIM-Tutorial'),
                children: <Widget>[
                  ExpansionTile(
                    title: Text('       Klassen und Felder'),
                    children: <Widget>[
                      ListTile(
                        leading: Checkbox(value: true, onChanged: null),
                        title: Text("Neue Klasse anlegen"),
                      ),
                      ListTile(
                        leading: Checkbox(value: true, onChanged: null),
                        title: Text("Neues Feld anlegen"),
                      ),
                      ListTile(
                        leading: Checkbox(value: true, onChanged: null),
                        title: Text("Felder mappen"),
                      ),
                      ListTile(
                        leading: Checkbox(value: false, onChanged: null),
                        title: Text("DescriptorCreator"),
                      ),
                      ListTile(
                        leading: Checkbox(value: false, onChanged: null),
                        title: Text("DBController"),
                      ),
                      ListTile(
                        leading: Checkbox(value: false, onChanged: null),
                        title: Text("Einchecken"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text('EDV'),
            children: <Widget>[],
          ),
          ExpansionTile(
            title: Text('QS'),
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
