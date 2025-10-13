import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.numberFieldTextController ??= TextEditingController();
    _model.numberFieldFocusNode ??= FocusNode();
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 24.0, 40.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Skip',
                      options: FFButtonOptions(
                        height: 36.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x33FFFFFF),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'OQupy',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 48.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                        child: Text(
                          'Where Passion meets Space',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Color(0xCCFFFFFF),
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your mobile number',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      '+91 🇮🇳',
                                      '+1 🇺🇸',
                                      '+44 🇬🇧'
                                    ],
                                    onChanged: (val) => safeSetState(
                                        () => _model.dropDownValue = val),
                                    width: 80.0,
                                    height: 56.0,
                                    textStyle: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                    hintText: '+91',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                    fillColor: Color(0xFF1A1A1A),
                                    elevation: 0.0,
                                    borderColor: Color(0xFF333333),
                                    borderWidth: 1.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller:
                                          _model.numberFieldTextController,
                                      focusNode: _model.numberFieldFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Enter mobile number',
                                        hintStyle: GoogleFonts.poppins(
                                          color: Color(0x66FFFFFF),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16.0,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF333333),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF97316),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFF1A1A1A),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 16.0, 16.0),
                                      ),
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                      keyboardType: TextInputType.phone,
                                      validator: _model
                                          .numberFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Continue',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56.0,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF97316),
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.0,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                ),
                              ),
                              Text(
                                'OR',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFFF97316),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 56.0,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1A1A),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFF333333),
                                    width: 1.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 56.0,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1A1A),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFF333333),
                                    width: 1.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'G',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 24.0)),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ],
                  ),
                ),
                Text(
                  'By continuing, you agree to our Terms of Service and Privacy Policy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Color(0x66FFFFFF),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
