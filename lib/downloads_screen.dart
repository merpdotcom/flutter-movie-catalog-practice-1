/* import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  ValueNotifier downloadProgressNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter File Download')),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: downloadProgressNotifier,
            builder: (context, value, snapshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Circular Progress Indicator',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 10.0,
                    // animation: true,
                    percent: downloadProgressNotifier.value / 100,
                    center: Text(
                      "${downloadProgressNotifier.value}%",
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    backgroundColor: Colors.grey.shade300,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blueAccent,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Linear Progress Indicator',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  LinearPercentIndicator(
                    // animation: true,
                    barRadius: const Radius.circular(10),
                    // animationDuration: 400,
                    lineHeight: 15.0,
                    percent: downloadProgressNotifier.value / 100,
                    backgroundColor: Colors.grey.shade300,
                    progressColor: Colors.blue,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "${downloadProgressNotifier.value}%",
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FittedBox(
        child: FloatingActionButton(
            onPressed: () => downloadFileFromServer(),
            child: const Icon(Icons.cloud_download_sharp)),
      ),
    );
  }
}

downloadFileFromServer() async {
  downloadProgressNotifier.value = 0;
  Directory directory = Directory("");
  if (Platform.isAndroid) {
    directory = (await getExternalStorageDirectory())!;
  } else {
    directory = (await getApplicationDocumentsDirectory());
  }
  await Dio().download("https://sample-videos.com/img/Sample-jpg-image-5mb.jpg",
      '${directory.path}/sampleImage.pdf',
      onReceiveProgress: (actualBytes, int totalBytes) {
    downloadProgressNotifier.value = (actualBytes / totalBytes * 100).floor();
  });
  print('File downloaded at ${directory.path}/samplePDF.pdf');
}
*/