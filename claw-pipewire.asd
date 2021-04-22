(asdf:defsystem :claw-pipewire
  :description "Thin bindings over PipeWire"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-pipewire-bindings))


(asdf:defsystem :claw-pipewire/wrapper
  :description "Bindings generator for PipeWire"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :uiop :cffi :claw-utils :claw)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :pipewire-includes :pathname "lib/pipewire/src/")
               (:module :spa-includes :pathname "lib/pipewire/spa/include/")
               (:module :custom-includes :pathname "include/")))
