import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*
void main() => runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: Home()

));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: Text('Режим шифрования'),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: 1 ,
        itemBuilder:(context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text('Впишите текст для шифрования')
                ],
              ),

              Row(
                children: <Widget>[
                  Flexible(
                    child:  TextField(
                      onChanged:(String value){
                    //    key=value;
                      },
                      maxLines: null,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Текст для шифрования"),
                      //style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text('Введите секретную фразу')
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child:  TextField(
                      onChanged:(String value){
                       // secretPhrase=value;
                      },
                      maxLines: null,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Секретная фраза"),
                      //style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Зашифровать!'))
                ],
              ),
              Row(
                children: [
                  Text('Ваш результат')
                ],
              )/*,
        Row(
          Text()
        )*/
            ],
          );
        })
    );
  }
}
*/
void main() => runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
 home: myApp()
));


    class myApp extends StatefulWidget {
      const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  String text1="";
  String encrypted="testing";

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context){


    return Scaffold(
        body: Column(
            children: [

                Flexible(
                  child:  TextField(
                    onChanged:(String value){
                      text1=value;
                    },
                    maxLines: null,
                    decoration: const InputDecoration(
                        fillColor: Colors.white54 ,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: "Секретная фраза"),
                    //style: Theme.of(context).textTheme.body1,
                  ),
                ),


              Text('$encrypted and $text1'),

              ElevatedButton(onPressed: (){
                setState(() {
                  var text =text1.toLowerCase().replaceAll(" ",'!').split('');
                  for (int i = 0; i < text.length; i++) {
                    var a = i/20; //assign amount of symbols to insert next line between
                    var offset="я тебя любил";// place text to define offset off alphabet
                    var offsetlist = offset.replaceAll(" ",'').split('');
                    int b=offsetlist.length;
                    if (i>0 && a.runtimeType == int){// next line core between
                      text.insert(i,'\n');
                        }
                        //assign a number to a letter. shift is defined by secret phrase
                        else if (text[i] == 'а') {
                          if (text.remove("а")){
                            var c = b+ 1;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'б') {
                          if (text.remove("б")){
                            var c = b+ 2;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'в') {
                          if (text.remove("в")){
                            var c = b+ 3;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'г') {
                          if (text.remove("г")){
                            var c = b+ 4;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else  if (text[i] == 'д') {
                          if (text.remove("д")){
                            var c = b+ 5;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'е') {
                          if (text.remove("е")){
                            var c = b+ 6;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ё') {
                          if (text.remove("ё")){
                            var c = b+ 7;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ж') {
                          if (text.remove("ж")){
                            var c = b+ 8;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'з') {
                          if (text.remove("з")){
                            var c = b+ 9;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'и') {
                          if (text.remove("и")){
                            var c = b+ 10;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'й') {
                          if (text.remove("й")){
                            var c = b+ 11;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'к') {
                          if (text.remove("к")){
                            var c = b+ 12;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'л') {
                          if (text.remove("л")){
                            var c = b+ 13;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'м') {
                          if (text.remove("м")){
                            var c = b+ 14;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'н') {
                          if (text.remove("н")){
                            var c = b+ 15;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'о') {
                          if (text.remove("о")){
                            var c = b+ 16;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'п') {
                          if (text.remove("п")){
                            var c = b+ 17;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'р') {
                          if (text.remove("р")){
                            var c = b+ 18;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'с') {
                          if (text.remove("с")){
                            var c = b+ 19;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'т') {
                          if (text.remove("т")){
                            var c = b+ 20;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'у') {
                          if (text.remove("у")){
                            var c = b+ 21;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ф') {
                          if (text.remove("ф")){
                            var c = b+ 22;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'х') {
                          if (text.remove("х")){
                            var c = b+ 23;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ц') {
                          if (text.remove("ц")){
                            var c = b+ 24;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ч') {
                          if (text.remove("ч")){
                            var c = b+ 25;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ш') {
                          if (text.remove("ш")){
                            var c = b+ 26;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'щ') {
                          if (text.remove("щ")){
                            var c = b+ 27;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ъ') {
                          if (text.remove("ъ")){
                            var c = b+ 28;
                            c = c-33 ;
                            if (c>33){
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ы') {
                          if (text.remove("ы")){
                            var c = b+ 29;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ь') {
                          if (text.remove("ь")){
                            var c = b+ 30;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'э') {
                          if (text.remove("э")){
                            var c = b+ 31;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'ю') {
                          if (text.remove("ю")){
                            var c = b+ 32;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }
                        else if (text[i] == 'я') {
                          if (text.remove("я")){
                            var c = b+ 33;
                            if (c>33){
                              c = c-33 ;
                            }
                            text.insert(i,'$c'); }
                        }

                      }
                      encrypted = text.toString();
                    }

                    );

              },
                child: Text('pressme'),
              ),
            ]
        ),
           /* floatingActionButton: FloatingActionButton(

              backgroundColor: Colors.indigo,
              onPressed: (){
               Clipboard.setData(ClipboardData(text: " $encrypted"));
               ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                   content: const Text('Текст скопирован!'),
                   duration: const Duration(milliseconds: 1500),
                   width: 140.0, // Width of the SnackBar.
                   padding: const EdgeInsets.symmetric(
                     horizontal: 8.0, // Inner padding for SnackBar content.
                   ),
                   behavior: SnackBarBehavior.floating,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                 ),
               );
              },
              child:  Icon(
                        Icons.copy,
                        color: Colors.grey[300]
                )

            ),*/
      floatingActionButton: FloatingActionButton(

          backgroundColor: Colors.indigo,
          onPressed: (){

            Navigator.pushNamed(context,'/decrypting');
          },
          child:  Icon(
              Icons.lock_open,
              color: Colors.grey[300]
          )

      ),
    );

  }

}
