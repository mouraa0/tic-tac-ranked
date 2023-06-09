import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tic_tac_rank_app/presenter/game_room/binder/game_room_bindings.dart';
import 'package:tic_tac_rank_app/presenter/game_room/view/game_room_screen.dart';
import 'package:tic_tac_rank_app/presenter/home/view/home_screen.dart';
import 'package:tic_tac_rank_app/presenter/login/binder/login_binding.dart';
import 'package:tic_tac_rank_app/presenter/login/view/login_screen.dart';
import 'package:tic_tac_rank_app/presenter/matchmaking/binder/matchmaking_bindings.dart';
import 'package:tic_tac_rank_app/presenter/matchmaking/view/matchmaking_screen.dart';
import 'package:tic_tac_rank_app/presenter/register/binder/create_username_binding.dart';
import 'package:tic_tac_rank_app/presenter/register/binder/register_binding.dart';
import 'package:tic_tac_rank_app/presenter/register/view/create_username_screen.dart';
import 'package:tic_tac_rank_app/presenter/register/view/register_screen.dart';
import 'package:tic_tac_rank_app/presenter/reset_password/binder/reset_password_binding.dart';
import 'package:tic_tac_rank_app/presenter/reset_password/view/reset_password_screen.dart';
import 'package:tic_tac_rank_app/presenter/splash/view/splash_screen.dart';

class AppRouter {
  static String splashScreen = '/';
  static String homeScreen = '/home';
  static String matchmakingScreen = '/matchmaking';
  static String matchScreen = '/match';
  static String matchConfigRoute = '$matchScreen/:roomId';
  static String loginScreen = '/login';
  static String registerScreen = '/register';
  static String createUsernameScreen = '/create-username';
  static String resetPasswordScreen = '/reset-password';

  static returnPages() {
    return [
      GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: loginScreen,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
        maintainState: false,
      ),
      GetPage(
        name: registerScreen,
        page: () => const RegisterScreen(),
        binding: RegisterBinding(),
        maintainState: false,
      ),
      GetPage(
        name: homeScreen,
        page: () => const HomeScreen(),
      ),
      GetPage(
        name: matchmakingScreen,
        page: () => const MatchmakingScreen(),
        binding: MatchmakingBinding(),
        maintainState: false,
      ),
      GetPage(
        name: matchConfigRoute,
        page: () => const GameRoomScreen(),
        binding: GameRoomBinding(),
        maintainState: false,
      ),
      GetPage(
        name: createUsernameScreen,
        page: () => const CreateUsernameScreen(),
        binding: CreateUsernameBinding(),
        maintainState: false,
      ),
      GetPage(
        name: resetPasswordScreen,
        page: () => const ResetPasswordScreen(),
        binding: ResetPasswordBinding(),
        maintainState: false,
      ),
    ];
  }
}
