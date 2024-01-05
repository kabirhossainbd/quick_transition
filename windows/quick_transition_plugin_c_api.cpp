#include "include/quick_transition/quick_transition_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "quick_transition_plugin.h"

void QuickTransitionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  quick_transition::QuickTransitionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
