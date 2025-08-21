import 'dart:io';

class Collections {
  final List<String> nameList = [];

  void listAdd() {
    nameList.addAll(["김진한", "홍길동", "이순신", "오바마", "기린", "호랑이", "사자"]);
    print(nameList);
  }

  void listRemove() {
    // 기린 삭제
    nameList.remove("기린");

    // 마지막 요소 삭제 (비어있지 않을 때만)
    if (nameList.isNotEmpty) nameList.removeLast();

    // 첫 번째 요소 삭제 (비어있지 않을 때만)
    if (nameList.isNotEmpty) nameList.removeAt(0);

    // "호랑이" 삭제
    nameList.removeWhere((e) => e == "호랑이");

    print(nameList);
    nameList.clear();
    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 5, 2, 4, 2, 4, 1, 3, 4];
    int length = ageList.length;
    print('Collections.listController : $length');

    int two = ageList[2];
    print('Collections.listController two : $two');

    // ageList가 비어있는 경우 isEmpty = true
    bool isEmpty = ageList.isEmpty;
    // ageList가 비어있지않은 경우 isNotEmpty = true
    bool isNotEmpty = ageList.isNotEmpty;
  }

  void mapController() {
    Map m = {'a': 10, 'b': 11, 20: 11};
    m['a'];
    var maValue = m['a'];
    print('Collections.mapController: $maValue');
  }

  void setController() {
    Set s = {'a', 'b', 'c'};
    s.add('a');
    s.add('b');
    print('Collections.setController: $s');
  }

  void practice() {
    // ---------- List ----------
    List<String> animals = []; // String 타입 List 생성
    animals.addAll(["호랑이", "사자", "기린", "코끼리", "원숭이"]); // 5개 추가
    print("초기 List: $animals");

    if (animals.length > 1) {
      animals.removeAt(1); // 두 번째 데이터 제거 (index=1)
    }
    print("두 번째 데이터 제거 후 List: $animals");

    // ---------- Map ----------
    Map<String, int> people = {}; // String key, int value
    people["김철수"] = 20;
    people["이영희"] = 22;
    people["박민수"] = 25;
    print("초기 Map: $people");

    // 두 번째 데이터 제거 (Map은 순서가 없지만, entries로 변환 후 index 접근 가능)
    if (people.length > 1) {
      String secondKey = people.keys.elementAt(1);
      people.remove(secondKey);
    }
    print("두 번째 데이터 제거 후 Map: $people");

    // ---------- Set ----------
    Set<String> countries = {}; // String 타입 Set
    countries.addAll({"한국", "미국", "일본", "중국", "영국"});
    print("초기 Set: $countries");

    if (countries.isNotEmpty) {
      String firstElement = countries.first; // 첫 번째 데이터
      countries.remove(firstElement);
    }
    print("첫 번째 데이터 제거 후 Set: $countries");
  }

  void simpleIf() {
    int age = 30;
    bool check = false;
    if (check) {
      print('Collections.simpleIf');
    } else {
      print('Collections.simpleIf');
    }
  }

  void simpleSwitch() {
    int age = 30;

    switch (age) {
      case 10:
        print('10');
        break;

      case 20:
        print('20');
        break;

      case 30:
        print('39');
        break;
    }
  }

  void practice2(int score){
    String grade = "";

    if (score>=90){
      grade = 'A';
    }else if (score >= 80){
      grade = 'B';
    }else if (score >= 70){
      grade = 'C';
    }else if (score >= 60){
      grade = 'D';
    }else{
      grade = 'F';
    }

    switch (grade){
      case 'A':
        print('A');
        break;
      case 'B':
        print('B');
        break;
      case 'C':
        print('C');
        break;
      case 'D':
        print('D');
        break;
      case 'F':
        print('F');
        break;
    }
  }


}
