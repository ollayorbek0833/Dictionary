import 'package:dictionary_app/models/word_detail_page.dart';
import 'package:dictionary_app/models/word_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isEng = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(Icons.menu),
        title: const TextField(
          obscureText: true,
          decoration: InputDecoration(
              label: Text("Qidiruv...", textScaleFactor: 1.4,
                style: TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.white),)
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(CupertinoIcons.mic),
          ),
          TextButton(
            onPressed: () {
              if(isEng  == true){
                setState(() {
                  isEng = false;
                });
              }
              else if(isEng == false){
                setState(() {
                  isEng = true;
                });
              }
            },
            child: Text(isEng == true? "ENG": "UZB",style: const TextStyle(color: Colors.white),),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          String word = list[index].eng;
          String soz = list[index].uzb;
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => page(index)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(isEng == true? word : soz, style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(isEng ==true ? soz : word, style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 17),),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  DetailPage page(int index){
    return DetailPage(eng: list[index].eng, uzb: list[index].uzb, synonyms: list[index].synonyms, synonymsUz: list[index].synonymsUz, isEng: isEng);
  }
}
