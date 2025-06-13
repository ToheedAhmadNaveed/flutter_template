import 'package:get/get.dart';
import 'package:kindura_ai/models/home/user_list_model.dart';
import 'package:kindura_ai/repository/home_repository/home_repository.dart';

import '../../../data/response/status.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();
  final requestStatus = Status.LOADING.obs;
  final userList = UserList().obs;
  RxString error = ''.obs;

  void setRequestStatus(Status value) => requestStatus.value = value;
  void setUserList(UserList value) => userList.value = value;
  void setError(String value) => error.value = value;

  void userListApi() {
    _api.userListApi().then((value) {
      setRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRequestStatus(Status.ERROR);
    });
  }
}
