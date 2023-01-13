import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          params: parameterData.params,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/X_-_21.png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get params => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Podcast_page_audio': (data) async => ParameterData(
        allParams: {
          'podcast': await getDocumentParameter<PodcastsRecord>(
              data, 'podcast', PodcastsRecord.serializer),
        },
      ),
  'Restore_password': ParameterData.none(),
  'sign_up': ParameterData.none(),
  'Mindfulness_annual': ParameterData.none(),
  'Mindfulness_monthly': ParameterData.none(),
  'Mindfulness_monthly_content': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'audio': await getDocumentParameter<AudioContentRecord>(
              data, 'audio', AudioContentRecord.serializer),
          'video': await getDocumentParameter<VideoContentRecord>(
              data, 'video', VideoContentRecord.serializer),
          'affirmation': await getDocumentParameter<AffirmationContentRecord>(
              data, 'affirmation', AffirmationContentRecord.serializer),
        },
      ),
  'Mindfulness_blocked_content': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
        },
      ),
  'Mindfulness_page_audio': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'audio': await getDocumentParameter<AudioContentRecord>(
              data, 'audio', AudioContentRecord.serializer),
          'video': await getDocumentParameter<VideoContentRecord>(
              data, 'video', VideoContentRecord.serializer),
          'affirmation': await getDocumentParameter<AffirmationContentRecord>(
              data, 'affirmation', AffirmationContentRecord.serializer),
        },
      ),
  'Mindfulness_page_video': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
        },
      ),
  'Mindfulness_affirmations_content': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'affirmation': await getDocumentParameter<AffirmationContentRecord>(
              data, 'affirmation', AffirmationContentRecord.serializer),
        },
      ),
  'Mindfulness_affirmation_page': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'affirmation': await getDocumentParameter<AffirmationContentRecord>(
              data, 'affirmation', AffirmationContentRecord.serializer),
        },
      ),
  'Mindfulness_moments_content': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
        },
      ),
  'Mindfulness_moments_page': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'moments': await getDocumentParameter<MindfullMomentsRecord>(
              data, 'moments', MindfullMomentsRecord.serializer),
          'audio': await getDocumentParameter<AudioContentRecord>(
              data, 'audio', AudioContentRecord.serializer),
        },
      ),
  'Main': ParameterData.none(),
  'Podcast': ParameterData.none(),
  'Mindfulness': ParameterData.none(),
  'Meditation': (data) async => ParameterData(
        allParams: {
          'meditation': getParameter<DocumentReference>(data, 'meditation'),
        },
      ),
  'Meditation_page_blocked': (data) async => ParameterData(
        allParams: {
          'meditation': await getDocumentParameter<MeditationRecord>(
              data, 'meditation', MeditationRecord.serializer),
        },
      ),
  'Meditation_page': (data) async => ParameterData(
        allParams: {
          'meditation': await getDocumentParameter<MeditationRecord>(
              data, 'meditation', MeditationRecord.serializer),
        },
      ),
  'my_subscriptions': (data) async => ParameterData(
        allParams: {
          'user': await getDocumentParameter<UsersRecord>(
              data, 'user', UsersRecord.serializer),
        },
      ),
  'settings': (data) async => ParameterData(
        allParams: {
          'user': await getDocumentParameter<UsersRecord>(
              data, 'user', UsersRecord.serializer),
        },
      ),
  'paywall': (data) async => ParameterData(
        allParams: {
          'mfs': await getDocumentParameter<MonthlyMindfulnessRecord>(
              data, 'mfs', MonthlyMindfulnessRecord.serializer),
          'meditaion': await getDocumentParameter<MeditationRecord>(
              data, 'meditaion', MeditationRecord.serializer),
        },
      ),
  'on_boarding': ParameterData.none(),
  'Meditation_purchased': (data) async => ParameterData(
        allParams: {
          'meditation': getParameter<DocumentReference>(data, 'meditation'),
        },
      ),
  'profile': ParameterData.none(),
  'login': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
