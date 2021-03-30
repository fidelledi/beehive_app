import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> create({String name, String school, String uid}) async {
  await Firebase.initializeApp();
  CollectionReference ref = FirebaseFirestore.instance.collection('Users');
  ref.doc(uid).set({"Name": name, "School": school});
  return;
}
