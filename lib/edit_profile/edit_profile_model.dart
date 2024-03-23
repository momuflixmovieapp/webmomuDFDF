import '/components/edit_user_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editUser component.
  late EditUserModel editUserModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    editUserModel = createModel(context, () => EditUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    editUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
