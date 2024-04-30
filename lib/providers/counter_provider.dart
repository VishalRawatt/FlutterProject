import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier{
  var counter = 0 ;

  void increment(){
    counter++ ;
    notifyListeners();
  }

  void decrement(){
    if(counter!=0){
      counter-- ;
    }
    notifyListeners();
  }
}