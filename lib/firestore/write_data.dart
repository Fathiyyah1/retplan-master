import 'package:cloud_firestore/cloud_firestore.dart';

Future putUser() async {
  final doc = FirebaseFirestore.instance.collection("users");
  print(doc);
}
