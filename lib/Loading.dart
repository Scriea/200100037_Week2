import 'package:flutter/material.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void change() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, '/Home');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    change();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe',textAlign: TextAlign.center,),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Center(
          child: Image(
            image: AssetImage('assets/images/safe.png'),
            width: 400,
            height: 400,
          ),
        )
      ),
    );
  }
}
