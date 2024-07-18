import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ImageCompressService {
  final XFile file;

  ImageCompressService({required this.file});

  exec() async {
    return await _getFileImage(file);
  }

  String _timestamp() => DateTime.now().millisecondsSinceEpoch.toString();

  Future<XFile?> _getFileImage(XFile file) async {
    // directory
    final dir = await path_provider.getTemporaryDirectory();
    // image path
    final targetPath = "${dir.absolute.path}/${_timestamp()}.jpg";
    final imgFile = await _compressAndGetFile(file, targetPath);

    return imgFile;
  }

  Future<XFile?> _compressAndGetFile(XFile file, String targetPath) async {
    final result = await FlutterImageCompress.compressAndGetFile(
      file.path,
      targetPath,
      minWidth: 600,
      minHeight: 600,
      quality: 50,
    );
    return result;
  }
}