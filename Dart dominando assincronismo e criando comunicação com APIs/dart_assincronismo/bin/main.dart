import 'package:http/http.dart';

void main() {
  //print('Hello, World!');
  requestData();
}

void requestData() {
  String url = "https://gist.githubusercontent.com/NatashaB-randao/674b50f61abe7496a9c2c88f81d7b8f5/raw/5d04a2193ea1c0248a698a4a687360a309482dcb/accounts.json";
  print(get(Uri.parse(url)));

}