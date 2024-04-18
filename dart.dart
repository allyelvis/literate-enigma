import 'dart:convert';
import 'package:http/http.dart' as http;

class AccountingSoftware {
  // Define properties and methods for accounting software
}

class RestaurantManagement {
  // Define properties and methods for restaurant management
}

class HotelManagement {
  // Define properties and methods for hotel management
}

class PosIntegration {
  // Define properties and methods for POS integration
}

class RestApi {
  static const String baseUrl = 'your-api-base-url.com';
  static const String username = 'your-username';
  static const String password = 'your-password';

  static Future<http.Response> postData(String endpoint, Map<String, dynamic> data) async {
    final String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: <String, String>{
        'Authorization': basicAuth,
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    return response;
  }
}

void main() async {
  // Example usage of REST API
  final response = await RestApi.postData('your-endpoint', {'key': 'value'});
  print('Response: ${response.statusCode} ${response.body}');
}
