import 'dart:convert';
import 'dart:io';
import 'package:Scaleindia/Pages/RPL-4Admin/rpl-4_home_page.dart';
import 'package:path/path.dart' as path;
import 'package:Scaleindia/widgets/busy_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csv/csv.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class LoadCsvDataScreen extends StatefulWidget {
  final String path;
  LoadCsvDataScreen({this.path});

  @override
  _LoadCsvDataScreenState createState() => _LoadCsvDataScreenState();
}

class _LoadCsvDataScreenState extends State<LoadCsvDataScreen> {
  bool _isloading2 = false;
  double _progress2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CSV DATA"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder(
                future: loadingCsvData(widget.path),
                builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                  print(snapshot.data.toString());
                  return snapshot.hasData
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: snapshot.data
                                .map(
                                  (data) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 50,
                                              child: Text(
                                                data[0].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[1].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[2].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[3].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[4].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[5].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[6].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[7].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[8].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[9].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[10].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[11].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[12].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[13].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: data[0]
                                                      .toString()
                                                      .contains("Sl No")
                                                  ? Colors.yellow
                                                  : Colors.white,
                                              width: 200,
                                              child: Text(
                                                data[14].toString(),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                )
                                .toList(),
                          ),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
              _isloading2
                  ? Column(
                      children: [
                        _progress2 * 100 == 100
                            ? Text(
                                'Uploaded Successfully',
                                style: TextStyle(color: Colors.green),
                              )
                            : Container(),
                        CircularProgressIndicator(
                          backgroundColor: Colors.black,
                          value: _progress2,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.green),
                        ),
                        Text('${(_progress2 * 100).toStringAsFixed(2)} % '),
                      ],
                    )
                  : Container(),
              _isloading2
                  ? Container()
                  : BusyButton(
                      title: 'Submit',
                      color: Colors.green,
                      onPressed: () {
                        //convertCSVToJson(widget.path);
                        openfile(widget.path);
                      })
            ],
          ),
        ));
  }

  Future<List<List<dynamic>>> loadingCsvData(String path) async {
    final csvFile = new File(path).openRead();
    return await csvFile
        .transform(utf8.decoder)
        .transform(
          CsvToListConverter(),
        )
        .toList();
  }

  Future<String> convertCSVToJson(String path) async {
    List<List<dynamic>> csvList = await loadingCsvData(path);
    csvList.removeAt(0); //remove column heading

    var list = <CandidateUploadData>[];
    for (List<dynamic> rowData in csvList) {
      list.add(CandidateUploadData.fromList(rowData));
    }
    var jsonStr = jsonEncode(list);
    _addFileToDatabase2(list);
    print(jsonStr);
    return jsonStr;
  }

  Future<void> uploadFile(
    File image2,
  ) async {
    try {
      String imageLocation2 = await getFileNameWithExtension(image2);
      final Reference reference2 =
          FirebaseStorage.instanceFor(bucket: "gs://scaleindia.appspot.com")
              .ref()
              .child(imageLocation2);
      final UploadTask uploadTask = reference2.putFile(image2);
      uploadTask.snapshotEvents.listen((event) {
        setState(() {
          _isloading2 = true;
          _progress2 = event.bytesTransferred / event.totalBytes.toDouble();
          print(_progress2);
        });
      });
      TaskSnapshot taskSnapshot = await uploadTask;

      String url = await taskSnapshot.ref.getDownloadURL();
      print('url$url');
    } catch (e) {
      print(e);
    }
  }

  Future<void> _addFileToDatabase2(
      List<CandidateUploadData> candidateUploadData) async {
    try {
      // Get image URL from firebase
      // final ref = FirebaseStorage.instance.ref().child(text2);
      // var imageString = await ref.getDownloadURL();

      // Add location and url to database
      for (CandidateUploadData candidateUploadDatas in candidateUploadData) {
        await FirebaseFirestore.instance
            .collection('RPL-4Admin')
            .doc()
            .set(candidateUploadDatas.toJson())
            .whenComplete(() => print('uploaded successfully'));
      }
    } catch (e) {
      print(e.message);
    }
  }

  Future<void> openfile(String path) async {
    final csvFile = new File(path);
    convertCSVToJson(csvFile.path);
    uploadFile(csvFile);
  }

  static Future<String> getFileNameWithExtension(File file) async {
    if (await file.exists()) {
      //To get file name without extension
      //path.basenameWithoutExtension(file.path);

      //return file with file extension
      return path.basename(file.path);
    } else {
      return null;
    }
  }
}

class CandidateUploadData {
  int slno;
  String salutation;
  String name;
  String fathername;
  int mobileNo;
  int aadharNo;
  String address;
  String marriage;
  String qualification;
  String dob;
  String gender;
  String jobRole;
  String qpCode;
  String employementName;
  String companyName;

  CandidateUploadData(
      this.slno,
      this.salutation,
      this.name,
      this.fathername,
      this.mobileNo,
      this.aadharNo,
      this.address,
      this.marriage,
      this.qualification,
      this.dob,
      this.gender,
      this.jobRole,
      this.qpCode,
      this.employementName,
      this.companyName);

  CandidateUploadData.fromList(List<dynamic> items)
      : this(
          items[0],
          items[1],
          items[2],
          items[3],
          items[4],
          items[5],
          items[6],
          items[7],
          items[8],
          items[9],
          items[10],
          items[11],
          items[12],
          items[13],
          items[14],
        );

  Map<String, dynamic> toJson() => {
        'slno': this.slno,
        'name': this.name,
        'salutation': this.salutation,
        'fathername': this.fathername,
        'mobileNo': this.mobileNo,
        'aadharNo': this.aadharNo,
        'address': this.address,
        'marriage': this.marriage,
        'qualification': this.qualification,
        'dob': this.dob,
        'gender': this.gender,
        'jobRole': this.jobRole,
        'qpCode': this.qpCode,
        'employementName': this.employementName,
        'companyName': this.companyName
      };
}
