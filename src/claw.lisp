(claw:defwrapper (:claw-pipewire/wrapper
                  (:headers "pipewire/pipewire.h")
                  (:includes :pipewire-includes :spa-includes)
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu"
                             (:includes "include/x86_64-pc-linux-gnu/")))
                  (:persistent :claw-pipewire-bindings
                   :asd-path "../claw-pipewire-bindings.asd"
                   :bindings-path "../bindings/")
                  (:include-definitions "^(pw|PW)_\\w+"))
  :in-package :%pipewire
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :with-adapter (:dynamic
                 :path "lib/adapter.c")
  :symbolicate-names (:by-removing-prefixes "pw_" "PW_"))
