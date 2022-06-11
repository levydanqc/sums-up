import 'package:cloud_firestore/cloud_firestore.dart';

class UsersService {
  get balanceIdsStream => FirebaseFirestore.instance
      .collection('users')
      .doc("EGPJSkPXGEKUqaIufV9s")
      .snapshots();

  // Future<dynamic> get balanceIds async =>
  //     await collection.doc(FirestoreService.userId).get().then(
  //         (DocumentSnapshot doc) => (doc.data() as Map)[balancesCollectionName]
  //             .map((e) => e.path)
  //             .toList());
}
