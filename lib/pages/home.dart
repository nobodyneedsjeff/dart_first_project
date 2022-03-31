import 'package:flutter/material.dart';






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
        title: Text('Выберите режим'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Как пользоваться"),
                content: Text("В окне \"Зашифровать\" введите текст, который желаете скрыть от других. Вы можете добавить секретную фразу, чтобы его было труднее вскрыть. "
                 "Нажмите на кнопку \"Зашифровать\" чтобы ваш текст был переведён в код. "
                "Нажмите на плавующую кнопку чтобы скопировать текст. \n"
                "Чтобы расшифровать, вставьте полученный текст. Введите секретную фразу, если такая есть, в точности как вам передали. Нажмите на кнопку, и текст расшифруется"),
                actions:[
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      child: Text("Закрыть"))
                ],
              );

            }
            );},
              icon: Icon(Icons.help)
          ) // кнопка помощи
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:[

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  ElevatedButton.icon(
                    icon: Icon(Icons.lock_open),
                    onPressed: (){
                      Navigator.pushNamed(context,'/decrypting');
                    }, label: Text('Расшифровать'),
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                          return null; // Use the component's default.
                        },
                      ),
                    ),
                  ),

                ]),Padding(padding: EdgeInsets.all(30.0)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.lock_rounded),
                  onPressed: (){
                    Navigator.pushNamed(context,'/encrypting');
                  }, label: Text('Зашифровать'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                        return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                        return null; // Use the component's default.
                      },
                    ),
                  ),
                ),
              ],
            )
          ]
      ),
    );
  }
}
