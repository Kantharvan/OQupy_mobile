import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_model.dart';
export 'otp_model.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  static String routeName = 'OTP';
  static String routePath = '/otp';

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late OtpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpModel());

    _model.otpInputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color(0x1AFF6B00), Colors.black],
                stops: [0.0, 0.08, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 100.0, 20.0, 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Text(
                      'OQUPY',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color(0xFFFF6B00),
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                    child: Text(
                      'Enter the code sent to your phone',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sen(
                        color: Color(0xFFE0E0E0),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                    child: Text(
                      '+91 ••••••1234',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Color(0xFF888888),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      constraints: BoxConstraints(
                        maxWidth: 420.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF111111),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 24.0,
                            color: Color(0x1AFF6B00),
                            offset: Offset(
                              0.0,
                              8.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1A1A),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color: Color(0x0DFF6B00),
                                      offset: Offset(
                                        0.0,
                                        4.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          'Verify OTP',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFFB0B0B0),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                      PinCodeTextField(
                                        autoDisposeControllers: false,
                                        appContext: context,
                                        length: 6,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        enableActiveFill: false,
                                        autoFocus: true,
                                        focusNode: _model.otpInputFocusNode,
                                        enablePinAutofill: false,
                                        errorTextSpace: 16.0,
                                        showCursor: true,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        obscureText: false,
                                        hintCharacter: '*',
                                        keyboardType: TextInputType.number,
                                        pinTheme: PinTheme(
                                          fieldHeight: 30.0,
                                          fieldWidth: 30.0,
                                          borderWidth: 0.5,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                          shape: PinCodeFieldShape.circle,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          inactiveColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          selectedColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                        controller: _model.otpInput,
                                        onChanged: (_) {},
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: _model.otpInputValidator
                                            .asValidator(context),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          'Enter the 6-digit code we sent you.',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFF777777),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 13.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                final smsCodeVal = _model.otpInput!.text;
                                if (smsCodeVal.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Enter SMS verification code.'),
                                    ),
                                  );
                                  return;
                                }
                                final phoneVerifiedUser =
                                    await authManager.verifySmsCode(
                                  context: context,
                                  smsCode: smsCodeVal,
                                );
                                if (phoneVerifiedUser == null) {
                                  return;
                                }

                                context.goNamedAuth(
                                    DummylandingpageWidget.routeName,
                                    context.mounted);
                              },
                              text: 'Verify OTP',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 52.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFFF6B00),
                                textStyle: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Didn\'t receive the code?',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xFFAAAAAA),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                    Text(
                                      'Resend OTP',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xFFFF6B00),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                                Text(
                                  'Resend available in 30s',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Color(0xFF777777),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Text(
                              '← Back to Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Color(0xFFFF6B00),
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
