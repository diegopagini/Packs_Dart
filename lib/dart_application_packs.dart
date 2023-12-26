import 'package:http/http.dart' as http;

import 'models/request_response.dart';

void getResponseService() {
  final Uri url = Uri.parse('https://reqres.in/api/users?page=2');

  http.get(url).then((http.Response response) {
    // final body = jsonDecode(response.body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id: ${body['data'][2]['id']}');

    final value = usersFromJson(response.body);
    print(value);
    print('page: ${value.page}');
    print('per_page: ${value.perPage}');
    print('id: ${value.data[0].id}');
  });
}
