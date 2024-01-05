//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <quick_transition/quick_transition_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) quick_transition_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "QuickTransitionPlugin");
  quick_transition_plugin_register_with_registrar(quick_transition_registrar);
}
