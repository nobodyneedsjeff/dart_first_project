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
