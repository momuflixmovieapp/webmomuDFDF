// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    LatLng? address,
    LatLng? pinLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _pinLocation = pinLocation,
        super(firestoreUtilData);

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  set address(LatLng? val) => _address = val;
  bool hasAddress() => _address != null;

  // "PinLocation" field.
  LatLng? _pinLocation;
  LatLng? get pinLocation => _pinLocation;
  set pinLocation(LatLng? val) => _pinLocation = val;
  bool hasPinLocation() => _pinLocation != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        address: data['address'] as LatLng?,
        pinLocation: data['PinLocation'] as LatLng?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'PinLocation': _pinLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.LatLng,
        ),
        'PinLocation': serializeParam(
          _pinLocation,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        address: deserializeParam(
          data['address'],
          ParamType.LatLng,
          false,
        ),
        pinLocation: deserializeParam(
          data['PinLocation'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        address == other.address &&
        pinLocation == other.pinLocation;
  }

  @override
  int get hashCode => const ListEquality().hash([address, pinLocation]);
}

AddressStruct createAddressStruct({
  LatLng? address,
  LatLng? pinLocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      address: address,
      pinLocation: pinLocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? addressStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addressStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? addressStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addressStruct == null) {
    return;
  }
  if (addressStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && addressStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressStructData =
      getAddressFirestoreData(addressStruct, forFieldValue);
  final nestedData =
      addressStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = addressStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? addressStruct, [
  bool forFieldValue = false,
]) {
  if (addressStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addressStruct.toMap());

  // Add any Firestore field values
  addressStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addressStructs,
) =>
    addressStructs?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
