import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../model/modelo.dart';
class Formulario extends StatefulWidget {

  final int index;
  final hora;
  final dia;
  Formulario(this.index, this.hora, this.dia);

  @override
  _FormularioState createState() => _FormularioState();
  
}

class _FormularioState extends State<Formulario> {
  TextEditingController asignaturaController = new TextEditingController();
  TextEditingController aulaController = new TextEditingController();
  
  String dropdownValue = 'BAT';
  
  // create some values
  Color pickerColor = Color(0xff009688);
  Color currentColor = Color(0xff009688);
  String guardar = 'BAT';

  // ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  void guardarHora(String value){
    guardar = value;
  }

  //var data = new Data();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('AÑADIR HORARIO'),
      ),
      backgroundColor: Colors.teal[200],
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(child: Text("DIA SELECCIONADO: ${widget.dia}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16) ),)
              ),
              Center(
                child: Container(child: Text("HORA SELECCIONADO: ${widget.hora}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)),)
              ),
              TextFormField(
                controller: asignaturaController, 
                decoration: InputDecoration(
                  hintText: '',
                  icon: Icon(
                    Icons.border_color,
                    color: Colors.teal,
                    size: 24.0,
                  ),
                  labelText: "Nombre Asignatura: ",
                ),
                //controller: nombreController,
              ),
              TextFormField(
                controller: aulaController,
                decoration: InputDecoration(
                  hintText: '',
                  icon: Icon(
                    Icons.supervisor_account,
                    color: Colors.teal,
                    size: 24.0,
                  ),
                  labelText: "Aula: ",
                ),
                //controller: aulaController,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0, right: 10.0), 
                  child: Text(
                    "SELECCIONA 1 O 2 HORAS",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                  ),
                )
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 5.0),
                  margin: const EdgeInsets.only(top: 15.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                      color: Colors.black
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    
                    items: <String>['BAT', 'BI']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                            child: GestureDetector(
                            onTap: () {
                              guardarHora(value);
                            },
                          child: Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 16),),
                          ),
                        );
                      })
                      .toList(),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0, right: 10.0), 
                  child: Text(
                    "ELIGE EL COLOR",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                  ),
                )
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: RawMaterialButton(
                  fillColor: pickerColor,
                  padding: EdgeInsets.all(20),
                  shape: CircleBorder(),
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: AlertDialog(
                        title: Text("¡Elige un color!"),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: pickerColor,
                            onColorChanged: changeColor,
                            showLabel: true,
                            pickerAreaHeightPercent: 0.8,
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: const Text('Seleccionar'),
                            onPressed: () {
                              setState(() => currentColor = pickerColor);
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      )
                    );
                  },)
                )
              ),
              new Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  child: Text("Guardar Horario"),
                  onPressed:(){
                    // data = Data(
                    //   color: currentColor,
                    //   index: widget.index,
                    //   horaTotal: guardar,
                    //   hora: widget.hora,
                    //   asignatura: asignaturaController.text,
                    //   aula: aulaController.text
                    // );
                    //print(guardar);
                    //final Color color = currentColor;
                    Navigator.of(context).pop([currentColor, widget.index, guardar, widget.hora, asignaturaController.text, aulaController.text]);
                  }
                )
              ), 
            ],
          ) 
        ),
      )
    );
  }
 
}






