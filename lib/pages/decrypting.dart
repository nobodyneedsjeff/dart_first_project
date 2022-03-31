import 'package:flutter/material.dart';



class Decrypting extends StatefulWidget {
  const Decrypting({Key? key}) : super(key: key);

  @override
  State<Decrypting> createState() => _DecryptingState();
}

class _DecryptingState extends State<Decrypting> {
  String dropdownValue = 'Russian';
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
          actions: <Widget>[
            IconButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Как пользоваться"),
                  content: const Text("В окне \"Зашифровать\" введите текст, который желаете скрыть от других. Вы можете добавить секретную фразу, чтобы его было труднее вскрыть."
                  "Нажмите на кнопку \"Зашифровать\" чтобы ваш текст был переведён в код."
                     " Нажмите на плавующую кнопку чтобы скопировать текст. \n"
                      "Чтобы расшифровать, вставьте полученный текст. Введите секретную фразу, если такая есть, в точности как вам передали. Нажмите на кнопку, и текст расшифруется"),
                  actions:[
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        child: const Text("Закрыть"))
                  ],
                );

              }
              );},
                icon: const Icon(Icons.help)
            )
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
                          child: Text('Введите полученный текст',style:
                          TextStyle(
                            fontSize: 20,
                          ),
                          ),
                        ),
                      ],
                  ), // ряд для слов введите текст
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
                  ), // вставная текста
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
                  ), //ряд для слов вставления севретной фразы текста
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
                  ), // ряд для вставки текста
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 25.0),
                        child: ElevatedButton(onPressed: (){

                          setState(() {

                               List text=key.replaceAll("[",'').replaceAll("]",'')
                                   .replaceAll(",",'')
                                   .split(' ');
                               List offsetlist = secretPhrase.replaceAll(" ", '').split('');
                                 List alphabet1=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"];
                                 List alphabet2=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
                               int b=offsetlist.length;
                               int c=0;
                               late List language;
                               if(dropdownValue=="Russian") {
                                 language= alphabet1;
                               }else if (dropdownValue=="English"){
                                 language = alphabet2;
                               }
                                  for (int i = 0; i < text.length; i++) {
                                    for (int e = 0; e<language.length; e++){
                                              if (b+e<language.length){
                                                c = b+ e+1;
                                              }else if (b+e>=language.length){
                                                c= (b +e + 1) - language.length;
                                              }
                                          if (text[i] == '$c') {
                                            if (text.remove("$c")){
                                              text.insert(i,'${language[e]}'); }
                                              }
                                    }
                                  }
                                  result = text.toString().replaceAll("[",'')
                                      .replaceAll("]",'')
                                      .replaceAll(" ",'').replaceAll("!",' ')
                                      .replaceAll(",",'');
                                });
                          }, child: const Text('Расшифровать!'))
                        ,)
                    ]
                   ),
                      Column(
                        children: [
                        Padding(padding: EdgeInsets.only(top: 25.0),
                          child: DropdownButton<String>(
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
                        ],),
                  ],
                  ), //кнопка для расшифровки текста
                  Row(
                    children: <Widget> [
                      Flexible(
                          child: Padding(padding: EdgeInsets.only(top:25.0, bottom:15.0),
                          child: Text('$result')
                      )
                      )
                    ],
                  ) // печатание результата
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: (){
          Navigator.pushNamed(context,'/encrypting');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Страница шифровки открыта!'),
              duration: const Duration(milliseconds: 1500),
              //width: , // Width of the SnackBar.
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
            Icons.lock_open,
            color: Colors.grey[300]
        )

    ), // флоатинг баттон, кнопка возвращающая тебя к шифровке текста
    );
  }
}
