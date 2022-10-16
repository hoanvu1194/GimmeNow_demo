import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:gimmenow_demo/models/User.dart';
import 'package:gimmenow_demo/services/auth_service.dart';
import 'package:gimmenow_demo/services/datastore_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController to = Get.find();
  DataStoreService _datastoreService = DataStoreService();
  AuthService _authService = AuthService();
  Rxn<User> currentUser = Rxn<User>();
  RxBool isLoading = false.obs;
  RxString imageUrl = ''.obs;

  User? get user => currentUser.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getCurrentUser();
    super.onReady();
  }

  Future<void> getCurrentUser() async {
    AuthUser authUser = await _authService.getCurrentUser();
    currentUser.value = await _datastoreService.getUser(authUser.userId);
    print(currentUser.value);
  }
}
