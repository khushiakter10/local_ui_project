import 'dart:io';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  // Share text
  void shareText() {
    Share.share('Check out this cool Flutter package: https://pub.dev/packages/share_plus');
  }

  // Share a URL
  void shareUrl() {
    Share.share('https://flutter.dev', subject: 'Flutter Website');
  }

  // Share a file
  Future<void> shareFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/example.txt');

    // Write some content to the file
    await file.writeAsString('Hello, this is a shared file!');

    Share.shareXFiles([XFile(file.path)], text: 'Check out this file!');
  }

  // Share multiple files
  Future<void> shareMultipleFiles() async {
    final directory = await getApplicationDocumentsDirectory();
    final file1 = File('${directory.path}/file1.txt');
    final file2 = File('${directory.path}/file2.txt');

    // Write content to both files
    await file1.writeAsString('File 1 Content');
    await file2.writeAsString('File 2 Content');

    Share.shareXFiles(
      [XFile(file1.path), XFile(file2.path)],
      text: 'Sharing multiple files!',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Share Plus Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: shareText,
              child: const Text('Share Text'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: shareUrl,
              child: const Text('Share URL'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: shareFile,
              child: const Text('Share File'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: shareMultipleFiles,
              child: const Text('Share Multiple Files'),
            ),
          ],
        ),
      ),
    );
  }
}
