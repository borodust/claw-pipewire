#include "pipewire/pipewire.h"


void _wrapped_pw_registry_add_listener (struct pw_registry* p, struct spa_hook* h, struct pw_registry_events* e, void* user_data) {
  pw_registry_add_listener(p, h, e, user_data);
}
