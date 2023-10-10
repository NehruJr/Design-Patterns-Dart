class Calcaulator{
  late Operation _operation;
  
  set setOperation(Operation operation){
    _operation = operation;
  }
  
  void excuteOperation(int a , int b){
    _operation.calculate(a,b);
  } 
  
}

abstract class Operation{
  void calculate(int a , int b);
}

class Add extends Operation{
  @override
  void calculate(int a, int b) {
   print("a+b=${a+b}");
  }
  
}

class Subtract extends Operation{
  @override
  void calculate(int a, int b) {
   print("a-b=${a-b}");
  }
  
}

void main(){
  
  Calcaulator c1 = Calcaulator();
  c1.setOperation= Add();
  c1.excuteOperation(1,2);
  
 Calcaulator c2 = Calcaulator();
  c2.setOperation= Subtract();
  c2.excuteOperation(1,2);
  
}
