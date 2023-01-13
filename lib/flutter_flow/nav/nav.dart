import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  MindfulKidsFirebaseUser? initialUser;
  MindfulKidsFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(MindfulKidsFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? OnBoardingWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? OnBoardingWidget() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'Podcast_page_audio',
              path: 'podcastPageAudio',
              requireAuth: true,
              asyncParams: {
                'podcast': getDoc(['podcasts'], PodcastsRecord.serializer),
              },
              builder: (context, params) => PodcastPageAudioWidget(
                podcast: params.getParam('podcast', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Restore_password',
              path: 'restorePassword',
              requireAuth: true,
              builder: (context, params) => RestorePasswordWidget(),
            ),
            FFRoute(
              name: 'sign_up',
              path: 'signUp',
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: 'Mindfulness_annual',
              path: 'mindfulnessAnnual',
              requireAuth: true,
              builder: (context, params) => MindfulnessAnnualWidget(),
            ),
            FFRoute(
              name: 'Mindfulness_monthly',
              path: 'mindfulnessMonthly',
              requireAuth: true,
              builder: (context, params) => MindfulnessMonthlyWidget(),
            ),
            FFRoute(
              name: 'Mindfulness_monthly_content',
              path: 'mindfulnessMonthlyContent',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'audio':
                    getDoc(['audio_content'], AudioContentRecord.serializer),
                'video':
                    getDoc(['video_content'], VideoContentRecord.serializer),
                'affirmation': getDoc(['affirmation_content'],
                    AffirmationContentRecord.serializer),
              },
              builder: (context, params) => MindfulnessMonthlyContentWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                audio: params.getParam('audio', ParamType.Document),
                video: params.getParam('video', ParamType.Document),
                affirmation: params.getParam('affirmation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_blocked_content',
              path: 'mindfulnessBlockedContent',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
              },
              builder: (context, params) => MindfulnessBlockedContentWidget(
                mfs: params.getParam('mfs', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_page_audio',
              path: 'mindfulnessPageAudio',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'audio':
                    getDoc(['audio_content'], AudioContentRecord.serializer),
                'video':
                    getDoc(['video_content'], VideoContentRecord.serializer),
                'affirmation': getDoc(['affirmation_content'],
                    AffirmationContentRecord.serializer),
              },
              builder: (context, params) => MindfulnessPageAudioWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                audio: params.getParam('audio', ParamType.Document),
                video: params.getParam('video', ParamType.Document),
                affirmation: params.getParam('affirmation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_page_video',
              path: 'mindfulnessPageVideo',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
              },
              builder: (context, params) => MindfulnessPageVideoWidget(
                mfs: params.getParam('mfs', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_affirmations_content',
              path: 'mindfulnessAffirmationsContent',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'affirmation': getDoc(['affirmation_content'],
                    AffirmationContentRecord.serializer),
              },
              builder: (context, params) =>
                  MindfulnessAffirmationsContentWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                affirmation: params.getParam('affirmation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_affirmation_page',
              path: 'mindfulnessAffirmationPage',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'affirmation': getDoc(['affirmation_content'],
                    AffirmationContentRecord.serializer),
              },
              builder: (context, params) => MindfulnessAffirmationPageWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                affirmation: params.getParam('affirmation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_moments_content',
              path: 'mindfulnessMomentsContent',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
              },
              builder: (context, params) => MindfulnessMomentsContentWidget(
                mfs: params.getParam('mfs', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Mindfulness_moments_page',
              path: 'mindfulnessMomentsPage',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'moments': getDoc(
                    ['mindfull_moments'], MindfullMomentsRecord.serializer),
                'audio':
                    getDoc(['audio_content'], AudioContentRecord.serializer),
              },
              builder: (context, params) => MindfulnessMomentsPageWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                moments: params.getParam('moments', ParamType.Document),
                audio: params.getParam('audio', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Main',
              path: 'main',
              requireAuth: true,
              builder: (context, params) => MainWidget(),
            ),
            FFRoute(
              name: 'Podcast',
              path: 'podcast',
              requireAuth: true,
              builder: (context, params) => PodcastWidget(),
            ),
            FFRoute(
              name: 'Mindfulness',
              path: 'mindfulness',
              requireAuth: true,
              builder: (context, params) => MindfulnessWidget(),
            ),
            FFRoute(
              name: 'Meditation',
              path: 'meditation',
              requireAuth: true,
              builder: (context, params) => MeditationWidget(
                meditation: params.getParam('meditation',
                    ParamType.DocumentReference, false, ['meditation']),
              ),
            ),
            FFRoute(
              name: 'Meditation_page_blocked',
              path: 'meditationPageBlocked',
              requireAuth: true,
              asyncParams: {
                'meditation':
                    getDoc(['meditation'], MeditationRecord.serializer),
              },
              builder: (context, params) => MeditationPageBlockedWidget(
                meditation: params.getParam('meditation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Meditation_page',
              path: 'meditationPage',
              requireAuth: true,
              asyncParams: {
                'meditation':
                    getDoc(['meditation'], MeditationRecord.serializer),
              },
              builder: (context, params) => MeditationPageWidget(
                meditation: params.getParam('meditation', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'my_subscriptions',
              path: 'mySubscriptions',
              requireAuth: true,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.serializer),
              },
              builder: (context, params) => MySubscriptionsWidget(
                user: params.getParam('user', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'settings',
              path: 'settings',
              requireAuth: true,
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.serializer),
              },
              builder: (context, params) => SettingsWidget(
                user: params.getParam('user', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'paywall',
              path: 'paywall',
              requireAuth: true,
              asyncParams: {
                'mfs': getDoc(['Monthly_mindfulness'],
                    MonthlyMindfulnessRecord.serializer),
                'meditaion':
                    getDoc(['meditation'], MeditationRecord.serializer),
              },
              builder: (context, params) => PaywallWidget(
                mfs: params.getParam('mfs', ParamType.Document),
                meditaion: params.getParam('meditaion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'on_boarding',
              path: 'onBoarding',
              requireAuth: true,
              builder: (context, params) => OnBoardingWidget(),
            ),
            FFRoute(
              name: 'Meditation_purchased',
              path: 'meditationPurchased',
              requireAuth: true,
              builder: (context, params) => MeditationPurchasedWidget(
                meditation: params.getParam('meditation',
                    ParamType.DocumentReference, false, ['meditation']),
              ),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              requireAuth: true,
              builder: (context, params) => ProfileWidget(),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/X_-_21.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
