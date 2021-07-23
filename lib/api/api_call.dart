import 'dart:convert';
import 'package:api_test_3/models/1st_model_news.dart';
import 'package:api_test_3/constants/string.dart';
import 'package:http/http.dart' as http;


class API_caller  {

  Future<News> getApi() async {
    var NewModel= null;

var client = http.Client();

var respose=await client.get(name_Strings.news_url);


if (respose.statusCode ==200){
  var json_holder = respose.body;
  var jasonMapped = json.decode(json_holder);
   NewModel=News.fromJson(jasonMapped);
}
return NewModel;

}

  }
