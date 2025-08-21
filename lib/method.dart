class Method{


  Method(){
    int age = add();
    print(age);

    double calcResult = calculator(5, 10);
    print(calcResult);

    String introduceMy = introduce(name: '김성현');
    print(introduceMy);
  }


  int add(){
    return 30;
  }

  double calculator(int a, int b){
    return (a+b)*1.5;
  }

  String introduce({required String name}){
    return "안녕하세요, $name 입니다.";
  }

}