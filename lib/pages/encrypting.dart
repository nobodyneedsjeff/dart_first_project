import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Encrypting extends StatefulWidget {
  const Encrypting({Key? key}) : super(key: key);

  @override
  State<Encrypting> createState() => _EncryptingState();
}

class _EncryptingState extends State<Encrypting> {
  String dropdownValue = 'Russian';
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
        actions: <Widget>[
          IconButton(onPressed: (){
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
             title: Text("Как пользоваться"),
             content: const Text("В окне \"Зашифровать\" введите текст, который желаете скрыть от других. Вы можете добавить секретную фразу, чтобы его было труднее вскрыть."
                 "Нажмите на кнопку \"Зашифровать\" чтобы ваш текст был переведён в код."
                 " Нажмите на плавующую кнопку чтобы скопировать текст. \n"
                 "Чтобы расшифровать, вставьте полученный текст. Введите секретную фразу, если такая есть, в точности как вам передали. Нажмите на кнопку, и текст расшифруется"),
                actions:[
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      child: Text("закрыть"))
                ],
            );

          }
            );},
          icon: Icon(Icons.help)
          ) // помощь
        ],
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
        ), //слова "ввеидте текст
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
        ), //ввод текста для шифрования
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Введите секретную фразу',style:
              TextStyle(
                fontSize: 18,
              ),
              ),
            ),
          ],
        ), // вставка слов для вставления секретной фразы
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
        ), //ввод секретной фразы
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
            Padding(padding: EdgeInsets.only(top: 25.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                var text=key.toLowerCase().replaceAll(" ",'!').split('');
                List offsetlist = secretPhrase.replaceAll(" ", '').split('');
                var b=offsetlist.length;
                int d = 0;
                List alphabet1=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"];
                List alphabet2=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
                //2 alphabets
                late List language;
                if(dropdownValue=="Russian") {
                  language= alphabet1;
                }else if (dropdownValue=="English"){
                  language = alphabet2;
                }
                for (int i=0; i<text.length; i++){
                  for(int e = 0; e<language.length; e++){
                    var c = b + 1;
                    d=e+c;//`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~if number is more than 33, go back to the beginning
                    if (d>language.length){
                      d = (e+c)-language.length ;
                    }
                    if(text[i]==language[e]){ //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~replace letters in one list from another
                      if (text.remove(language[e])){
                        text.insert(i,'${d}');}
                    }
                  }
                };
                result = text.toString();
              });
            }, child: Text('Зашифровать!'))
            ,),
            ] //children for row 1
          ), // основная кнопочка
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 25.0),
                child : DropdownButton<String>(
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
                )
              ],), // кнопка языка
          ],
        ), // кнопочка
        Row(
          children:<Widget>[
            Flexible//
            (child: Padding(padding: EdgeInsets.only(top:25.0, bottom:15.0),
              child:Text('$result'
            ),
            )

           )
          ],
        ), // ряд показывающий результат
        
      ],
    );
    }),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: (){
          if (result == " " || result == ''){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Ничего не скопировано!'),
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
          }else {
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
          }
        },
        child: Icon(Icons.copy, color: Colors.grey[400])
    ), // floating button для копирования текста
    );
  }
}
