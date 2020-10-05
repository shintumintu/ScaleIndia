import 'package:Scaleindia/Models/route_names.dart';
import 'package:Scaleindia/Services/authentication_service.dart';
import 'package:Scaleindia/Services/navigation_service.dart';
import '../locator.dart';
import 'base_model.dart';

class HomePageViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();

    if (hasLoggedInUser) {
      _navigationService.navigateTo(EmployeeDashBoardViewRoute);
    } else {
      _navigationService.navigateTo(EmployeeViewRoute);
    }
  }
  void navigateToFirstPage() {
    _navigationService.navigateTo(CandidateViewRoute);
  }
   void navigateToEmployerPage() {
    _navigationService.navigateTo(EmployerViewRoute);
  }
  void navigateToEmployeePage() {
    _navigationService.navigateTo(EmployeeViewRoute);
  }
}
