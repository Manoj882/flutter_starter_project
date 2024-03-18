import 'package:auto_route/auto_route.dart';
import '/features/auth/presentation/widgets/pages/forgot_password/forgot_password.dart';
import '/features/auth/presentation/widgets/pages/reset_password/reset_password.dart';
import '/features/auth/presentation/widgets/pages/set_new_password/set_new_password.dart';
import '/features/auth/presentation/widgets/pages/login/login.dart';
import '/features/auth/presentation/widgets/pages/register/create_password/create_password.dart';

import '/features/auth/presentation/widgets/pages/register/create_account/create_account.dart';
import '/features/onboard/presentation/widgets/pages/on_board.dart';
import '/my_home_page.dart';
import '/features/splash/presentation/widgets/pages/splash.dart';
import '/features/auth/presentation/widgets/pages/verify_otp/verify_otp.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: "/", initial: true),
        AutoRoute(page: OnBoardRoute.page, path: "/onBoard"),
        AutoRoute(page: MyHomeRoute.page, path: "/myHome"),
        AutoRoute(page: CreateAccountRoute.page, path: '/create-account'),
        AutoRoute(page: CreatePasswordRoute.page, path: '/create-password'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: VerifyOTPRoute.page, path: '/verify-otp'),
        AutoRoute(page: ForgotPasswordRoute.page, path: '/forgot-password'),
        AutoRoute(page: ResetPasswordRoute.page, path: '/reset-password'),
        AutoRoute(page: SetNewPasswordRoute.page, path: '/set-new-password'),
      ];
}
