import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for NumberField widget.
  FocusNode? numberFieldFocusNode;
  TextEditingController? numberFieldTextController;
  String? Function(BuildContext, String?)? numberFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numberFieldFocusNode?.dispose();
    numberFieldTextController?.dispose();
  }
}
