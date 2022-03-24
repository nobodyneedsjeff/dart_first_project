import 'package:flutter/material.dart';



class Decrypting extends StatefulWidget {
  const Decrypting({Key? key}) : super(key: key);

  @override
  State<Decrypting> createState() => _DecryptingState();
}

class _DecryptingState extends State<Decrypting> {

  String result='';
  late String key;
  String secretPhrase='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Text('Режим дешифровки'),
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
                        child: Text('Введите полученный текст',style:
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
                            filled: true,
                            border: OutlineInputBorder(),
                            labelText: "Текст для дешифровки",
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
                            secretPhrase=value;
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


                          var text=key.replaceAll("[",'').replaceAll("]",'')
                              .replaceAll(",",'')
                              .split(' ');
                          for (int i = 0; i < text.length; i++) {

                            // var offset="я тебя любил";// place text to define offset off alphabet
                            var offsetlist = secretPhrase.replaceAll(" ",'').split('');
                            var b=offsetlist.length;

                            if (b+1<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 1;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'a'); }
                              }}else if(b+1>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+1)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'а'); };
                              }
                            }
                            // end for letter A

                            if (b+2<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 2;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'б'); }
                              }}else if(b+2>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+2)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'б'); };
                              }
                            }
                            // end for letter б

                            if (b+3<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 3;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'в'); }
                              }}else if(b+3>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+3)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'в'); };
                              }
                            }
                            // end for letter в

                            if (b+4<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 4;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'г'); }
                              }}else if(b+4>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+4)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'г'); };
                              }
                            }
                            // end for letter г

                            if (b+5<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 5;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'д'); }
                              }}else if(b+5>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+5)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'д'); };
                              }
                            }
                            // end for letter д

                            if (b+6<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 6;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'е'); }
                              }}else if(b+6>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+6)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'е'); };
                              }
                            }
                            // end for letter г



                            if (b+7<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 7;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ё'); }
                              }}else if(b+7>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+7)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ё'); };
                              }
                            }
                            // end for letter г


                            if (b+8<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 8;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ж'); }
                              }}else if(b+8>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+8)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ж'); };
                              }
                            }
                            // end for letter г
                            if (b+9<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 9;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'з'); }
                              }}else if(b+9>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+9)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'з'); };
                              }
                            }
                            // end for letter з
                            if (b+10<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 10;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'и'); }
                              }}else if(b+10>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+10)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'и'); };
                              }
                            }
                            // end for letter и

                            if (b+11<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 11;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'й'); }
                              }}else if(b+11>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+11)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'й'); };
                              }
                            }
                            // end for letter й

                            if (b+12<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 12;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'к'); }
                              }}else if(b+12>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+12)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'к'); };
                              }
                            }
                            // end for letter з

                            if (b+13<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 13;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'л'); }
                              }}else if(b+13>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+13)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'л'); };
                              }
                            }
                            ; // end for letter л

                            if (b+14<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 14;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'м'); }
                              }}else if(b+14>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+14)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'м'); };
                              }
                            }
                            // end for letter л

                            if (b+15<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 15;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'н'); }
                              }}else if(b+15>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+15)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'н'); };
                              }
                            }
                            // end for letter л

                            if (b+16<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 16;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'о'); }
                              }}else if(b+16>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+16)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'о'); };
                              }
                            }
                            // end for letter о

                            if (b+17<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 17;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'п'); }
                              }}else if(b+17>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+17)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'п'); };
                              }
                            }
                            // end for letter л

                            if (b+18<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 18;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'р'); }
                              }}else if(b+18>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+18)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'р'); };
                              }
                            }
                            // end for letter л
                            if (b+19<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 19;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'с'); }
                              }}else if(b+19>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+19)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'с'); };
                              }
                            }
                            // end for letter л

                            if (b+20<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 20;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'т'); }
                              }}else if(b+20>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+20)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'т'); };
                              }
                            }
                            // end for letter л

                            if (b+21<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 21;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'у'); }
                              }}else if(b+21>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+21)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'у'); };
                              }
                            }
                            // end for letter л

                            if (b+22<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 22;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ф'); }
                              }}else if(b+22>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+22)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ф'); };
                              }
                            }
                            // end for letter л

                            if (b+23<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 23;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'х'); }
                              }}else if(b+23>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+23)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'х'); };
                              }
                            }
                            // end for letter л
                            if (b+24<33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 24;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ц'); }
                              }}else if(b+24>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+24)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ц'); };
                              }
                            }
                            // end for letter л
                            if (b+25<33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 25;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ч'); }
                              }}else if(b+25>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+25)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ч'); };
                              }
                            }
                            // end for letter л
                            if (b+26<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 26;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ш'); }
                              }}else if(b+26>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+26)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ш'); };
                              }
                            }
                            // end for letter ш

                            if (b+27<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 27;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'щ'); }
                              }}else if(b+27>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+27)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'щ'); };
                              }
                            }
                            // end for letter л
                            if (b+28<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 28;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ъ'); }
                              }}else if(b+28>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+28)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ъ'); };
                              }
                            }
                            // end for letter л

                            if (b+29<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 29;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ы'); }
                              }}else if(b+29>33) { // else if it is more than 33 it will minus it and will be new number
                              var c = (b+29)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ы'); };
                              }
                            }
                            // end for letter л

                            if (b+30<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 30;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ь'); }
                              }}else if(b+30>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+30)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ь'); };
                              }
                            }
                            // end for letter л


                            if (b+31<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 31;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'э'); }
                              }}else if(b+31>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+31)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'э'); };
                              }
                            }
                            // end for letter л


                            if (b+32<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 32;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'ю'); }
                              }}else if(b+32>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = (b+32)-33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'ю'); };
                              }
                            }
                            // end for letter л
                            if (b+33<=33){// number 1 is for A , if true, c will equal to a number
                              var c = b+ 33;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){
                                  text.insert(i,'я'); }
                              }}else if(b+33>33){ // else if it is more than 33 it will minus it and will be new number
                              var c = b;
                              if (text[i] == '$c') {
                                if (text.remove("$c")){

                                  text.insert(i,'я'); };
                              }
                            }
                          }
                          result = text.toString().replaceAll("[",'')
                              .replaceAll("]",'')
                              .replaceAll(" ",'').replaceAll("!",' ')
                              .replaceAll(",",'');
              });
                        }, child: Text('Расшифровать!'))
                        ,)
                    ],
                  ),
                  Row(
                    children: <Widget> [
                      Flexible(
                          child: Padding(padding: EdgeInsets.only(top:25.0, bottom:15.0),
                          child: Text('$result'//,maxLines: null, overflow:TextOverflow.ellipsis
                          )
                      )
                      )
                    ],
                  )
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: (){
          Navigator.pushNamed(context,'/encrypting');
        },
        child:  Icon(
            Icons.lock_open,
            color: Colors.grey[300]
        )

    ),
    );
  }
}
