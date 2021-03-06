import 'package:Scaleindia/Models/route_names.dart';
import 'package:Scaleindia/Services/dialog_service.dart';
import 'package:Scaleindia/Services/navigation_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../locator.dart';
import '../../ViewModels/base_model.dart';

class AssessorPageViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final DialogService _dialogService = locator<DialogService>();
  String email1 = '12345';
  String password1 = '1234567890';

  Future login({
    @required String email,
    @required String password,
  }) async {
    if (email == email1 && password == password1) {
      _navigationService.navigateTo(AssessorHomePageViewRoute);
    } else if (email.isEmpty && password.isEmpty) {
      await _dialogService.showDialog(
        title: 'Given field is empty ',
        description: 'Please enter your request id',
      );
    } else {
      await _dialogService.showDialog(
        title: 'Request Id error',
        description: 'Please re-enter your request id',
      );
    }
  }

  void navigateToActivate() {
    _dialogService.showDialog(
      title: 'Failed',
      description: 'Please Complete all the task to activate ',
    );
  }

  void task1() {
    _dialogService.showDialog(
      title: 'Task 2',
      description: 'Please upload all the photos to activate task 2 ',
    );
  }

  void navigateToSop() {
    _navigationService.navigateTo(VideoHomePageViewRoute);
  }
}
