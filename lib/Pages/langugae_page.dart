import 'package:Scaleindia/ApiModel/center_api.dart';
import 'package:Scaleindia/ApiModel/theory_api.dart';
import 'package:Scaleindia/ViewModels/languagepage_viewmodel.dart';
import 'package:Scaleindia/widgets/HeaderWidget.dart';
import 'package:Scaleindia/widgets/busy_button.dart';
import 'package:Scaleindia/widgets/language_widget.dart';
import 'package:Scaleindia/widgets/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CenterAssesor centerAssesor = Provider.of<CenterAssesor>(context);
    return ViewModelBuilder<LanguagePageViewModel>.reactive(
        onModelReady: (model) => model.getTheory(centerAssesor.asId),
        viewModelBuilder: () => LanguagePageViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: PreferredSize(
                  child: header(context, isAppTitle: true, isIcon: false),
                  preferredSize: Size.fromHeight(50.0)),
              body: model.busy==false?Center(child: CircularProgressIndicator(),):_getPostUi(model.posts)
            ));
  }
  Widget _getPostUi(List<Theory> posts,) => ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) => LanguageWidget(
          theory: posts[index],
        )
      );
}