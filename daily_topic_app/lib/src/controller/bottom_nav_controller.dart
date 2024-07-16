import 'package:get/get.dart';

import '../pages/upload.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  // 네빙게이션 변경에 따른 변경사항 적용
  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch(page){
      case PageName.UPLOAD:
        Get.to(()=>const Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}
