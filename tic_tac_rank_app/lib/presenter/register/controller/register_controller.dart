import 'package:get/get.dart';
import 'package:tic_tac_rank_app/core/routes/app_router.dart';
import 'package:tic_tac_rank_app/core/supabase/utils/supabase_account_utils.dart';
import 'package:tic_tac_rank_app/core/utils/forms/forms_utils.dart';

class RegisterController extends GetxController {
  String email = '';
  String password = '';

  final emailErrorText = Rxn<String>();
  // final usernameErrorText = Rxn<String>();
  final passwordErrorText = Rxn<String>();

  RxBool isButtonActive = false.obs;
  RxBool isButtonLoading = false.obs;

  void register() async {
    isButtonLoading.value = true;
    await SupabaseAccountUtils.register(email: email, password: password);

    Get.offAndToNamed(AppRouter.homeScreen);
    isButtonLoading.value = false;
  }

  void _verifyRegisterButtonActive() {
    //TODO: improve shitty logic;
    if (email.isNotEmpty &&
        emailErrorText.value == null &&
        password.isNotEmpty &&
        passwordErrorText.value == null) {
      isButtonActive.value = true;

      return;
    }

    isButtonActive.value = false;
  }

  void onChangedEmail(String str) {
    email = str;

    FormsUtils.validateEmail(email: email, errorText: emailErrorText);
    _verifyRegisterButtonActive();
  }

  void onChangedPassword(String str) {
    password = str;

    FormsUtils.validatePassword(psw: password, errorText: passwordErrorText);
    _verifyRegisterButtonActive();
  }
}
