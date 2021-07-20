import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdev_2/qna.dart';
import 'ques.dart';

int score = 0;
int length = 0;
class Safe extends StatefulWidget {
  const Safe({Key? key}) : super(key: key);

  @override
  _SafeState createState() => _SafeState();
}

class _SafeState extends State<Safe> {
  int qno = 0;

  List <QnA> _question =  getQues();

  List<Widget> _checkboxes = <Widget>[];

  Icon verify(bool value){
   if(value)
     return Icon(CupertinoIcons.check_mark,color: Colors.green,);
   else
     return Icon(CupertinoIcons.multiply,color: Colors.red,);
 }

  void setBoxes(Icon icon){
   if (qno<_question.length) {
     _checkboxes.add(icon);
     _checkboxes.add(SizedBox(width: 5,));
     length++;
   }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    //   appBar: AppBar(
    //   title: Text('Safe',textAlign: TextAlign.center,),
    // backgroundColor: Colors.blue[900],
    // ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('${qno +1 }/ ${_question.length}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    ) ,
                    Text('Question',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 100.0,),

                //view,
                Container(
                  width: 380,
                  child: Text('${_question[qno].getQuestion()} ?',
                  style: TextStyle(
                    fontSize: 26.0,
                  ),),
                ),
                SizedBox(height: 120.0,),
                //True or false buttons
                Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                  ),
                    child: TextButton(
                        onPressed: (){
                          if(_question[qno].getAnswer() == true){
                              setBoxes(verify(true));
                              score++;
                            //tick mark
                          }else{
                              setBoxes(verify(false));
                            //cross mark
                          }

                          setState(() {
                            if(qno<_question.length-1)
                              qno++;
                            else
                              Navigator.pushReplacementNamed(context, '/Results');
                          });
                        },
                        child: Text('True',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white
                      ),
                    )
                  )
                ),
                SizedBox(height: 60.0,),
                Container(
                    width: 200,
                    decoration: BoxDecoration(
                    color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                ),
                    child: TextButton(onPressed: (){
                      if(_question[qno].getAnswer() == false){
                        setBoxes(verify(true));
                        score++;
                        //tick mark
                      }else{
                        setBoxes(verify(false));
                        //cross mark
                      }
                      setState(() {
                        if(qno<_question.length-1)
                          qno++;
                        else
                          Navigator.pushReplacementNamed(context, '/Results');
                      });
                    },
                    child: Text('False',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white
                    ),
                    )
                )
                ),
                // Incorrect or correct
                SizedBox(height: 120.0,),
                Row(
                  children: _checkboxes,
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
int setScore(){
  return score;
}
int totalQuestion(){
  return length;
}