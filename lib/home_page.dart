import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
         height: 140,
          color: Colors.purpleAccent,
          padding: EdgeInsets.all(1.0),
          margin: EdgeInsets.all(9),

          child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            Text('User id: data',
              style: TextStyle(
                  fontSize: 18),),
            Text('Id: data',
              style: TextStyle(
                  fontSize: 18),),
            Text('Title: data',
              style: TextStyle(
                  fontSize: 18),),
            Text('Body: data',
              style: TextStyle(
                  fontSize: 18),),


          ] ,),
        );
      }
    );
  }
  Future<List<SamplePosts>> getData() async
      final response  = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
}
