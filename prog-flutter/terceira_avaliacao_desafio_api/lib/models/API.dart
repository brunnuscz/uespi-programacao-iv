
import 'package:http/http.dart' as http;

class API{
  static Future getRastreio(value)async{
     Uri url = Uri(
      scheme: 'https',
      host: 'correio02029.herokuapp.com',
      path: '/rastreio-de-encomenda/$value');
    return await http.get(url);
  }
}



class Rastreio {
  String status;
  String data;
  String hora;
  String origem;
  String destino;
  String local;

   Rastreio(String status, String data, String hora, String origem, String destino, String local){
     this.status = status;
     this.data = data;
     this.hora = hora;
     this.origem = origem;
     this.destino = destino;
     this.local = local;
   }

  Rastreio.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'];
    hora = json['hora'];
    origem = json['origem'];
    destino = json['destino'];
    local = json['local'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['data'] = this.data;
    data['hora'] = this.hora;
    data['origem'] = this.origem;
    data['destino'] = this.destino;
    data['local'] = this.local;
    return data;
  }
}
