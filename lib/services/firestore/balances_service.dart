import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sums_up/models/constants.dart';

import 'firestore_service.dart';

class BalancesService {
  static final FirestoreService _firestore = FirestoreService();

  Stream<DocumentSnapshot> balance({required String id}) =>
      _firestore.balancesCollection.doc(id).snapshots();

  Stream<QuerySnapshot> operations({required String balanceId}) =>
      _firestore.operationsCollection
          .doc(balanceId)
          .collection(operationsCollectionName)
          .snapshots();
}
