import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantRecord extends FirestoreRecord {
  MerchantRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "merchantname" field.
  String? _merchantname;
  String get merchantname => _merchantname ?? '';
  bool hasMerchantname() => _merchantname != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  bool hasDiscount() => _discount != null;

  // "current_location" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  // "marker_icon" field.
  String? _markerIcon;
  String get markerIcon => _markerIcon ?? '';
  bool hasMarkerIcon() => _markerIcon != null;

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  bool hasUid() => _uid != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _merchantname = snapshotData['merchantname'] as String?;
    _type = snapshotData['type'] as String?;
    _discount = castToType<int>(snapshotData['discount']);
    _currentLocation = snapshotData['current_location'] as LatLng?;
    _markerIcon = snapshotData['marker_icon'] as String?;
    _uid = castToType<int>(snapshotData['uid']);
    _image2 = snapshotData['image2'] as String?;
    _phone = snapshotData['phone'] as String?;
    _description = snapshotData['description'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merchant');

  static Stream<MerchantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MerchantRecord.fromSnapshot(s));

  static Future<MerchantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MerchantRecord.fromSnapshot(s));

  static MerchantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MerchantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MerchantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MerchantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MerchantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MerchantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMerchantRecordData({
  DateTime? createdAt,
  DateTime? modifiedAt,
  String? merchantname,
  String? type,
  int? discount,
  LatLng? currentLocation,
  String? markerIcon,
  int? uid,
  String? image2,
  String? phone,
  String? description,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'merchantname': merchantname,
      'type': type,
      'discount': discount,
      'current_location': currentLocation,
      'marker_icon': markerIcon,
      'uid': uid,
      'image2': image2,
      'phone': phone,
      'description': description,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class MerchantRecordDocumentEquality implements Equality<MerchantRecord> {
  const MerchantRecordDocumentEquality();

  @override
  bool equals(MerchantRecord? e1, MerchantRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.merchantname == e2?.merchantname &&
        e1?.type == e2?.type &&
        e1?.discount == e2?.discount &&
        e1?.currentLocation == e2?.currentLocation &&
        e1?.markerIcon == e2?.markerIcon &&
        e1?.uid == e2?.uid &&
        e1?.image2 == e2?.image2 &&
        e1?.phone == e2?.phone &&
        e1?.description == e2?.description &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(MerchantRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.modifiedAt,
        e?.merchantname,
        e?.type,
        e?.discount,
        e?.currentLocation,
        e?.markerIcon,
        e?.uid,
        e?.image2,
        e?.phone,
        e?.description,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is MerchantRecord;
}
