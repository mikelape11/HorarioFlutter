import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  GridWidget({Key key}) : super(key: key);

  @override
  _ContadorWidgetState createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisCount: 8,
      children: <Widget>[
        Container(),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[800]),
              ),
              color: Colors.grey[100].withOpacity(0.8),
            ),
            child: Center(
              child: Text("LUN" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[800]),
              ),
              color: Colors.grey[300].withOpacity(0.8),
            ),
            child: Center(
              child: Text("MAR" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[800]),
              ),
              color: Colors.grey[400].withOpacity(0.8),
            ),
            child: Center(
              child: Text("MIE" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.teal[400]),
              ),
              color: Colors.grey[500].withOpacity(0.8),
            ),
            child: Center(
              child: Text("JUE" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[200]),
              ),
              color: Colors.grey[600].withOpacity(0.8),
            ),
            child: Center(
              child: Text("VIE" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[200]),
              ),
              color: Colors.grey[700].withOpacity(0.8),
            ),
            child: Center(
              child: Text("SAB" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 3, color: Colors.grey[200]),
              ),
              color: Colors.grey[800].withOpacity(0.8),
            ),
            child: Center(
              child: Text("DOM" ,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[300].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  08:00",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: InkWell(
            child: Container(
            color: Colors.white.withOpacity(0.3),
            margin: EdgeInsets.all(0),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
            ),
            //onTap: ,
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[600].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  08:55",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[300].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  09:50",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[600].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  10:45",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[300].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  11:40",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[600].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  12:05",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[300].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  13:00",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(width: 3, color: Colors.teal),
              ),
              color: Colors.teal[600].withOpacity(0.5),
            ),
            height: 100,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "  13:55",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        Center(
          child: Container(
            color: Colors.white.withOpacity(0.3),
            width: 60,
            height: 60,
            child: Text("", style: TextStyle(color: Colors.black),),
          ),
        ),
        /*Divider(
            height: 50,
            thickness: 4,
            indent: 1,
            endIndent: 10,
            color: Colors.cyan)*/
      ],
    );
  }
}
