import 'package:estruturabasica/main.dart';
import 'package:estruturabasica/src/routes/routing_constants.dart';
import 'package:estruturabasica/src/screens/pais/list.dart';
import 'package:estruturabasica/src/screens/pais/pais_form.dart';
import 'package:estruturabasica/src/screens/estado/estado_form.dart';
import 'package:estruturabasica/src/screens/estado/estado_list.dart';
import 'package:flutter/material.dart';

//utilizando o arguments -> nomePage(arguments['id']);
//criação das rotas nomeadas
RouteFactory rotas(){
  return (settings) {
      //final Map<Object, dynamic> arguments = settings.arguments;
      // No editar passo um objeto, então aqui na rota defino que como argumento espero um objeto
      Object obj = settings.arguments;
      Widget screen;
      //
      switch (settings.name) {
        case HomeViewRoute:
          screen = MyHomePage(title: "Escolinha");
          break;
        case ListPaisViewRoute:
          screen = ListPage();
          break;
        case CadPaisViewRoute:
          screen = PaisForm(pais: obj);
          break;
        case ListEstadoViewRoute:
          screen = EstadoListPage();
          break;
        case CadEstadoViewRoute:
          screen = EstadoForm(estado:obj);
          break;
        default:
          screen = MyHomePage(title: "Escolinha");
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
}
