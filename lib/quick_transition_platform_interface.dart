import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'quick_transition_method_channel.dart';

abstract class QuickTransitionPlatform extends PlatformInterface {
  /// Constructs a QuickTransitionPlatform.
  QuickTransitionPlatform() : super(token: _token);

  static final Object _token = Object();

  static QuickTransitionPlatform _instance = MethodChannelQuickTransition();

  /// The default instance of [QuickTransitionPlatform] to use.
  ///
  /// Defaults to [MethodChannelQuickTransition].
  static QuickTransitionPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QuickTransitionPlatform] when
  /// they register themselves.
  static set instance(QuickTransitionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
