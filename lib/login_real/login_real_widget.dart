import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title
                  Text(
                    'OQUPY',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFFFF6B00),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The floor is yours.',
                    style: GoogleFonts.inter(
                      color: const Color(0xFFE0E0E0),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Card container
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxWidth: 420),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF111111),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in to continue',
                          style: GoogleFonts.inter(
                            color: const Color(0xFFB0B0B0),
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Phone input row
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 52,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xFF222222),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '+91',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextFormField(
                                controller:
                                    _model.phoneNumberInputTextController,
                                focusNode: _model.phoneNumberInputFocusNode,
                                decoration: InputDecoration(
                                  hintText: 'Enter your phone number',
                                  hintStyle: GoogleFonts.inter(
                                    color: const Color(0xFF888888),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFF1C1C1C),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF222222),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFFF6B00),
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                keyboardType: TextInputType.phone,
                                cursorColor: const Color(0xFFFF6B00),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Send OTP button
                        FFButtonWidget(
                          onPressed: () async {
                            final phoneNumberVal =
                                _model.phoneNumberInputTextController.text;
                            if (phoneNumberVal.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Phone number required')),
                              );
                              return;
                            }
                            await authManager.beginPhoneAuth(
                              context: context,
                              phoneNumber: '+91$phoneNumberVal',
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
                            height: 52,
                            color: const Color(0xFFFF6B00),
                            textStyle: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // OR divider
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(color: Color(0xFF222222)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'OR',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF777777),
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(color: Color(0xFF222222)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Google button
                        FFButtonWidget(
                          onPressed: () {
                            print('Continue with Google pressed');
                          },
                          text: 'Continue with Google',
                          icon: const FaIcon(
                            FontAwesomeIcons.google,
                            color: Color(0xFF4285F4),
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 52,
                            color: Colors.white,
                            textStyle: GoogleFonts.inter(
                              color: const Color(0xFF333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            borderSide: const BorderSide(
                              color: Color(0xFFE0E0E0),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
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
