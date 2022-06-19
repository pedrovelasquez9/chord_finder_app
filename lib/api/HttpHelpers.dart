import 'package:http/http.dart';
import 'package:guitar_chord_book/constants/APIConstants.dart';
import 'dart:convert'; //for jsonDecode

class HttpHelpers {
  Map constants = Constants().getConstants();

  Future getData(queryParams) async {
    try {
      Response response =
          await get(Uri.parse(constants['api_base_url'] + '?' + queryParams));
      //decode json string
      print(response.body);
      List data = jsonDecode(response.body);
      return data;
    } catch (error) {
      print("there's been an error in getData request $error");
      return {"body": "Ha ocurrido un error al obtener los datos"};
    }
  }

  Future getChordImage(queryParams) async {
    try {
      Response response = await get(
          Uri.parse(constants['api_img_base_url'] + '/' + queryParams));
      //decode json string
      print(response.body);
      String data = jsonDecode(response.body);
      return data;
    } catch (error) {
      print("there's been an error in getData request $error");
      return {"body": "Ha ocurrido un error al obtener los datos"};
    }
  }
}
