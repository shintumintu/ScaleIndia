import 'package:Scaleindia/Models/route_names.dart';
import 'package:Scaleindia/Services/authentication_service.dart';
import 'package:Scaleindia/Services/dialog_service.dart';
import 'package:Scaleindia/Services/firestore_service.dart';
import 'package:Scaleindia/Services/navigation_service.dart';
import 'package:flutter/foundation.dart';
import '../../locator.dart';
import '../../ViewModels/base_model.dart';

class EmployeePageViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final FirestoreService _firestoreService = locator<FirestoreService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future login({
    @required String email,
    @required String password,
  }) async {
    setBusy(true);

    var result = await _authenticationService.loginWithEmailEmployee(
      employeeEmailAddress: email,
      password: password,
    );

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(EmployeeDashBoardViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Login Failure',
          description: result.toString(),
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Login Failure',
        description: result,
      );
    }
  }

  Future<void> forgot({
    @required String email,
  }) async {
    _authenticationService.sendPasswordResetEmail(email: email);
    _dialogService.showDialog(
        title: 'Reset Password',
        description: 'A password reset link has beeen sent to' + email);
  }

  Future navigateToECASCreateView() async {
    await _navigationService.navigateTo(ECASCreatePageViewRoute);
  }

  Future navigateToECASHomeView() async {
    await _navigationService.navigateTo(ECASHomePageViewRoute);
  }

  void navigateToCandidateSourcingView() async {
    _navigationService.navigateTo(CandidateSouringPageViewRoute);
  }

  Future logOut() async {
    await _authenticationService.signOut();
    _navigationService.navigateTo(HomeViewRoute);
  }

  void navigateBackToLogin() {
    _navigationService.navigateTo(EmployeeViewRoute);
  }

  void navigateToEmployeeRegister() {
    _navigationService.navigateTo(EmployeeRegisterViewRoute);
  }

  void navigateToForgotPage1() {
    _navigationService.navigateTo(ForgotPage1ViewRoute);
  }

  void listenToPosts() {
    _firestoreService.listenToPostRealtimeEmployee();
  }
}
