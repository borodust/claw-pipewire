;; Generated by :claw at 2021-04-22T09:48:30.795437+03:00
(asdf:defsystem #:claw-pipewire-bindings
  :defsystem-depends-on (:trivial-features)
  :depends-on (:uiop :cffi)
  :components
  ((:file "bindings/x86_64-pc-linux-gnu" :if-feature
    (:and :x86-64 :linux))))