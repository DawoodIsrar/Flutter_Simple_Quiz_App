import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());//this will start the app
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _q = [{'quizQuestion':'Whats ur fav school',
            'Answers':[{'text':'ups','score':1},{'text':'iqra','score':0},{'text':'mission','score':0}]
            },
            {'quizQuestion':'Whats ur fav collage',
            'Answers':[{'text':'edwards','score':1},{'text':'islamia','score':0},{'text':'gullabad degree collage','score':0}]
            },
            {'quizQuestion':'Whats ur fav uni',
            'Answers':[{'text':'jiki','score':1},{'text':'peshawer','score':0},{'text':'comsats','score':0}]
            }];
   int _totalScore=0;
   void _resetQuiz(){
       setState(() {
          _questionIndex = 0;
       _totalScore=0;
       });
      
   }
  void _ansChosin(int score) {
   
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _q.length){
      print('we have more question');
    }
    else{
      print('we have no more question');
    }
    
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My 1st Quiz App'),
      ),
      body: _questionIndex < _q.length? 
      Quiz(answerQuestion:_ansChosin,q:_q,questionIndex: _questionIndex,)
       :
      Result(_totalScore,_resetQuiz),
     
      
    ));
  }
}
