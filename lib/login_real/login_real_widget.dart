import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_real_model.dart';
export 'login_real_model.dart';

class LoginRealWidget extends StatefulWidget {
  const LoginRealWidget({super.key});

  static String routeName = 'LoginReal';
  static String routePath = '/loginReal';

  @override
  State<LoginRealWidget> createState() => _LoginRealWidgetState();
}

class _LoginRealWidgetState extends State<LoginRealWidget> {
  late LoginRealModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginRealModel());

    _model.phoneNumberInputTextController ??= TextEditingController();
    _model.phoneNumberInputFocusNode ??= FocusNode();

    authManager.handlePhoneAuthStateChanges(context);
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
              color: Colors.black,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.1,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -0.3),
                      child: Container(
                        width: 600.0,
                        height: 600.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x1AFF6B00), Color(0x00FF6B00)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 100.0, 20.0, 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 20.0,
                                    color: Color(0x40FF6B00),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                  )
                                ],
                              ),
                              child: Text(
                                'OQUPY',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFFFF6B00),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                            Text(
                              'The floor is yours.',
                              style: GoogleFonts.inter(
                                color: Color(0xFFE0E0E0),
                                fontSize: 16.0,
                                height: 1.5,
                              ),
                            ),
                          ].divide(SizedBox(height: 10.0)),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
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
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Sign in to continue',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.inter(
                                                color: Color(0xFFB0B0B0),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 70.0,
                                                      height: 52.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF222222),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            '+91',
                                                            style: GoogleFonts
                                                                .inter(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 15.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextFormField(
                                                        controller: _model
                                                            .phoneNumberInputTextController,
                                                        focusNode: _model
                                                            .phoneNumberInputFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'Enter your phone number',
                                                          hintStyle:
                                                              GoogleFonts.inter(
                                                            color: Color(
                                                                0xFF888888),
                                                            fontSize: 15.0,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF222222),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFFFF6B00),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0xFF1C1C1C),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      16.0),
                                                        ),
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                        ),
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        cursorColor:
                                                            Color(0xFFFF6B00),
                                                        validator: _model
                                                            .phoneNumberInputTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 0.0)),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final phoneNumberVal = _model
                                                    .phoneNumberInputTextController
                                                    .text;
                                                if (phoneNumberVal.isEmpty ||
                                                    !phoneNumberVal
                                                        .startsWith('+')) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                          'Phone Number is required and has to start with +.'),
                                                    ),
                                                  );
                                                  return;
                                                }
                                                await authManager
                                                    .beginPhoneAuth(
                                                  context: context,
                                                  phoneNumber: phoneNumberVal,
                                                  onCodeSent: (context) async {
                                                    context.goNamedAuth(
                                                      OtpWidget.routeName,
                                                      context.mounted,
                                                      ignoreRedirect: true,
                                                    );
                                                  },
                                                );
                                              },
                                              text: 'Send OTP',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 52.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
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
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF222222),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Text(
                                          'OR',
                                          style: GoogleFonts.inter(
                                            color: Color(0xFF777777),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF222222),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Continue with Google',
                                    icon: Icon(
                                      Icons.google,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 52.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      iconColor: Color(0xFF4285F4),
                                      color: Colors.white,
                                      textStyle: GoogleFonts.inter(
                                        color: Color(0xFF333333),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.0,
                                      ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 40.0)),
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
