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
  String dropdownValue = 'Russian';
  String text1="";
  String encrypted="testing";
  String result=' ';

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



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(onPressed: (){
                setState(() {
               var text=text1.replaceAll("[",'').replaceAll("]",'')
                   .replaceAll(",",'')
                   .split(' ');
               var secretPhrase= '';
                  List offsetlist = secretPhrase.replaceAll(" ", '').split('');
                  List alphabet1=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"];
                  List alphabet2=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
               var b=offsetlist.length;
               late List language;
                  if(dropdownValue=="Russian") {
                      language= alphabet1;
                    }else if (dropdownValue=="English"){
                     language = alphabet2;
                  }
                    for (int i = 0; i < text.length; i++) {
                      for (int e = 0; e < language.length; e++) {
                        // place text to define offset off alphabet
                        if (b + e <=33) { // number 1 is for A , if true, c will equal to a number
                          var c = b + e + 1;
                          if (text[i] == '$c') {
                            if (text.remove("$c")) {
                              text.insert(i, '${language[e]}');
                            }
                          }
                          //print(c);
                          //print(b);
                        }
                      }
                    }


                  result = text.toString().replaceAll("[",'')
                      .replaceAll("]",'')
                      .replaceAll(" ",'').replaceAll("!",' ')
                      .replaceAll(",",'');
                  /*
                  var text =text1.toLowerCase().replaceAll(" ",'!').split('');
                  var secretPhrase= 'привет';
                  List offsetlist = secretPhrase.replaceAll(" ", '').split('');
                  var alphabet1=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"];
                  var b=offsetlist.length;
                  int d = 0;
                          for (int i=0; i<text.length; i++){
                            for(int e = 0; e<alphabet1.length; e++){
                            var c = b + 1;
                            d=e+c;
                            if (d>33){
                            d = (e+c)-33 ;
                            }
                      if(text[i]==alphabet1[e]){
                        if (text.remove(alphabet1[e])){
                        text.insert(i,'${d}');}
                        }
                    result = text.toString();
                      }
                    };
*/
                  }

                  );

                },
                  child: Text('pressme'),
              ),

              Column(
                children: [
                DropdownButton<String>(
                  value: dropdownValue,
                 // icon: const Icon(Icons.arrow_downward),
                 // elevation: 16,
                 // style: const TextStyle(color: Colors.deepPurple),
                 // underline: Container(
                  // height: 2,
                   // color: Colors.deepPurpleAccent,
                 // ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['English','Russian']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
                ],),
              ]),
             Row(
               mainAxisAlignment: MainAxisAlignment.center ,
             children:[
               Text('$encrypted and $text1 и $result'),
              ])

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
