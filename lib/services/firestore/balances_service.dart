import 'package:cloud_firestore/cloud_firestore.dart';

import 'firestore_service.dart';

class BalancesService {
  static final FirestoreService _firestore = FirestoreService();

  Stream<DocumentSnapshot> balance({required String id}) =>
      _firestore.balancesCollection.doc(id).snapshots();
}
