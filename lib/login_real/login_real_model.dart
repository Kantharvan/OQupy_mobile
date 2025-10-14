import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_real_widget.dart' show LoginRealWidget;
import 'package:flutter/material.dart';

class LoginRealModel extends FlutterFlowModel<LoginRealWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PhoneNumberInput widget.
  FocusNode? phoneNumberInputFocusNode;
  TextEditingController? phoneNumberInputTextController;
  String? Function(BuildContext, String?)?
      phoneNumberInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberInputFocusNode?.dispose();
    phoneNumberInputTextController?.dispose();
  }
}
