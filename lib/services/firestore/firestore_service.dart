import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sums_up/models/constants.dart';

class FirestoreService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static const userId = "EGPJSkPXGEKUqaIufV9s";

  get firestore => _firestore;

  DocumentReference get userDocument =>
      _firestore.collection(usersCollectionName).doc(userId);

  // Future<List<Balance>> get balances async {
  //   List<Balance> balances = [];

  //   for (DocumentReference doc in await balanceIds) {
  //     Map balance = await getBalance(balanceId: doc.id);
  //     List<dynamic> operations = await getOperations(balanceId: balance["id"]);
  //     balances.add(Balance(
  //       title: "",
  //       users: [],
  //       // title: balance[0].data()!["title"],
  //       // users: balance.map((e) => e.data()!["user"]).toList(),
  //     ));
  //   }

  //   return balances;
  // }

  // Future<List<dynamic>> get balanceIds async {
  //   return await _firestore
  //       .collection(usersCollectionName)
  //       .doc(userId)
  //       .get()
  //       .then((DocumentSnapshot doc) =>
  //           (doc.data() as Map)[balancesCollectionName]);
  // }

  // Future<Map> getBalance({required String balanceId}) async {
  //   return await _firestore
  //       .collection(balancesCollectionName)
  //       .doc(balanceId)
  //       .get()
  //       .then((DocumentSnapshot doc) {
  //     Map balance = Map.of(doc.data() as Map);
  //     balance["id"] = doc.id;
  //     return balance;
  //   });
  // }

  // Future<List<dynamic>> getOperations({required String balanceId}) async {
  //   return await _firestore
  //       .collection(balancesCollectionName)
  //       .doc(balanceId)
  //       .collection(operationsCollectionName)
  //       .get()
  //       .then((event) {
  //     for (var doc in event.docs) {
  //       print("${doc.id} => ${doc.data()}");
  //     }
  //     return event.docs;
  //   });
  // }
}
