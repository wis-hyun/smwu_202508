import 'package:get/get.dart';

class MyController extends GetxController{

  // get.find => get 안에 등록된 controller를 불러오는 역할
  // MyController는 return 타입
  // get은 불러온다는 키워드
  // to 는 변수명
  static MyController get to => Get.find<MyController>();

  RxInt count = 0.obs;
  RxString name = ''.obs;


  void countUp(){
    count.value ++;
  }

}