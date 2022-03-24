import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Encrypting extends StatefulWidget {
  const Encrypting({Key? key}) : super(key: key);

  @override
  State<Encrypting> createState() => _EncryptingState();
}

class _EncryptingState extends State<Encrypting> {

  String result='';
  late String key;
  String secretPhrase='';
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
            Padding(
              padding: EdgeInsets.all(15.0),
               child: Text('Впишите текст для шифрования',style:
               TextStyle(
                fontSize: 20,
                ),
              ),
            ),
          ],
        ),

         Row(
          children: <Widget>[
             Flexible(
              child:  TextField(
                onChanged:(String value){
                  key=value;
                },
                maxLines: null,
                decoration: const InputDecoration(
                  fillColor: Colors.white54 ,
                    filled:true,
                    border: OutlineInputBorder(),
                    labelText: "Текст для шифрования",
                ),
                //style: Theme.of(context).textTheme.body1,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Введите секретную фразу',style:
              TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Flexible(
              child:  TextField(
                onChanged:(String value){
                  if (value == ''){
                    secretPhrase = '';
                  }else {
                  secretPhrase = value;}

                },
                maxLines: null,
                decoration: const InputDecoration(
                    fillColor: Colors.white54 ,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: "Секретная фраза"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top: 25.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                var text=key.toLowerCase().replaceAll(" ",'!').split('');
                List offsetlist = secretPhrase.replaceAll(" ", '').split('');
                var b=offsetlist.length;
                int d = 0;
                var alphabet1=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
                //2 alphabets
                for (int i=0; i<text.length; i++){
                  for(int e = 0; e<alphabet1.length; e++){
                    var c = b + 1;
                    d=e+c;//if number is more than 33, go back to the beginning
                    if (d>33){
                      d = (e+c)-33 ;
                    }
                    if(text[i]==alphabet1[e]){ //replace letters in one list from another
                      if (text.remove(alphabet1[e])){
                        text.insert(i,'${d}');}
                    }
                  }
                };
               /* for (int i = 0; i < text.length; i++) {
                  if (text[i] == 'а') {
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

                }*/
                result = text.toString();
              });
            }, child: Text('Зашифровать!'))
            ,)
          ],
        ),
        Row(
          children:<Widget>[
            Flexible//
            (child: Padding(padding: EdgeInsets.only(top:25.0, bottom:15.0),
              child:Text('$result'
            ),
            )

           )
          ],
        ),
        
      ],
    );
    }),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: (){
          Clipboard.setData(ClipboardData(text: "$result"));
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
        child: Icon(Icons.copy, color: Colors.grey[400])
    ),
    );
  }
}
