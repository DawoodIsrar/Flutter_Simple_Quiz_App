import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;
  String resultText='you did it';
  Result(this.result, this.reset);
  String get resultPhrase {
  
  if (result>=3){
  resultText='EXcellent Job! Good you Got Full marks 3/3';
}
  else 
  if (result == 2){
  resultText='intermediate Job! great you Got intermediate marks 2/3';
}
   else {
   resultText='weak performance work hard for next time';

  }
  return resultText;
}


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child:Text(resultPhrase,style:TextStyle(fontSize: 33),),
  
        ),
        FlatButton( child: Text('Restart The quiz',),
        textColor: Colors.blue,
        onPressed: reset, )
      ],
    );
    
  }
}