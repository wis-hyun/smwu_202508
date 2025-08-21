class Variable {

  Variable(){
    String name = '김성현';
    int age = 22;
    bool check = true;
    double weight = 5;
    var animal = 'dog';
    animal = 'cat';

    dynamic home = false;
    home = true;
    home = 'my home';
    home = 10;

    //final, const 변수의 값은 변경불가
    //final, const 차이는 '컴파일 시점의 차이'
    // 컴파일 = 사람이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업
    // const 는 컴파일 시점에 값이 정해짐
    // final 은 런타임 시점에 값이 정해짐
    final String name3 = 'sunghyun';
    const String address = 'aaa';

  }

}