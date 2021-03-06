import 'package:Scaleindia/ApiModel/candidate_api.dart';
import 'package:Scaleindia/ApiModel/center_api.dart';
import 'package:Scaleindia/ApiModel/theory_api.dart';
import 'package:Scaleindia/Pages/assessment/face_deduction.dart';
import 'package:Scaleindia/ViewModels/languagepage_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/busy_button.dart';

class LanguageWidget extends StatelessWidget {
  final Theory theory;
  final Candidate candidate;
  final CenterAssesor centerAssesor;
  LanguageWidget({this.theory, this.candidate, this.centerAssesor});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LanguagePageViewModel>.reactive(
        viewModelBuilder: () => LanguagePageViewModel(),
        builder: (context, model, child) => Padding(
              padding: const EdgeInsets.only(
                  top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  BusyButton(
                      color: Colors.green,
                      title: theory.tqLanguage,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FaceDeduction(
                                      theory: theory,
                                      candidate: candidate,
                                      centerAssesor: centerAssesor,
                                    )));
                      }),
                ],
              ),
            ));
  }
}
