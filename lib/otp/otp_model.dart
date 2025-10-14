import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'otp_widget.dart' show OtpWidget;
import 'package:flutter/material.dart';

class OtpModel extends FlutterFlowModel<OtpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for otpInput widget.
  TextEditingController? otpInput;
  FocusNode? otpInputFocusNode;
  String? Function(BuildContext, String?)? otpInputValidator;

  @override
  void initState(BuildContext context) {
    otpInput = TextEditingController();
  }

  @override
  void dispose() {
    otpInputFocusNode?.dispose();
    otpInput?.dispose();
  }
}
