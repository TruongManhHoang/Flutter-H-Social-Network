import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class CloudinaryService {
  final String cloudName = 'deia6omkx';
  final String apiKey = '417941542592642';
  final String apiSecret = '0IE9wGpWrqUQlyf-CWNQaPa01d4';
  final picker = ImagePicker();

  // Hàm để chọn file (ảnh hoặc video) từ thiết bị
  Future<File?> pickFile({required bool isImage}) async {
    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        preferredCameraDevice: isImage ? CameraDevice.rear : CameraDevice.front,
        imageQuality: isImage ? 85 : null,
      );
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
    } catch (e) {
      print('Error picking file: $e');
    }
    return null;
  }

  // Hàm để upload file lên Cloudinary
  Future<String?> uploadFile(File file, {required bool isImage}) async {
    final endpoint = isImage ? 'image' : 'video';
    final url = Uri.parse(
        'https://api.cloudinary.com/v1_1/$cloudName/$endpoint/upload');

    final request = http.MultipartRequest('POST', url);
    request.fields['upload_preset'] =
        'unsigned_upload_preset'; // Sử dụng preset mới ở đây
    request.fields['api_key'] = apiKey;
    request.fields['timestamp'] =
        DateTime.now().millisecondsSinceEpoch.toString();
    request.files.add(await http.MultipartFile.fromPath('file', file.path));

    try {
      final response = await request.send();
      final responseBody = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(responseBody);
        return jsonResponse['secure_url'];
      } else {
        print(
            'Upload failed: ${response.statusCode} - ${response.reasonPhrase} - Response: $responseBody');
        return null;
      }
    } catch (e) {
      print('Error uploading file: $e');
      return null;
    }
  }
}
