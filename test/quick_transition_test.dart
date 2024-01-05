import 'package:flutter_test/flutter_test.dart';
import 'package:quick_transition/quick_transition.dart';
import 'package:quick_transition/quick_transition_platform_interface.dart';
import 'package:quick_transition/quick_transition_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockQuickTransitionPlatform 
    with MockPlatformInterfaceMixin
    implements QuickTransitionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final QuickTransitionPlatform initialPlatform = QuickTransitionPlatform.instance;

  test('$MethodChannelQuickTransition is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelQuickTransition>());
  });

  test('getPlatformVersion', () async {
    QuickTransition quickTransitionPlugin = QuickTransition();
    MockQuickTransitionPlatform fakePlatform = MockQuickTransitionPlatform();
    QuickTransitionPlatform.instance = fakePlatform;
  
    expect(await quickTransitionPlugin.getPlatformVersion(), '42');
  });
}
