// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BalanceCollectionReference
    implements
        BalanceQuery,
        FirestoreCollectionReference<BalanceQuerySnapshot> {
  factory BalanceCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$BalanceCollectionReference;

  static Balance fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$BalanceFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Balance value,
    SetOptions? options,
  ) {
    return _$BalanceToJson(value);
  }

  @override
  BalanceDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BalanceDocumentReference> add(Balance value);
}

class _$BalanceCollectionReference extends _$BalanceQuery
    implements BalanceCollectionReference {
  factory _$BalanceCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$BalanceCollectionReference._(
      firestore.collection('balances').withConverter(
            fromFirestore: BalanceCollectionReference.fromFirestore,
            toFirestore: BalanceCollectionReference.toFirestore,
          ),
    );
  }

  _$BalanceCollectionReference._(
    CollectionReference<Balance> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<Balance> get reference =>
      super.reference as CollectionReference<Balance>;

  @override
  BalanceDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return BalanceDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BalanceDocumentReference> add(Balance value) {
    return reference.add(value).then((ref) => BalanceDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BalanceCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BalanceDocumentReference
    extends FirestoreDocumentReference<BalanceDocumentSnapshot> {
  factory BalanceDocumentReference(DocumentReference<Balance> reference) =
      _$BalanceDocumentReference;

  DocumentReference<Balance> get reference;

  /// A reference to the [BalanceCollectionReference] containing this document.
  BalanceCollectionReference get parent {
    return _$BalanceCollectionReference(reference.firestore);
  }

  @override
  Stream<BalanceDocumentSnapshot> snapshots();

  @override
  Future<BalanceDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String title,
    List<String> users,
  });

  Future<void> set(Balance value);
}

class _$BalanceDocumentReference
    extends FirestoreDocumentReference<BalanceDocumentSnapshot>
    implements BalanceDocumentReference {
  _$BalanceDocumentReference(this.reference);

  @override
  final DocumentReference<Balance> reference;

  /// A reference to the [BalanceCollectionReference] containing this document.
  BalanceCollectionReference get parent {
    return _$BalanceCollectionReference(reference.firestore);
  }

  @override
  Stream<BalanceDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return BalanceDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<BalanceDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return BalanceDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? title = _sentinel,
    Object? users = _sentinel,
  }) async {
    final json = {
      if (title != _sentinel) "title": title as String,
      if (users != _sentinel) "users": users as List<String>,
    };

    return reference.update(json);
  }

  Future<void> set(Balance value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is BalanceDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class BalanceDocumentSnapshot extends FirestoreDocumentSnapshot {
  BalanceDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Balance> snapshot;

  @override
  BalanceDocumentReference get reference {
    return BalanceDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Balance? data;
}

abstract class BalanceQuery implements QueryReference<BalanceQuerySnapshot> {
  @override
  BalanceQuery limit(int limit);

  @override
  BalanceQuery limitToLast(int limit);

  BalanceQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BalanceQuery whereUsers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  });

  BalanceQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BalanceDocumentSnapshot? startAtDocument,
    BalanceDocumentSnapshot? endAtDocument,
    BalanceDocumentSnapshot? endBeforeDocument,
    BalanceDocumentSnapshot? startAfterDocument,
  });

  BalanceQuery orderByUsers({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    BalanceDocumentSnapshot? startAtDocument,
    BalanceDocumentSnapshot? endAtDocument,
    BalanceDocumentSnapshot? endBeforeDocument,
    BalanceDocumentSnapshot? startAfterDocument,
  });
}

class _$BalanceQuery extends QueryReference<BalanceQuerySnapshot>
    implements BalanceQuery {
  _$BalanceQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Balance> reference;

  BalanceQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Balance> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return BalanceQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<BalanceDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: BalanceDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return BalanceQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<BalanceQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<BalanceQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  BalanceQuery limit(int limit) {
    return _$BalanceQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  BalanceQuery limitToLast(int limit) {
    return _$BalanceQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  BalanceQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BalanceQuery(
      reference.where(
        'title',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BalanceQuery whereUsers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  }) {
    return _$BalanceQuery(
      reference.where(
        'users',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  BalanceQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BalanceDocumentSnapshot? startAtDocument,
    BalanceDocumentSnapshot? endAtDocument,
    BalanceDocumentSnapshot? endBeforeDocument,
    BalanceDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('title', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BalanceQuery(query, _collection);
  }

  BalanceQuery orderByUsers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BalanceDocumentSnapshot? startAtDocument,
    BalanceDocumentSnapshot? endAtDocument,
    BalanceDocumentSnapshot? endBeforeDocument,
    BalanceDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('users', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BalanceQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$BalanceQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BalanceQuerySnapshot
    extends FirestoreQuerySnapshot<BalanceQueryDocumentSnapshot> {
  BalanceQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Balance> snapshot;

  @override
  final List<BalanceQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BalanceDocumentSnapshot>> docChanges;
}

class BalanceQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements BalanceDocumentSnapshot {
  BalanceQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Balance> snapshot;

  @override
  BalanceDocumentReference get reference {
    return BalanceDocumentReference(snapshot.reference);
  }

  @override
  final Balance data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      title: json['title'] as String,
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      operations: (json['operations'] as List<dynamic>)
          .map((e) => Operation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) => <String, dynamic>{
      'title': instance.title,
      'users': instance.users,
      'operations': instance.operations.map((e) => e.toJson()).toList(),
    };
