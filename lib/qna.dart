// Questions with answers for particular questions
 class QnA{
  String? q;
  bool? ans;

  QnA({this.q, this.ans});
  void setQnA(String getQuestion, bool answer){
   q = getQuestion;
   ans = answer;
  }
  String? getQuestion(){
   return q;
  }
  bool? getAnswer(){
   return ans;
  }
}
