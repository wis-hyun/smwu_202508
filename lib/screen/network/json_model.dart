class JsonModel {
  String id;
  int number;
  Info? info;
  List<Framework> frameworks;


  JsonModel(this.id, this.number, this.info, this.frameworks);


  factory JsonModel.fromJson(Map<String, dynamic> json){
    //json['framework'].map((e)=> Framework.fromJson(e)).toList();
    return JsonModel(
        json['id'] ?? '',
        json['number'] ?? 0,
        json['info'] == null ? null : Info.fromJson(json['info']),
        json['framework'] == null ? [] : (json['framework'] as Iterable).map((e) => Framework.fromJson(e)).toList()
    );


  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info, frameworks: $frameworks}';
  }


//int age;
  //double weight;
  //string name;
}

class Info {
  int age;
  double weight;
  String name;
  Description? description; //null을 허용하는 타입

  Info(this.age, this.weight, this.name, this.description);
  factory Info.fromJson(Map<String, dynamic> json){
    return Info(
        json['age'] ?? 0,
        json['weight'] ?? 0.0,
        json['name'] ?? '',
        json['description'] == null ? null : Description.fromJson(json['description']));
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {
  String career;
  String when;

  Description(this.career, this.when);

  //factory : named 생성자와 유사함
  //json에는 career, when 이 들어옴
  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
        json['career'] ?? '', //null 일때 공백으로 넣어줌.
        json['when'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Description{career: $career, when: $when}';
  }
}

class Framework {
  String email;
  String platform;

  Framework(this.email, this.platform);

  factory Framework.fromJson(Map<String, dynamic> json){
    return Framework(json['email'] ?? '', json['platform'] ?? '');
  }

  @override
  String toString() {
    return 'Framework{email: $email, platform: $platform}';
  }


}
