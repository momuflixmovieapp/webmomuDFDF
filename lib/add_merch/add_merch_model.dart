import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_merch_widget.dart' show AddMerchWidget;
import 'package:flutter/material.dart';

class AddMerchModel extends FlutterFlowModel<AddMerchWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for merchName widget.
  FocusNode? merchNameFocusNode;
  TextEditingController? merchNameController;
  String? Function(BuildContext, String?)? merchNameControllerValidator;
  // State field(s) for citycurrentlocation widget.
  FocusNode? citycurrentlocationFocusNode;
  TextEditingController? citycurrentlocationController;
  String? Function(BuildContext, String?)?
      citycurrentlocationControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioController;
  String? Function(BuildContext, String?)? myBioControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MerchantRecord? createsMerchant;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    merchNameFocusNode?.dispose();
    merchNameController?.dispose();

    citycurrentlocationFocusNode?.dispose();
    citycurrentlocationController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    myBioFocusNode?.dispose();
    myBioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
