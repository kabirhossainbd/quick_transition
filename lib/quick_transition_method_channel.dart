import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'quick_transition_platform_interface.dart';

/// An implementation of [QuickTransitionPlatform] that uses method channels.
class MethodChannelQuickTransition extends QuickTransitionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('quick_transition');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
