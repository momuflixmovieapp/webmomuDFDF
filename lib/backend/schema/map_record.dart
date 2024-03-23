import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class MapRecord extends FirestoreRecord {
  MapRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('map');

  static Stream<MapRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapRecord.fromSnapshot(s));

  static Future<MapRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapRecord.fromSnapshot(s));

  static MapRecord fromSnapshot(DocumentSnapshot snapshot) => MapRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapRecordData({
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class MapRecordDocumentEquality implements Equality<MapRecord> {
  const MapRecordDocumentEquality();

  @override
  bool equals(MapRecord? e1, MapRecord? e2) {
    return e1?.link == e2?.link;
  }

  @override
  int hash(MapRecord? e) => const ListEquality().hash([e?.link]);

  @override
  bool isValidKey(Object? o) => o is MapRecord;
}
