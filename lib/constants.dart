import 'dart:math';

import 'package:flutter/widgets.dart';

/// This the MFi IAP testing.
const isIapTestingMode = false;

const kDebugPinCode = 745282;
const kDebugShortcutPinCode = 7415963;

const kDarkBlue = Color(0xFF001228);
const kSecondaryDarkBlue = Color(0xFF012e47);
final kSecondaryDarkBlue40 = kSecondaryDarkBlue.withOpacity(0.4);
final kSecondaryDarkBlue70 = kSecondaryDarkBlue.withOpacity(0.7);
const kMidToneBlue = Color(0xFF0083cb);
final kMidToneBlue85 = kMidToneBlue.withOpacity(0.85);
const kLightBlue = Color(0xFF2ac4f4);
final kLightBlue25 = kLightBlue.withOpacity(0.25);
const kRed = Color(0xFFFF0000);
const kYellow = Color(0xFFffd530);
const kWhite = Color(0xFFFFFFFF);

const kGSensorXColor = Color(0xFFFFFFFF);
const kGSensorYColor = kYellow;
const kGSensorZColor = kLightBlue;

const kLightGray = Color(0x88cccccc);
const kDividerColor = Color(0xFF284567);
const kAlexaBlue = Color(0xFF31c4f3);
const kAlexaBackgroundBlue = Color(0xFF0F2D47);
const kAlexaGray = Color(0xFF232F3E);

final kDisabledButtonTextColor = Color(0xFFFFFF).withOpacity(0.5);

final kTextColorPrimary = const Color(0xFFFFFF).withOpacity(1.0);
final kTextColorSecondary = const Color(0xFFFFFF).withOpacity(0.7);
final kTextColorTertiary = const Color(0xFFFFFF).withOpacity(0.55);

const kMainBackgroundColor = kDarkBlue;

const kBodyTextColor = Color(0xFFFFFFFF);

const kHeaderBackgroundColor = kSecondaryDarkBlue;
const kHeaderTextColor = Color(0xFFFFFFFF);
const kHeaderAccessoryColor = kMidToneBlue;

const kGradientColors = [
  Color(0xFF0083cb),
  Color(0xFF424cc4),
  Color(0xFF8314bd)
];

const kGradientAngleDeg = 45.0;
const kGradientAngleRadians = kGradientAngleDeg * (pi / 180.0);

const kMyNextbaseBlue = Color(0xFF3273dc);
const kMyNextbasePurple = Color(0xFF7957d5);

const kPrefHasFinishedFirstTimeUse = 'finished_first_time_use';
const kPrefProtectedLocalVideos = 'protected_local_videos';

const kScaleFactor = 1.1;

const kTextStyleSubhead1 = TextStyle(
  color: kWhite,
  fontSize: 16 * kScaleFactor,
);

final kTextStyleSubhead2 = TextStyle(
  color: kWhite.withOpacity(0.8),
  fontSize: 16 * kScaleFactor,
);

const kTextStyleSubhead3 = TextStyle(
  color: kLightBlue,
  fontSize: 16 * kScaleFactor,
);
const kTextStyleBody1 = TextStyle(
  color: kWhite,
  fontSize: 13 * kScaleFactor,
);

const String kNextbaseNewsPrivacyPolicyUrl =
    'https://legal.nextbase.com/en/privacy-policy';

const String kValidPhoneNumberRegex = r'^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$';
const String kValidPhoneVerificationCodeRegex = r'^[0-9]*$';
const String kValidNameRegex = r"^[a-zA-ZÀ-ž' ]*$";
const String kValidAddressPartRegex = r'^[a-zA-ZÀ-ž0-9:,\. ]*$';
const String kValidEmailRegex =
    r'^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

// AutoSync Preferences
const String kPrefAutoSyncEnabled = 'pref_auto_sync_incident_aware_enabled';
const String kPrefAutoSyncMyEmail = 'pref_auto_sync_my_email';
const String kPrefAutoSyncInsurersEmail = 'pref_auto_sync_insurers_email';
const String kPrefAutoSyncPolicyNumber = 'pref_auto_sync_policy_number';
const String kPrefAutoSyncNumberPlate = 'pref_auto_sync_number_plate';
const String kPrefAutoSyncPrivacyPolicyAccepted =
    'pref_auto_sync_privacy_policy_accepted';
const String kAutoSyncPrivacyPolicy =
    'https://legal.nextbase.com/en/privacy-policy';

/// comma separated list files to be processed by AutoSync
const String kPrefAutoSyncStack = 'pref_auto_sync_stack';
