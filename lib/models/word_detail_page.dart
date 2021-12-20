import 'package:dictionary_app/models/word_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.eng, required this.uzb, required this.synonyms, required this.synonymsUz, required this.isEng}) : super(key: key);
  String eng;
  String uzb;
  String synonyms;
  String synonymsUz;
  bool isEng;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.isEng? widget.eng : widget.uzb),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.volume_up_rounded,size: 28,))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,bottom: 5),
            child: Text(widget.isEng? widget.eng:widget.uzb, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 36),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(widget.isEng? widget.uzb:widget.eng, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.orange),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(widget.isEng? widget.synonyms:widget.synonymsUz, textScaleFactor: 1.5,),
          )
        ],
      ),
    );
  }
}
