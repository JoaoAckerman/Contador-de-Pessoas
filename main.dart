import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: contadordepessoas(),
      debugShowCheckedModeBanner: false,
  ));

}

class contadordepessoas extends StatefulWidget{
  @override
  _contadordepessoasState createState() => _contadordepessoasState();
}

class _contadordepessoasState extends State<contadordepessoas>{

  int people=0;
  String _infoText = "Pode Entrar!";

  void _changepeople(int delta){

    setState(() {
      people += delta;

      if(people<0){
        _infoText = "Há algo errado";
      }else if(people>=10){
        _infoText = "Casa cheia!";
      } else _infoText = "Pode Entrar!";

    });



  }

  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Image.network("https://image.freepik.com/vetores-gratis/gradiente-em-tons-de-azul-tons-de-fundo_1100-19.jpg", fit: BoxFit.fill, height: 1000,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Contagem de Pessoas: $people",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: FlatButton(
                child: Text("+1", style: TextStyle(fontSize: 40,color: Colors.white),),
                onPressed: (){
                  _changepeople(1);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: FlatButton(
                child: Text("-1", style: TextStyle(fontSize: 40,color: Colors.white),),
                onPressed: (){
                  _changepeople(-1);
                },
              ),
            ),
          ],
        ),
        Text(_infoText,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        )
      ],
    ),
      ],
    );

  }
}
