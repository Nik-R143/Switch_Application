import'package:flutter/material.dart';

class switchlist extends StatelessWidget {
  static String _title='Flutter SwitchListTile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Container(
          child: Switch1(),
      ),
    );
  }
}


class Switch1 extends StatefulWidget {
  @override
  _Switch1State createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool _light=false;
  bool _dark=false;
  bool _italic=false;
  bool _mode=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[
          SwitchListTile(
            title: Text('Light'),
            value: _light,
            onChanged: (bool value){
              setState(() {
                _light=value;
              });
            },
            secondary: Icon(_light ? Icons.lightbulb:Icons.lightbulb_outline_sharp,color: Colors.amber,),
            activeColor: Colors.green,
          ),
          SwitchListTile(
           title: Text('Dark Mode'),
           value: _dark,
           onChanged: (bool value){
             setState(() {
                _dark=value;
             });
           },
            secondary: Icon(_dark?Icons.brightness_7_sharp:Icons.brightness_5_sharp,color: Colors.black,),
            activeColor: Colors.green,
          ),
          SwitchListTile(
            title: Text('Italic Mode',style: TextStyle(fontStyle: _italic?FontStyle.italic:FontStyle.normal),),
            value: _italic,
            onChanged: (bool value){
              setState(() {
                _italic=value;
              });
            },
            secondary: Icon(_italic?Icons.emoji_emotions:Icons.emoji_emotions_outlined,color: Colors.blue,),
            activeColor: Colors.green,
          ),
          SwitchListTile(
            title: Text('Green Mode'),
            value: _mode,
            onChanged: (bool value){
              setState(() {
                _mode=value;
              });
            },
            secondary: Icon(_mode?Icons.invert_colors_rounded:Icons.invert_colors_off_rounded,color: Colors.green,),
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
