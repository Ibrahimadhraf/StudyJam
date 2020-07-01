import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class Photo{
   int albumId ;
 int id;
   String title;
   String url;
   String thumbnailUrl ;
   Photo({this.albumId ,this.id ,this.title ,this.url ,this.thumbnailUrl});
   factory Photo.fromJson(Map<String, dynamic> json) => Photo(
     albumId: json["albumId"],
     id: json["id"],
     title: json["title"],
     url: json["url"],
     thumbnailUrl: json["thumbnailUrl"],
   );
   Future <List<Photo>>fetchPhoto()async{
     final respnse=
     await http.get('https://jsonplaceholder.typicode.com/photos/$num');
     print(respnse.body);
     final parseResponse=respnse.body;

     return compute(parsePhoto ,parseResponse);
   }
List<Photo>parsePhoto(responsBody){
final parsed=json.decode(responsBody).cast<Map<String ,dynamic>>();
return parsed.map<Photo>((json)=> Photo.fromJson(json)).toList();
}
}