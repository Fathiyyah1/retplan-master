import 'package:cloud_firestore/cloud_firestore.dart';

Future getUser(String username) async {
  final doc = FirebaseFirestore.instance.collection("users").get();
  print(doc);
}
