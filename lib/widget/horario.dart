import 'package:flutter/material.dart';
import 'package:proyecto1/model/modelo.dart';
import 'package:proyecto1/widget/formulario.dart';


class GridWidget extends StatefulWidget {
  GridWidget({Key key}) : super(key: key);

  @override
  _ContadorWidgetState createState() => _ContadorWidgetState();
  
}


class _ContadorWidgetState extends State<GridWidget> {
  Color miColor = Colors.white.withOpacity(0.3);
  int _index = 0;
  String _guardar;
  String _hora;
  String _asignatura;
  String _aula;

 ponerColor(Color color, int index, int _index, String _guardar, String _hora){
    if(_hora == '10:45'){
      if (_index == index || _index == index-16 && _guardar == 'BI') {
        return color;
      } else {
        if (_guardar == 'BAT' && _index == index) {
          return color;
        } else {
          return Colors.white.withOpacity(0.3);
        }
      }
    }else{
      if (_index == index || _index == index-8 && _guardar == 'BI') {
        return color;
      } else {
        if (_guardar == 'BAT' && _index == index) {
          return color;
        } else {
          return Colors.white.withOpacity(0.3);
        }
      }
    }
  }

  pasarDatos(int index, int _index, String _asignatura, String _aula){
    if(_index == index){
      return _asignatura +" "+ _aula;
    }else{
      return "";
    }
  }
  
  @override
  Widget build(BuildContext context) {

    const dias = ['','LUN','MAR','MIE','JUE','VIE','SAB','DOM'];
    const horas = ['08:00','08:55','09:50','10:45','11:40','12:05','13:00','13:55'];
    const colorBordeDias = [800,800,800,800,200,200,200,200];
    const colorDias = [100,300,400,500,600,700,800,900];
    const colorHoras = [300,600,300,600,300,600,300,600];

    var datosArray = <Data>[];
    for(int i=0; i<72; i++){
      datosArray.add(Data(Colors.white.withOpacity(0.3),"","","",""));
    }
    guardarDatos(Color color, int _index, String _horaTotal, String _asignatura, String _aula, String _hora){
      setState(() {
        datosArray[_index] = Data(color, _horaTotal, _hora, _asignatura, _aula); 
        print(_index);
        print(datosArray[_index].color);
        print(datosArray[_index].asignatura);
        print(datosArray[_index].aula);
        print(datosArray[_index].horaTotal);  
      });
      print("Prueba");
      print(datosArray[9].color);
      print(datosArray[9].asignatura);
      print(datosArray[10].color);
      print(datosArray[10].asignatura);
    }
    
    // const guardarColor = [];
    // const guardarIndex = [];
    // const guardarHoraTotal = [];
    // const guardarHora = [];
    // const guardarAsignatura = [];
    // const guardarAula = [];

    return Container(
      //height: MediaQuery.of(context).size.height,
      child: GridView.count(
        primary: false,
        crossAxisCount: 8,
        children: List.generate(72, (index){
          if(index == 0){
             return Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[colorDias[index]].withOpacity(0.8),
                ),
                child: Center(
                  child: Text(dias[index] ,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              )
            );
          }else if(index<8){
            return Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3, color: Colors.grey[colorBordeDias[index]]),
                  ),
                  color: Colors.grey[colorDias[index]].withOpacity(0.8),
                ),
                child: Center(
                  child: Text(dias[index] ,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              )
            );
          }else if(index%8==0){
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 3, color: Colors.teal),
                ),
                color: Colors.teal[colorHoras[(index/9).truncate().toInt()]].withOpacity(0.5),
              ),
              height: 100,
              child: Center(
                child: Text(
                  horas[(index/9).truncate().toInt()],
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                )
              )
            );  
          }else if(index>40 && index<48){
            return Container(
              height: 100,
              child: Center(
                child: Text(
                  "recreo",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                )
              )
            );      
          }else{
            for(int i=0; i<datosArray.length;i++){
              //if(i==_index){
                return Container(
                child: InkWell(
                  child: Container(
                    color: ponerColor(miColor, index, _index, _guardar, _hora),//datosArray[i].color,
                    margin: EdgeInsets.all(0),
                    width: 60,
                    height: 60,
                    child: Center(child:Text(pasarDatos(index, _index, _asignatura, _aula),/*datosArray[9].asignatura + datosArray[i].aula,*/ style: TextStyle(color: Colors.black),),),
                  ),
                  //onTap: ,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Formulario(index, horas[(index/8-1).truncate().toInt()], dias[(index%8).truncate().toInt()]),
                    )).then((result) {
                      setState(() {
                        miColor = result[0];
                        _index = result[1];
                        _guardar = result[2];
                        _hora = result[3];
                        _asignatura = result[4];
                        _aula = result[5];
                        guardarDatos(miColor, _index, _guardar, _asignatura, _aula, _hora);
                        //Colors.white.withOpacity(0.3);  
                      });
                      // guardarColor.add(_index);
                      // print(guardarColor);
                    });
                  }, 
                ),
                );
              //}
            }
          }
        }),
      ),
    );
  }
}



