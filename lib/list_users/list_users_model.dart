import '/flutter_flow/flutter_flow_util.dart';
import 'list_users_widget.dart' show ListUsersWidget;
import 'package:flutter/material.dart';

class ListUsersModel extends FlutterFlowModel<ListUsersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
