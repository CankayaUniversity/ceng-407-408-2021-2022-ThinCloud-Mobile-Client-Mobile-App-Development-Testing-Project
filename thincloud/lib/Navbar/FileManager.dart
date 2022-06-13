// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/cupertino.dart';

class FileManager extends StatefulWidget {
  const FileManager({Key? key}) : super(key: key);

  @override
  State<FileManager> createState() => _FileManagerState();
}

class _FileManagerState extends State<FileManager> {
  @override
  Widget build(BuildContext context) {
    final widthfull = MediaQuery.of(context).size.width;
    final heightfull = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/filemanager.png")),
        ),
        //   height: heightfull,
        //    width: widthfull,
      ),
    );
  }
}
