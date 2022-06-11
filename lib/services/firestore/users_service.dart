import 'package:sums_up/services/firestore/firestore_service.dart';

class UsersService {
  static final FirestoreService _firestore = FirestoreService();

  get balanceIdsStream => _firestore.userDocument.snapshots();

  // Future<dynamic> get balanceIds async =>
  //     await collection.doc(FirestoreService.userId).get().then(
  //         (DocumentSnapshot doc) => (doc.data() as Map)[balancesCollectionName]
  //             .map((e) => e.path)
  //             .toList());
}
