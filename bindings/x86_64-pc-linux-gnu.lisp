(uiop:define-package :%pipewire (:use))
(uiop:define-package :claw-pipewire-bindings~pristine (:use :cl))
(common-lisp:in-package :claw-pipewire-bindings~pristine)

(defparameter %pipewire::+api-version+ "0.3")

(defparameter %pipewire::+buffers-flag-dynamic+ 4)

(defparameter %pipewire::+buffers-flag-none+ 0)

(defparameter %pipewire::+buffers-flag-no-mem+ 1)

(defparameter %pipewire::+buffers-flag-shared+ 2)

(defparameter %pipewire::+client-change-mask-all+ 1)

(defparameter %pipewire::+client-change-mask-props+ 1)

(defparameter %pipewire::+client-event-info+ 0)

(defparameter %pipewire::+client-event-num+ 2)

(defparameter %pipewire::+client-event-permissions+ 1)

(defparameter %pipewire::+client-method-add-listener+ 0)

(defparameter %pipewire::+client-method-error+ 1)

(defparameter %pipewire::+client-method-get-permissions+ 3)

(defparameter %pipewire::+client-method-num+ 5)

(defparameter %pipewire::+client-method-update-permissions+ 4)

(defparameter %pipewire::+client-method-update-properties+ 2)

(defparameter %pipewire::+core-change-mask-all+ 1)

(defparameter %pipewire::+core-change-mask-props+ 1)

(defparameter %pipewire::+core-event-add-mem+ 6)

(defparameter %pipewire::+core-event-bound-id+ 5)

(defparameter %pipewire::+core-event-done+ 1)

(defparameter %pipewire::+core-event-error+ 3)

(defparameter %pipewire::+core-event-info+ 0)

(defparameter %pipewire::+core-event-num+ 8)

(defparameter %pipewire::+core-event-ping+ 2)

(defparameter %pipewire::+core-event-remove-id+ 4)

(defparameter %pipewire::+core-event-remove-mem+ 7)

(defparameter %pipewire::+core-method-add-listener+ 0)

(defparameter %pipewire::+core-method-create-object+ 6)

(defparameter %pipewire::+core-method-destroy+ 7)

(defparameter %pipewire::+core-method-error+ 4)

(defparameter %pipewire::+core-method-get-registry+ 5)

(defparameter %pipewire::+core-method-hello+ 1)

(defparameter %pipewire::+core-method-num+ 8)

(defparameter %pipewire::+core-method-pong+ 3)

(defparameter %pipewire::+core-method-sync+ 2)

(defparameter %pipewire::+default-remote+ "pipewire-0")

(defparameter %pipewire::+device-change-mask-all+ 3)

(defparameter %pipewire::+device-change-mask-params+ 2)

(defparameter %pipewire::+device-change-mask-props+ 1)

(defparameter %pipewire::+device-event-info+ 0)

(defparameter %pipewire::+device-event-num+ 2)

(defparameter %pipewire::+device-event-param+ 1)

(defparameter %pipewire::+device-method-add-listener+ 0)

(defparameter %pipewire::+device-method-enum-params+ 2)

(defparameter %pipewire::+device-method-num+ 4)

(defparameter %pipewire::+device-method-set-param+ 3)

(defparameter %pipewire::+device-method-subscribe-params+ 1)

(defparameter %pipewire::+direction-input+ 0)

(defparameter %pipewire::+direction-output+ 1)

(defparameter %pipewire::+factory-change-mask-all+ 1)

(defparameter %pipewire::+factory-change-mask-props+ 1)

(defparameter %pipewire::+factory-event-info+ 0)

(defparameter %pipewire::+factory-event-num+ 1)

(defparameter %pipewire::+factory-method-add-listener+ 0)

(defparameter %pipewire::+factory-method-num+ 1)

(defparameter %pipewire::+id-any+ 4294967295)

(defparameter %pipewire::+id-client+ 1)

(defparameter %pipewire::+id-core+ 0)

(defparameter %pipewire::+key-access+ "pipewire.access")

(defparameter %pipewire::+key-app-icon+ "application.icon")

(defparameter %pipewire::+key-app-icon-name+ "application.icon-name")

(defparameter %pipewire::+key-app-id+ "application.id")

(defparameter %pipewire::+key-app-language+ "application.language")

(defparameter %pipewire::+key-app-name+ "application.name")

(defparameter %pipewire::+key-app-process-binary+ "application.process.binary")

(defparameter %pipewire::+key-app-process-host+ "application.process.host")

(defparameter %pipewire::+key-app-process-id+ "application.process.id")

(defparameter %pipewire::+key-app-process-machine-id+ "application.process.machine-id")

(defparameter %pipewire::+key-app-process-session-id+ "application.process.session-id")

(defparameter %pipewire::+key-app-process-user+ "application.process.user")

(defparameter %pipewire::+key-app-version+ "application.version")

(defparameter %pipewire::+key-audio-channel+ "audio.channel")

(defparameter %pipewire::+key-audio-channels+ "audio.channels")

(defparameter %pipewire::+key-audio-format+ "audio.format")

(defparameter %pipewire::+key-audio-rate+ "audio.samplerate")

(defparameter %pipewire::+key-client-access+ "pipewire.client.access")

(defparameter %pipewire::+key-client-api+ "client.api")

(defparameter %pipewire::+key-client-id+ "client.id")

(defparameter %pipewire::+key-client-name+ "client.name")

(defparameter %pipewire::+key-config-name+ "config.name")

(defparameter %pipewire::+key-config-prefix+ "config.prefix")

(defparameter %pipewire::+key-context-profile-modules+ "context.profile.modules")

(defparameter %pipewire::+key-core-daemon+ "core.daemon")

(defparameter %pipewire::+key-core-id+ "core.id")

(defparameter %pipewire::+key-core-monitors+ "core.monitors")

(defparameter %pipewire::+key-core-name+ "core.name")

(defparameter %pipewire::+key-core-version+ "core.version")

(defparameter %pipewire::+key-cpu-cores+ "cpu.cores")

(defparameter %pipewire::+key-cpu-max-align+ "cpu.max-align")

(defparameter %pipewire::+key-device-api+ "device.api")

(defparameter %pipewire::+key-device-bus+ "device.bus")

(defparameter %pipewire::+key-device-bus-path+ "device.bus-path")

(defparameter %pipewire::+key-device-cache-params+ "device.cache-params")

(defparameter %pipewire::+key-device-class+ "device.class")

(defparameter %pipewire::+key-device-description+ "device.description")

(defparameter %pipewire::+key-device-form-factor+ "device.form-factor")

(defparameter %pipewire::+key-device-icon+ "device.icon")

(defparameter %pipewire::+key-device-icon-name+ "device.icon-name")

(defparameter %pipewire::+key-device-id+ "device.id")

(defparameter %pipewire::+key-device-intended-roles+ "device.intended-roles")

(defparameter %pipewire::+key-device-name+ "device.name")

(defparameter %pipewire::+key-device-nick+ "device.nick")

(defparameter %pipewire::+key-device-plugged+ "device.plugged")

(defparameter %pipewire::+key-device-product-id+ "device.product.id")

(defparameter %pipewire::+key-device-product-name+ "device.product.name")

(defparameter %pipewire::+key-device-serial+ "device.serial")

(defparameter %pipewire::+key-device-string+ "device.string")

(defparameter %pipewire::+key-device-subsystem+ "device.subsystem")

(defparameter %pipewire::+key-device-vendor-id+ "device.vendor.id")

(defparameter %pipewire::+key-device-vendor-name+ "device.vendor.name")

(defparameter %pipewire::+key-factory-id+ "factory.id")

(defparameter %pipewire::+key-factory-name+ "factory.name")

(defparameter %pipewire::+key-factory-type-name+ "factory.type.name")

(defparameter %pipewire::+key-factory-type-version+ "factory.type.version")

(defparameter %pipewire::+key-factory-usage+ "factory.usage")

(defparameter %pipewire::+key-format-dsp+ "format.dsp")

(defparameter %pipewire::+key-host-name+ "context.host-name")

(defparameter %pipewire::+key-library-name-dbus+ "library.name.dbus")

(defparameter %pipewire::+key-library-name-loop+ "library.name.loop")

(defparameter %pipewire::+key-library-name-system+ "library.name.system")

(defparameter %pipewire::+key-link-feedback+ "link.feedback")

(defparameter %pipewire::+key-link-id+ "link.id")

(defparameter %pipewire::+key-link-input-node+ "link.input.node")

(defparameter %pipewire::+key-link-input-port+ "link.input.port")

(defparameter %pipewire::+key-link-output-node+ "link.output.node")

(defparameter %pipewire::+key-link-output-port+ "link.output.port")

(defparameter %pipewire::+key-link-passive+ "link.passive")

(defparameter %pipewire::+key-media-artist+ "media.artist")

(defparameter %pipewire::+key-media-category+ "media.category")

(defparameter %pipewire::+key-media-class+ "media.class")

(defparameter %pipewire::+key-media-comment+ "media.comment")

(defparameter %pipewire::+key-media-copyright+ "media.copyright")

(defparameter %pipewire::+key-media-date+ "media.date")

(defparameter %pipewire::+key-media-filename+ "media.filename")

(defparameter %pipewire::+key-media-format+ "media.format")

(defparameter %pipewire::+key-media-icon+ "media.icon")

(defparameter %pipewire::+key-media-icon-name+ "media.icon-name")

(defparameter %pipewire::+key-media-language+ "media.language")

(defparameter %pipewire::+key-media-name+ "media.name")

(defparameter %pipewire::+key-media-role+ "media.role")

(defparameter %pipewire::+key-media-software+ "media.software")

(defparameter %pipewire::+key-media-title+ "media.title")

(defparameter %pipewire::+key-media-type+ "media.type")

(defparameter %pipewire::+key-module-author+ "module.author")

(defparameter %pipewire::+key-module-description+ "module.description")

(defparameter %pipewire::+key-module-id+ "module.id")

(defparameter %pipewire::+key-module-name+ "module.name")

(defparameter %pipewire::+key-module-usage+ "module.usage")

(defparameter %pipewire::+key-module-version+ "module.version")

(defparameter %pipewire::+key-node-always-process+ "node.always-process")

(defparameter %pipewire::+key-node-autoconnect+ "node.autoconnect")

(defparameter %pipewire::+key-node-cache-params+ "node.cache-params")

(defparameter %pipewire::+key-node-description+ "node.description")

(defparameter %pipewire::+key-node-dont-reconnect+ "node.dont-reconnect")

(defparameter %pipewire::+key-node-driver+ "node.driver")

(defparameter %pipewire::+key-node-exclusive+ "node.exclusive")

(defparameter %pipewire::+key-node-group+ "node.group")

(defparameter %pipewire::+key-node-id+ "node.id")

(defparameter %pipewire::+key-node-latency+ "node.latency")

(defparameter %pipewire::+key-node-max-latency+ "node.max-latency")

(defparameter %pipewire::+key-node-name+ "node.name")

(defparameter %pipewire::+key-node-nick+ "node.nick")

(defparameter %pipewire::+key-node-pause-on-idle+ "node.pause-on-idle")

(defparameter %pipewire::+key-node-plugged+ "node.plugged")

(defparameter %pipewire::+key-node-session+ "node.session")

(defparameter %pipewire::+key-node-stream+ "node.stream")

(defparameter %pipewire::+key-node-target+ "node.target")

(defparameter %pipewire::+key-object-id+ "object.id")

(defparameter %pipewire::+key-object-linger+ "object.linger")

(defparameter %pipewire::+key-object-path+ "object.path")

(defparameter %pipewire::+key-port-alias+ "port.alias")

(defparameter %pipewire::+key-port-cache-params+ "port.cache-params")

(defparameter %pipewire::+key-port-control+ "port.control")

(defparameter %pipewire::+key-port-direction+ "port.direction")

(defparameter %pipewire::+key-port-extra+ "port.extra")

(defparameter %pipewire::+key-port-id+ "port.id")

(defparameter %pipewire::+key-port-monitor+ "port.monitor")

(defparameter %pipewire::+key-port-name+ "port.name")

(defparameter %pipewire::+key-port-physical+ "port.physical")

(defparameter %pipewire::+key-port-terminal+ "port.terminal")

(defparameter %pipewire::+key-priority-driver+ "priority.driver")

(defparameter %pipewire::+key-priority-session+ "priority.session")

(defparameter %pipewire::+key-protocol+ "pipewire.protocol")

(defparameter %pipewire::+key-remote-intention+ "remote.intention")

(defparameter %pipewire::+key-remote-name+ "remote.name")

(defparameter %pipewire::+key-sec-gid+ "pipewire.sec.gid")

(defparameter %pipewire::+key-sec-label+ "pipewire.sec.label")

(defparameter %pipewire::+key-sec-pid+ "pipewire.sec.pid")

(defparameter %pipewire::+key-sec-uid+ "pipewire.sec.uid")

(defparameter %pipewire::+key-stream-capture-sink+ "stream.capture.sink")

(defparameter %pipewire::+key-stream-dont-remix+ "stream.dont-remix")

(defparameter %pipewire::+key-stream-is-live+ "stream.is-live")

(defparameter %pipewire::+key-stream-latency-max+ "stream.latency.max")

(defparameter %pipewire::+key-stream-latency-min+ "stream.latency.min")

(defparameter %pipewire::+key-stream-monitor+ "stream.monitor")

(defparameter %pipewire::+key-user-name+ "context.user-name")

(defparameter %pipewire::+key-video-format+ "video.format")

(defparameter %pipewire::+key-video-rate+ "video.framerate")

(defparameter %pipewire::+key-video-size+ "video.size")

(defparameter %pipewire::+key-window-x11-display+ "window.x11.display")

(defparameter %pipewire::+link-change-mask-all+ 7)

(defparameter %pipewire::+link-change-mask-format+ 2)

(defparameter %pipewire::+link-change-mask-props+ 4)

(defparameter %pipewire::+link-change-mask-state+ 1)

(defparameter %pipewire::+link-event-info+ 0)

(defparameter %pipewire::+link-event-num+ 1)

(defparameter %pipewire::+link-method-add-listener+ 0)

(defparameter %pipewire::+link-method-num+ 1)

(defparameter %pipewire::+major+ 0)

(defparameter %pipewire::+map-range-init+ nil)

(defparameter %pipewire::+micro+ 25)

(defparameter %pipewire::+minor+ 3)

(defparameter %pipewire::+module-change-mask-all+ 1)

(defparameter %pipewire::+module-change-mask-props+ 1)

(defparameter %pipewire::+module-event-info+ 0)

(defparameter %pipewire::+module-event-num+ 1)

(defparameter %pipewire::+module-method-add-listener+ 0)

(defparameter %pipewire::+module-method-num+ 1)

(defparameter %pipewire::+node-change-mask-all+ 31)

(defparameter %pipewire::+node-change-mask-input-ports+ 1)

(defparameter %pipewire::+node-change-mask-output-ports+ 2)

(defparameter %pipewire::+node-change-mask-params+ 16)

(defparameter %pipewire::+node-change-mask-props+ 8)

(defparameter %pipewire::+node-change-mask-state+ 4)

(defparameter %pipewire::+node-event-info+ 0)

(defparameter %pipewire::+node-event-num+ 2)

(defparameter %pipewire::+node-event-param+ 1)

(defparameter %pipewire::+node-method-add-listener+ 0)

(defparameter %pipewire::+node-method-enum-params+ 2)

(defparameter %pipewire::+node-method-num+ 5)

(defparameter %pipewire::+node-method-send-command+ 4)

(defparameter %pipewire::+node-method-set-param+ 3)

(defparameter %pipewire::+node-method-subscribe-params+ 1)

(defparameter %pipewire::+permission-format+ "%c%c%c%c")

(defparameter %pipewire::+perm-all+ 456)

(defparameter %pipewire::+perm-invalid+ 4294967295)

(defparameter %pipewire::+perm-m+ 8)

(defparameter %pipewire::+perm-r+ 256)

(defparameter %pipewire::+perm-rwx+ 448)

(defparameter %pipewire::+perm-rwxm+ 456)

(defparameter %pipewire::+perm-w+ 128)

(defparameter %pipewire::+perm-x+ 64)

(defparameter %pipewire::+port-change-mask-all+ 3)

(defparameter %pipewire::+port-change-mask-params+ 2)

(defparameter %pipewire::+port-change-mask-props+ 1)

(defparameter %pipewire::+port-event-info+ 0)

(defparameter %pipewire::+port-event-num+ 2)

(defparameter %pipewire::+port-event-param+ 1)

(defparameter %pipewire::+port-method-add-listener+ 0)

(defparameter %pipewire::+port-method-enum-params+ 2)

(defparameter %pipewire::+port-method-num+ 3)

(defparameter %pipewire::+port-method-subscribe-params+ 1)

(defparameter %pipewire::+protocol-marshal-flag-impl+ 1)

(defparameter %pipewire::+registry-event-global+ 0)

(defparameter %pipewire::+registry-event-global-remove+ 1)

(defparameter %pipewire::+registry-event-num+ 2)

(defparameter %pipewire::+registry-method-add-listener+ 0)

(defparameter %pipewire::+registry-method-bind+ 1)

(defparameter %pipewire::+registry-method-destroy+ 2)

(defparameter %pipewire::+registry-method-num+ 3)

(defparameter %pipewire::+type-info-base+ "PipeWire:")

(defparameter %pipewire::+type-info-interface-base+ "PipeWire:Interface:")

(defparameter %pipewire::+type-info-interface+ "PipeWire:Interface")

(defparameter %pipewire::+type-info-object-base+ "PipeWire:Object:")

(defparameter %pipewire::+type-info-object+ "PipeWire:Object")

(defparameter %pipewire::+type-info-protocol-base+ "PipeWire:Protocol:")

(defparameter %pipewire::+type-info-protocol+ "PipeWire:Protocol")

(defparameter %pipewire::+type-interface-client+ "PipeWire:Interface:Client")

(defparameter %pipewire::+type-interface-core+ "PipeWire:Interface:Core")

(defparameter %pipewire::+type-interface-device+ "PipeWire:Interface:Device")

(defparameter %pipewire::+type-interface-factory+ "PipeWire:Interface:Factory")

(defparameter %pipewire::+type-interface-link+ "PipeWire:Interface:Link")

(defparameter %pipewire::+type-interface-module+ "PipeWire:Interface:Module")

(defparameter %pipewire::+type-interface-node+ "PipeWire:Interface:Node")

(defparameter %pipewire::+type-interface-port+ "PipeWire:Interface:Port")

(defparameter %pipewire::+type-interface-registry+ "PipeWire:Interface:Registry")

(defparameter %pipewire::+version-client+ 3)

(defparameter %pipewire::+version-client-events+ 0)

(defparameter %pipewire::+version-client-methods+ 0)

(defparameter %pipewire::+version-context-events+ 0)

(defparameter %pipewire::+version-core+ 3)

(defparameter %pipewire::+version-core-events+ 0)

(defparameter %pipewire::+version-core-methods+ 0)

(defparameter %pipewire::+version-data-loop-events+ 0)

(defparameter %pipewire::+version-device+ 3)

(defparameter %pipewire::+version-device-events+ 0)

(defparameter %pipewire::+version-device-methods+ 0)

(defparameter %pipewire::+version-factory+ 3)

(defparameter %pipewire::+version-factory-events+ 0)

(defparameter %pipewire::+version-factory-methods+ 0)

(defparameter %pipewire::+version-filter-events+ 0)

(defparameter %pipewire::+version-link+ 3)

(defparameter %pipewire::+version-link-events+ 0)

(defparameter %pipewire::+version-link-methods+ 0)

(defparameter %pipewire::+version-main-loop-events+ 0)

(defparameter %pipewire::+version-mempool-events+ 0)

(defparameter %pipewire::+version-module+ 3)

(defparameter %pipewire::+version-module-events+ 0)

(defparameter %pipewire::+version-module-methods+ 0)

(defparameter %pipewire::+version-node+ 3)

(defparameter %pipewire::+version-node-events+ 0)

(defparameter %pipewire::+version-node-methods+ 0)

(defparameter %pipewire::+version-port+ 3)

(defparameter %pipewire::+version-port-events+ 0)

(defparameter %pipewire::+version-port-methods+ 0)

(defparameter %pipewire::+version-protocol-events+ 0)

(defparameter %pipewire::+version-protocol-implementation+ 0)

(defparameter %pipewire::+version-proxy-events+ 0)

(defparameter %pipewire::+version-registry+ 3)

(defparameter %pipewire::+version-registry-events+ 0)

(defparameter %pipewire::+version-registry-methods+ 0)

(defparameter %pipewire::+version-stream-events+ 0)

(defparameter %pipewire::+version-thread-loop-events+ 0)

(defparameter %pipewire::+direction+ nil)

(cffi:defcenum (%pipewire::filter-flags :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/filter.h:107:6"
               (:none 0)
               (:inactive 1)
               (:driver 2)
               (:rt-process 4))

(cffi:defcenum (%pipewire::filter-port-flags :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/filter.h:117:6"
               (:none 0)
               (:map-buffers 1)
               (:alloc-buffers 2))

(cffi:defcenum (%pipewire::filter-state :int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/filter.h:51:6"
               (:error -1)
               (:unconnected 0)
               (:connecting 1)
               (:paused 2)
               (:streaming 3))

(cffi:defcenum (%pipewire::link-state :int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/link.h:43:6"
               (:error -2)
               (:unlinked -1)
               (:init 0)
               (:negotiating 1)
               (:allocating 2)
               (:paused 3)
               (:active 4))

(cffi:defcenum (%pipewire::memblock-flags :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/mem.h:35:6"
               (:none 0)
               (:readable 1)
               (:writable 2)
               (:seal 4)
               (:map 8)
               (:dont-close 16)
               (:dont-notify 32)
               (:readwrite 3))

(cffi:defcenum (%pipewire::memmap-flags :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/mem.h:47:6"
               (:none 0)
               (:read 1)
               (:write 2)
               (:twice 4)
               (:private 8)
               (:locked 16)
               (:readwrite 3))

(cffi:defcenum (%pipewire::node-state :int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/node.h:48:6"
               (:error -1)
               (:creating 0)
               (:suspended 1)
               (:idle 2)
               (:running 3))

(cffi:defcenum (%pipewire::stream-flags :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/stream.h:237:6"
               (:none 0)
               (:autoconnect 1)
               (:inactive 2)
               (:map-buffers 4)
               (:driver 8)
               (:rt-process 16)
               (:no-convert 32)
               (:exclusive 64)
               (:dont-reconnect 128)
               (:alloc-buffers 256))

(cffi:defcenum (%pipewire::stream-state :int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/src/pipewire/stream.h:156:6"
               (:error -1)
               (:unconnected 0)
               (:connecting 1)
               (:paused 2)
               (:streaming 3))

(cffi:defcstruct (%pipewire::registry :size 0))

(cffi:defcstruct (%pipewire::spa-hook :size 48)
                 (%pipewire::removed (:pointer :void) :offset 32)
                 (%pipewire::priv (:pointer :void) :offset 40))

(cffi:defctype %pipewire::uint32-t :unsigned-int)

(cffi:defcstruct (%pipewire::registry-events :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::global (:pointer :void) :offset 8)
                 (%pipewire::global-remove (:pointer :void) :offset
                  16))

(declaim (inline %pipewire::registry-add-listener))

(cffi:defcfun ("_wrapped_pw_registry_add_listener"
               %pipewire::registry-add-listener)
              :void
              (%pipewire::p (:pointer (:struct %pipewire::registry)))
              (%pipewire::h (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::e
               (:pointer (:struct %pipewire::registry-events)))
              (%pipewire::user-data (:pointer :void)))

(cffi:defcstruct (%pipewire::properties :size 24)
                 (%pipewire::flags %pipewire::uint32-t :offset 16))

(cffi:defcstruct (%pipewire::mempool :size 8)
                 (%pipewire::props
                  (:pointer (:struct %pipewire::properties)) :offset
                  0))

(cffi:defcstruct (%pipewire::memblock :size 40))

(cffi:defcstruct (%pipewire::memmap :size 48)
                 (%pipewire::block
                  (:pointer (:struct %pipewire::memblock)) :offset 0)
                 (%pipewire::ptr (:pointer :void) :offset 8)
                 (%pipewire::flags %pipewire::uint32-t :offset 16)
                 (%pipewire::offset %pipewire::uint32-t :offset 20)
                 (%pipewire::size %pipewire::uint32-t :offset 24)
                 (%pipewire::tag %pipewire::uint32-t :count 5 :offset
                  28))

(cffi:defcstruct (%pipewire::memblock :size 40)
                 (%pipewire::pool
                  (:pointer (:struct %pipewire::mempool)) :offset 0)
                 (%pipewire::id %pipewire::uint32-t :offset 8)
                 (%pipewire::ref :int :offset 12)
                 (%pipewire::flags %pipewire::uint32-t :offset 16)
                 (%pipewire::type %pipewire::uint32-t :offset 20)
                 (%pipewire::fd :int :offset 24)
                 (%pipewire::size %pipewire::uint32-t :offset 28)
                 (%pipewire::map
                  (:pointer (:struct %pipewire::memmap)) :offset 32))

(cffi:defcstruct (%pipewire::buffers :size 24)
                 (%pipewire::mem
                  (:pointer (:struct %pipewire::memblock)) :offset 0)
                 (%pipewire::n-buffers %pipewire::uint32-t :offset
                  16)
                 (%pipewire::flags %pipewire::uint32-t :offset 20))

(declaim (inline %pipewire::buffers-clear))

(cffi:defcfun ("pw_buffers_clear" %pipewire::buffers-clear)
              :void
              (%pipewire::buffers
               (:pointer (:struct %pipewire::buffers))))

(cffi:defcstruct (%pipewire::context :size 0))

(cffi:defcstruct (%pipewire::spa-node :size 32))

(declaim (inline %pipewire::buffers-negotiate))

(cffi:defcfun ("pw_buffers_negotiate" %pipewire::buffers-negotiate)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::flags %pipewire::uint32-t)
              (%pipewire::outnode
               (:pointer (:struct %pipewire::spa-node)))
              (%pipewire::out-port-id %pipewire::uint32-t)
              (%pipewire::innode
               (:pointer (:struct %pipewire::spa-node)))
              (%pipewire::in-port-id %pipewire::uint32-t)
              (%pipewire::result
               (:pointer (:struct %pipewire::buffers))))

(cffi:defctype %pipewire::uint64-t :unsigned-long)

(cffi:defcstruct (%pipewire::client-info :size 24)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  8))

(declaim (inline %pipewire::client-info-free))

(cffi:defcfun ("pw_client_info_free" %pipewire::client-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::client-info))))

(declaim (inline %pipewire::client-info-update))

(cffi:defcfun ("pw_client_info_update" %pipewire::client-info-update)
              (:pointer (:struct %pipewire::client-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::client-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::client-info))))

(cffi:defcstruct (%pipewire::context-events :size 48)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8)
                 (%pipewire::free (:pointer :void) :offset 16)
                 (%pipewire::check-access (:pointer :void) :offset
                  24)
                 (%pipewire::global-added (:pointer :void) :offset
                  32)
                 (%pipewire::global-removed (:pointer :void) :offset
                  40))

(declaim (inline %pipewire::context-add-listener))

(cffi:defcfun ("pw_context_add_listener"
               %pipewire::context-add-listener)
              :void
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::context-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::context-add-spa-lib))

(cffi:defcfun ("pw_context_add_spa_lib"
               %pipewire::context-add-spa-lib)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::factory-regex :string)
              (%pipewire::lib :string))

(cffi:defcstruct (%pipewire::core :size 0))

(cffi:defctype %pipewire::size-t :unsigned-long)

(declaim (inline %pipewire::context-connect))

(cffi:defcfun ("pw_context_connect" %pipewire::context-connect)
              (:pointer (:struct %pipewire::core))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::context-connect-fd))

(cffi:defcfun ("pw_context_connect_fd" %pipewire::context-connect-fd)
              (:pointer (:struct %pipewire::core))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::fd :int)
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::context-connect-self))

(cffi:defcfun ("pw_context_connect_self"
               %pipewire::context-connect-self)
              (:pointer (:struct %pipewire::core))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::context-destroy))

(cffi:defcfun ("pw_context_destroy" %pipewire::context-destroy)
              :void
              (%pipewire::context
               (:pointer (:struct %pipewire::context))))

(cffi:defcstruct (%pipewire::export-type :size 32)
                 (%pipewire::type :string :offset 16)
                 (%pipewire::func (:pointer :void) :offset 24))

(declaim (inline %pipewire::context-find-export-type))

(cffi:defcfun ("pw_context_find_export_type"
               %pipewire::context-find-export-type)
              (:pointer (:struct %pipewire::export-type))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::type :string))

(cffi:defcstruct (%pipewire::global :size 0))

(declaim (inline %pipewire::context-find-global))

(cffi:defcfun ("pw_context_find_global"
               %pipewire::context-find-global)
              (:pointer (:struct %pipewire::global))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::id %pipewire::uint32-t))

(cffi:defcstruct (%pipewire::protocol :size 0))

(declaim (inline %pipewire::context-find-protocol))

(cffi:defcfun ("pw_context_find_protocol"
               %pipewire::context-find-protocol)
              (:pointer (:struct %pipewire::protocol))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::name :string))

(declaim (inline %pipewire::context-find-spa-lib))

(cffi:defcfun ("pw_context_find_spa_lib"
               %pipewire::context-find-spa-lib)
              :string
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::factory-name :string))

(declaim (inline %pipewire::context-for-each-global))

(cffi:defcfun ("pw_context_for_each_global"
               %pipewire::context-for-each-global)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::callback (:pointer :void))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::context-get-conf-section))

(cffi:defcfun ("pw_context_get_conf_section"
               %pipewire::context-get-conf-section)
              :string
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::section :string))

(cffi:defcstruct (%pipewire::loop :size 32))

(declaim (inline %pipewire::context-get-main-loop))

(cffi:defcfun ("pw_context_get_main_loop"
               %pipewire::context-get-main-loop)
              (:pointer (:struct %pipewire::loop))
              (%pipewire::context
               (:pointer (:struct %pipewire::context))))

(declaim (inline %pipewire::context-get-object))

(cffi:defcfun ("pw_context_get_object" %pipewire::context-get-object)
              (:pointer :void)
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::type :string))

(declaim (inline %pipewire::context-get-properties))

(cffi:defcfun ("pw_context_get_properties"
               %pipewire::context-get-properties)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::context
               (:pointer (:struct %pipewire::context))))

(cffi:defcstruct (%pipewire::spa-support :size 16)
                 (%pipewire::type :string :offset 0)
                 (%pipewire::data (:pointer :void) :offset 8))

(declaim (inline %pipewire::context-get-support))

(cffi:defcfun ("pw_context_get_support"
               %pipewire::context-get-support)
              (:pointer (:struct %pipewire::spa-support))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::n-support (:pointer %pipewire::uint32-t)))

(declaim (inline %pipewire::context-get-user-data))

(cffi:defcfun ("pw_context_get_user_data"
               %pipewire::context-get-user-data)
              (:pointer :void)
              (%pipewire::context
               (:pointer (:struct %pipewire::context))))

(cffi:defcstruct (%pipewire::spa-handle :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::get-interface (:pointer :void) :offset
                  8)
                 (%pipewire::clear (:pointer :void) :offset 16))

(cffi:defcstruct (%pipewire::spa-dict :size 16)
                 (%pipewire::flags %pipewire::uint32-t :offset 0)
                 (%pipewire::n-items %pipewire::uint32-t :offset 4))

(declaim (inline %pipewire::context-load-spa-handle))

(cffi:defcfun ("pw_context_load_spa_handle"
               %pipewire::context-load-spa-handle)
              (:pointer (:struct %pipewire::spa-handle))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::factory-name :string)
              (%pipewire::info
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::context-new))

(cffi:defcfun ("pw_context_new" %pipewire::context-new)
              (:pointer (:struct %pipewire::context))
              (%pipewire::main-loop
               (:pointer (:struct %pipewire::loop)))
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::context-register-export-type))

(cffi:defcfun ("pw_context_register_export_type"
               %pipewire::context-register-export-type)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::type
               (:pointer (:struct %pipewire::export-type))))

(declaim (inline %pipewire::context-set-object))

(cffi:defcfun ("pw_context_set_object" %pipewire::context-set-object)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::type :string)
              (%pipewire::value (:pointer :void)))

(declaim (inline %pipewire::context-update-properties))

(cffi:defcfun ("pw_context_update_properties"
               %pipewire::context-update-properties)
              :int
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::core-disconnect))

(cffi:defcfun ("pw_core_disconnect" %pipewire::core-disconnect)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(cffi:defcstruct (%pipewire::proxy :size 0))

(declaim (inline %pipewire::core-export))

(cffi:defcfun ("pw_core_export" %pipewire::core-export)
              (:pointer (:struct %pipewire::proxy))
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::type :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::object (:pointer :void))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::core-find-proxy))

(cffi:defcfun ("pw_core_find_proxy" %pipewire::core-find-proxy)
              (:pointer (:struct %pipewire::proxy))
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::id %pipewire::uint32-t))

(cffi:defcstruct (%pipewire::client :size 0))

(declaim (inline %pipewire::core-get-client))

(cffi:defcfun ("pw_core_get_client" %pipewire::core-get-client)
              (:pointer (:struct %pipewire::client))
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(declaim (inline %pipewire::core-get-context))

(cffi:defcfun ("pw_core_get_context" %pipewire::core-get-context)
              (:pointer (:struct %pipewire::context))
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(declaim (inline %pipewire::core-get-mempool))

(cffi:defcfun ("pw_core_get_mempool" %pipewire::core-get-mempool)
              (:pointer (:struct %pipewire::mempool))
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(declaim (inline %pipewire::core-get-properties))

(cffi:defcfun ("pw_core_get_properties"
               %pipewire::core-get-properties)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(declaim (inline %pipewire::core-get-user-data))

(cffi:defcfun ("pw_core_get_user_data" %pipewire::core-get-user-data)
              (:pointer :void)
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(cffi:defcstruct (%pipewire::core-info :size 56)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::cookie %pipewire::uint32-t :offset 4)
                 (%pipewire::user-name :string :offset 8)
                 (%pipewire::host-name :string :offset 16)
                 (%pipewire::version :string :offset 24)
                 (%pipewire::name :string :offset 32)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  40))

(declaim (inline %pipewire::core-info-free))

(cffi:defcfun ("pw_core_info_free" %pipewire::core-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::core-info))))

(declaim (inline %pipewire::core-info-update))

(cffi:defcfun ("pw_core_info_update" %pipewire::core-info-update)
              (:pointer (:struct %pipewire::core-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::core-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::core-info))))

(declaim (inline %pipewire::core-set-paused))

(cffi:defcfun ("pw_core_set_paused" %pipewire::core-set-paused)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::paused :bool))

(declaim (inline %pipewire::core-steal-fd))

(cffi:defcfun ("pw_core_steal_fd" %pipewire::core-steal-fd)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core))))

(declaim (inline %pipewire::core-update-properties))

(cffi:defcfun ("pw_core_update_properties"
               %pipewire::core-update-properties)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(cffi:defcstruct (%pipewire::data-loop :size 0))

(cffi:defcstruct (%pipewire::data-loop-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8))

(declaim (inline %pipewire::data-loop-add-listener))

(cffi:defcfun ("pw_data_loop_add_listener"
               %pipewire::data-loop-add-listener)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::data-loop-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::data-loop-destroy))

(cffi:defcfun ("pw_data_loop_destroy" %pipewire::data-loop-destroy)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(declaim (inline %pipewire::data-loop-exit))

(cffi:defcfun ("pw_data_loop_exit" %pipewire::data-loop-exit)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(declaim (inline %pipewire::data-loop-get-loop))

(cffi:defcfun ("pw_data_loop_get_loop" %pipewire::data-loop-get-loop)
              (:pointer (:struct %pipewire::loop))
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(declaim (inline %pipewire::data-loop-in-thread))

(cffi:defcfun ("pw_data_loop_in_thread"
               %pipewire::data-loop-in-thread)
              :bool
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(cffi:defctype %pipewire::spa-invoke-func-t (:pointer :void))

(declaim (inline %pipewire::data-loop-invoke))

(cffi:defcfun ("pw_data_loop_invoke" %pipewire::data-loop-invoke)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop)))
              (%pipewire::func %pipewire::spa-invoke-func-t)
              (%pipewire::seq %pipewire::uint32-t)
              (%pipewire::data (:pointer :void))
              (%pipewire::size %pipewire::size-t)
              (%pipewire::block :bool)
              (%pipewire::user-data (:pointer :void)))

(declaim (inline %pipewire::data-loop-new))

(cffi:defcfun ("pw_data_loop_new" %pipewire::data-loop-new)
              (:pointer (:struct %pipewire::data-loop))
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::data-loop-start))

(cffi:defcfun ("pw_data_loop_start" %pipewire::data-loop-start)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(declaim (inline %pipewire::data-loop-stop))

(cffi:defcfun ("pw_data_loop_stop" %pipewire::data-loop-stop)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop))))

(declaim (inline %pipewire::data-loop-wait))

(cffi:defcfun ("pw_data_loop_wait" %pipewire::data-loop-wait)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::data-loop)))
              (%pipewire::timeout :int))

(declaim (inline %pipewire::debug-is-category-enabled))

(cffi:defcfun ("pw_debug_is_category_enabled"
               %pipewire::debug-is-category-enabled)
              :bool
              (%pipewire::name :string))

(declaim (inline %pipewire::deinit))

(cffi:defcfun ("pw_deinit" %pipewire::deinit) :void)

(cffi:defcstruct (%pipewire::device-info :size 40)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  8)
                 (%pipewire::n-params %pipewire::uint32-t :offset 32))

(declaim (inline %pipewire::device-info-free))

(cffi:defcfun ("pw_device_info_free" %pipewire::device-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::device-info))))

(declaim (inline %pipewire::device-info-update))

(cffi:defcfun ("pw_device_info_update" %pipewire::device-info-update)
              (:pointer (:struct %pipewire::device-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::device-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::device-info))))

(cffi:defcenum (%pipewire::spa-direction :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/spa/include/spa/utils/defs.h:69:6"
               (:input 0)
               (:output 1))

(declaim (inline %pipewire::direction-as-string))

(cffi:defcfun ("pw_direction_as_string"
               %pipewire::direction-as-string)
              :string
              (%pipewire::direction %pipewire::spa-direction))

(declaim (inline %pipewire::direction-reverse))

(cffi:defcfun ("pw_direction_reverse" %pipewire::direction-reverse)
              %pipewire::spa-direction
              (%pipewire::direction %pipewire::spa-direction))

(cffi:defcstruct (%pipewire::factory-info :size 48)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::name :string :offset 8)
                 (%pipewire::type :string :offset 16)
                 (%pipewire::version %pipewire::uint32-t :offset 24)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  32))

(declaim (inline %pipewire::factory-info-free))

(cffi:defcfun ("pw_factory_info_free" %pipewire::factory-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::factory-info))))

(declaim (inline %pipewire::factory-info-update))

(cffi:defcfun ("pw_factory_info_update"
               %pipewire::factory-info-update)
              (:pointer (:struct %pipewire::factory-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::factory-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::factory-info))))

(cffi:defcstruct (%pipewire::filter :size 0))

(cffi:defcstruct (%pipewire::filter-events :size 72)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8)
                 (%pipewire::state-changed (:pointer :void) :offset
                  16)
                 (%pipewire::io-changed (:pointer :void) :offset 24)
                 (%pipewire::param-changed (:pointer :void) :offset
                  32)
                 (%pipewire::add-buffer (:pointer :void) :offset 40)
                 (%pipewire::remove-buffer (:pointer :void) :offset
                  48)
                 (%pipewire::process (:pointer :void) :offset 56)
                 (%pipewire::drained (:pointer :void) :offset 64))

(declaim (inline %pipewire::filter-add-listener))

(cffi:defcfun ("pw_filter_add_listener"
               %pipewire::filter-add-listener)
              :void
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::filter-events)))
              (%pipewire::data (:pointer :void)))

(cffi:defcstruct (%pipewire::spa-pod :size 8)
                 (%pipewire::size %pipewire::uint32-t :offset 0)
                 (%pipewire::type %pipewire::uint32-t :offset 4))

(declaim (inline %pipewire::filter-add-port))

(cffi:defcfun ("pw_filter_add_port" %pipewire::filter-add-port)
              (:pointer :void)
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::direction %pipewire::spa-direction)
              (%pipewire::flags %pipewire::filter-port-flags)
              (%pipewire::port-data-size %pipewire::size-t)
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::params
               (:pointer (:pointer (:struct %pipewire::spa-pod))))
              (%pipewire::n-params %pipewire::uint32-t))

(declaim (inline %pipewire::filter-connect))

(cffi:defcfun ("pw_filter_connect" %pipewire::filter-connect)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::flags %pipewire::filter-flags)
              (%pipewire::params
               (:pointer (:pointer (:struct %pipewire::spa-pod))))
              (%pipewire::n-params %pipewire::uint32-t))

(cffi:defcstruct (%pipewire::buffer :size 24)
                 (%pipewire::user-data (:pointer :void) :offset 8)
                 (%pipewire::size %pipewire::uint64-t :offset 16))

(declaim (inline %pipewire::filter-dequeue-buffer))

(cffi:defcfun ("pw_filter_dequeue_buffer"
               %pipewire::filter-dequeue-buffer)
              (:pointer (:struct %pipewire::buffer))
              (%pipewire::port-data (:pointer :void)))

(declaim (inline %pipewire::filter-destroy))

(cffi:defcfun ("pw_filter_destroy" %pipewire::filter-destroy)
              :void
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter))))

(declaim (inline %pipewire::filter-disconnect))

(cffi:defcfun ("pw_filter_disconnect" %pipewire::filter-disconnect)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter))))

(declaim (inline %pipewire::filter-flush))

(cffi:defcfun ("pw_filter_flush" %pipewire::filter-flush)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::drain :bool))

(declaim (inline %pipewire::filter-get-core))

(cffi:defcfun ("pw_filter_get_core" %pipewire::filter-get-core)
              (:pointer (:struct %pipewire::core))
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter))))

(declaim (inline %pipewire::filter-get-dsp-buffer))

(cffi:defcfun ("pw_filter_get_dsp_buffer"
               %pipewire::filter-get-dsp-buffer)
              (:pointer :void)
              (%pipewire::port-data (:pointer :void))
              (%pipewire::n-samples %pipewire::uint32-t))

(declaim (inline %pipewire::filter-get-name))

(cffi:defcfun ("pw_filter_get_name" %pipewire::filter-get-name)
              :string
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter))))

(declaim (inline %pipewire::filter-get-node-id))

(cffi:defcfun ("pw_filter_get_node_id" %pipewire::filter-get-node-id)
              %pipewire::uint32-t
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter))))

(declaim (inline %pipewire::filter-get-properties))

(cffi:defcfun ("pw_filter_get_properties"
               %pipewire::filter-get-properties)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::port-data (:pointer :void)))

(declaim (inline %pipewire::filter-get-state))

(cffi:defcfun ("pw_filter_get_state" %pipewire::filter-get-state)
              %pipewire::filter-state
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::error (:pointer :string)))

(cffi:defctype %pipewire::int64-t :long)

(cffi:defcstruct (%pipewire::time :size 40)
                 (%pipewire::now %pipewire::int64-t :offset 0)
                 (%pipewire::ticks %pipewire::uint64-t :offset 16)
                 (%pipewire::delay %pipewire::int64-t :offset 24)
                 (%pipewire::queued %pipewire::uint64-t :offset 32))

(declaim (inline %pipewire::filter-get-time))

(cffi:defcfun ("pw_filter_get_time" %pipewire::filter-get-time)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::time (:pointer (:struct %pipewire::time))))

(declaim (inline %pipewire::filter-new))

(cffi:defcfun ("pw_filter_new" %pipewire::filter-new)
              (:pointer (:struct %pipewire::filter))
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::filter-new-simple))

(cffi:defcfun ("pw_filter_new_simple" %pipewire::filter-new-simple)
              (:pointer (:struct %pipewire::filter))
              (%pipewire::loop (:pointer (:struct %pipewire::loop)))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::events
               (:pointer (:struct %pipewire::filter-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::filter-queue-buffer))

(cffi:defcfun ("pw_filter_queue_buffer"
               %pipewire::filter-queue-buffer)
              :int
              (%pipewire::port-data (:pointer :void))
              (%pipewire::buffer
               (:pointer (:struct %pipewire::buffer))))

(declaim (inline %pipewire::filter-remove-port))

(cffi:defcfun ("pw_filter_remove_port" %pipewire::filter-remove-port)
              :int
              (%pipewire::port-data (:pointer :void)))

(declaim (inline %pipewire::filter-set-active))

(cffi:defcfun ("pw_filter_set_active" %pipewire::filter-set-active)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::active :bool))

(declaim (inline %pipewire::filter-set-error))

(cffi:defcfun ("pw_filter_set_error" %pipewire::filter-set-error)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::res :int)
              (%pipewire::error :string)
              &rest)

(declaim (inline %pipewire::filter-state-as-string))

(cffi:defcfun ("pw_filter_state_as_string"
               %pipewire::filter-state-as-string)
              :string
              (%pipewire::state %pipewire::filter-state))

(declaim (inline %pipewire::filter-update-params))

(cffi:defcfun ("pw_filter_update_params"
               %pipewire::filter-update-params)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::port-data (:pointer :void))
              (%pipewire::params
               (:pointer (:pointer (:struct %pipewire::spa-pod))))
              (%pipewire::n-params %pipewire::uint32-t))

(declaim (inline %pipewire::filter-update-properties))

(cffi:defcfun ("pw_filter_update_properties"
               %pipewire::filter-update-properties)
              :int
              (%pipewire::filter
               (:pointer (:struct %pipewire::filter)))
              (%pipewire::port-data (:pointer :void))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::free-strv))

(cffi:defcfun ("pw_free_strv" %pipewire::free-strv)
              :void
              (%pipewire::str (:pointer :string)))

(declaim (inline %pipewire::get-application-name))

(cffi:defcfun ("pw_get_application_name"
               %pipewire::get-application-name)
              :string)

(declaim (inline %pipewire::get-client-name))

(cffi:defcfun ("pw_get_client_name" %pipewire::get-client-name)
              :string)

(declaim (inline %pipewire::get-host-name))

(cffi:defcfun ("pw_get_host_name" %pipewire::get-host-name) :string)

(declaim (inline %pipewire::get-library-version))

(cffi:defcfun ("pw_get_library_version"
               %pipewire::get-library-version)
              :string)

(declaim (inline %pipewire::get-prgname))

(cffi:defcfun ("pw_get_prgname" %pipewire::get-prgname) :string)

(declaim (inline %pipewire::get-support))

(cffi:defcfun ("pw_get_support" %pipewire::get-support)
              %pipewire::uint32-t
              (%pipewire::support
               (:pointer (:struct %pipewire::spa-support)))
              (%pipewire::max-support %pipewire::uint32-t))

(declaim (inline %pipewire::get-user-name))

(cffi:defcfun ("pw_get_user_name" %pipewire::get-user-name) :string)

(declaim (inline %pipewire::in-valgrind))

(cffi:defcfun ("pw_in_valgrind" %pipewire::in-valgrind) :bool)

(declaim (inline %pipewire::init))

(cffi:defcfun ("pw_init" %pipewire::init)
              :void
              (%pipewire::argc (:pointer :int))
              (%pipewire::argv (:pointer (:pointer :string))))

(cffi:defcstruct (%pipewire::link-info :size 64)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::output-node-id %pipewire::uint32-t
                  :offset 4)
                 (%pipewire::output-port-id %pipewire::uint32-t
                  :offset 8)
                 (%pipewire::input-node-id %pipewire::uint32-t
                  :offset 12)
                 (%pipewire::input-port-id %pipewire::uint32-t
                  :offset 16)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  24)
                 (%pipewire::state %pipewire::link-state :offset 32)
                 (%pipewire::error :string :offset 40))

(declaim (inline %pipewire::link-info-free))

(cffi:defcfun ("pw_link_info_free" %pipewire::link-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::link-info))))

(declaim (inline %pipewire::link-info-update))

(cffi:defcfun ("pw_link_info_update" %pipewire::link-info-update)
              (:pointer (:struct %pipewire::link-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::link-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::link-info))))

(declaim (inline %pipewire::link-state-as-string))

(cffi:defcfun ("pw_link_state_as_string"
               %pipewire::link-state-as-string)
              :string
              (%pipewire::state %pipewire::link-state))

(declaim (inline %pipewire::load-spa-handle))

(cffi:defcfun ("pw_load_spa_handle" %pipewire::load-spa-handle)
              (:pointer (:struct %pipewire::spa-handle))
              (%pipewire::lib :string)
              (%pipewire::factory-name :string)
              (%pipewire::info
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::n-support %pipewire::uint32-t)
              (%pipewire::support
               (:pointer (:struct %pipewire::spa-support))))

(cffi:defcstruct (%pipewire::spa-log :size 40))

(declaim (inline %pipewire::log-get))

(cffi:defcfun ("pw_log_get" %pipewire::log-get)
              (:pointer (:struct %pipewire::spa-log)))

(cffi:defcenum (%pipewire::spa-log-level :unsigned-int)
               "/home/borodust/devel/repo/claw-pipewire/src/lib/pipewire/spa/include/spa/support/log.h:37:6"
               (:none 0)
               (:error 1)
               (:warn 2)
               (:info 3)
               (:debug 4)
               (:trace 5))

(declaim (inline %pipewire::log-log))

(cffi:defcfun ("pw_log_log" %pipewire::log-log)
              :void
              (%pipewire::level %pipewire::spa-log-level)
              (%pipewire::file :string)
              (%pipewire::line :int)
              (%pipewire::func :string)
              (%pipewire::fmt :string)
              &rest)

(cffi:defcstruct (%pipewire::%%va-list-tag :size 24)
                 (%pipewire::gp-offset :unsigned-int :offset 0)
                 (%pipewire::fp-offset :unsigned-int :offset 4)
                 (%pipewire::overflow-arg-area (:pointer :void)
                  :offset 8)
                 (%pipewire::reg-save-area (:pointer :void) :offset
                  16))

(cffi:defctype %pipewire::va-list
               (:array (:struct %pipewire::%%va-list-tag) 1))

(declaim (inline %pipewire::log-logv))

(cffi:defcfun ("pw_log_logv" %pipewire::log-logv)
              :void
              (%pipewire::level %pipewire::spa-log-level)
              (%pipewire::file :string)
              (%pipewire::line :int)
              (%pipewire::func :string)
              (%pipewire::fmt :string)
              (%pipewire::args %pipewire::va-list))

(declaim (inline %pipewire::log-set))

(cffi:defcfun ("pw_log_set" %pipewire::log-set)
              :void
              (%pipewire::log
               (:pointer (:struct %pipewire::spa-log))))

(declaim (inline %pipewire::log-set-level))

(cffi:defcfun ("pw_log_set_level" %pipewire::log-set-level)
              :void
              (%pipewire::level %pipewire::spa-log-level))

(declaim (inline %pipewire::loop-destroy))

(cffi:defcfun ("pw_loop_destroy" %pipewire::loop-destroy)
              :void
              (%pipewire::loop (:pointer (:struct %pipewire::loop))))

(declaim (inline %pipewire::loop-new))

(cffi:defcfun ("pw_loop_new" %pipewire::loop-new)
              (:pointer (:struct %pipewire::loop))
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict))))

(cffi:defcstruct (%pipewire::main-loop :size 0))

(cffi:defcstruct (%pipewire::main-loop-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8))

(declaim (inline %pipewire::main-loop-add-listener))

(cffi:defcfun ("pw_main_loop_add_listener"
               %pipewire::main-loop-add-listener)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::main-loop)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::main-loop-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::main-loop-destroy))

(cffi:defcfun ("pw_main_loop_destroy" %pipewire::main-loop-destroy)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::main-loop))))

(declaim (inline %pipewire::main-loop-get-loop))

(cffi:defcfun ("pw_main_loop_get_loop" %pipewire::main-loop-get-loop)
              (:pointer (:struct %pipewire::loop))
              (%pipewire::loop
               (:pointer (:struct %pipewire::main-loop))))

(declaim (inline %pipewire::main-loop-new))

(cffi:defcfun ("pw_main_loop_new" %pipewire::main-loop-new)
              (:pointer (:struct %pipewire::main-loop))
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::main-loop-quit))

(cffi:defcfun ("pw_main_loop_quit" %pipewire::main-loop-quit)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::main-loop))))

(declaim (inline %pipewire::main-loop-run))

(cffi:defcfun ("pw_main_loop_run" %pipewire::main-loop-run)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::main-loop))))

(declaim (inline %pipewire::memblock-free))

(cffi:defcfun ("pw_memblock_free" %pipewire::memblock-free)
              :void
              (%pipewire::mem
               (:pointer (:struct %pipewire::memblock))))

(declaim (inline %pipewire::memblock-map))

(cffi:defcfun ("pw_memblock_map" %pipewire::memblock-map)
              (:pointer (:struct %pipewire::memmap))
              (%pipewire::block
               (:pointer (:struct %pipewire::memblock)))
              (%pipewire::flags %pipewire::memmap-flags)
              (%pipewire::offset %pipewire::uint32-t)
              (%pipewire::size %pipewire::uint32-t)
              (%pipewire::tag (:array %pipewire::uint32-t 5)))

(declaim (inline %pipewire::memmap-free))

(cffi:defcfun ("pw_memmap_free" %pipewire::memmap-free)
              :int
              (%pipewire::map (:pointer (:struct %pipewire::memmap))))

(cffi:defcstruct (%pipewire::mempool-events :size 32)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8)
                 (%pipewire::added (:pointer :void) :offset 16)
                 (%pipewire::removed (:pointer :void) :offset 24))

(declaim (inline %pipewire::mempool-add-listener))

(cffi:defcfun ("pw_mempool_add_listener"
               %pipewire::mempool-add-listener)
              :void
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::mempool-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::mempool-alloc))

(cffi:defcfun ("pw_mempool_alloc" %pipewire::mempool-alloc)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::flags %pipewire::memblock-flags)
              (%pipewire::type %pipewire::uint32-t)
              (%pipewire::size %pipewire::size-t))

(declaim (inline %pipewire::mempool-clear))

(cffi:defcfun ("pw_mempool_clear" %pipewire::mempool-clear)
              :void
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool))))

(declaim (inline %pipewire::mempool-destroy))

(cffi:defcfun ("pw_mempool_destroy" %pipewire::mempool-destroy)
              :void
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool))))

(declaim (inline %pipewire::mempool-find-fd))

(cffi:defcfun ("pw_mempool_find_fd" %pipewire::mempool-find-fd)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::fd :int))

(declaim (inline %pipewire::mempool-find-id))

(cffi:defcfun ("pw_mempool_find_id" %pipewire::mempool-find-id)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::id %pipewire::uint32-t))

(declaim (inline %pipewire::mempool-find-ptr))

(cffi:defcfun ("pw_mempool_find_ptr" %pipewire::mempool-find-ptr)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::ptr (:pointer :void)))

(declaim (inline %pipewire::mempool-find-tag))

(cffi:defcfun ("pw_mempool_find_tag" %pipewire::mempool-find-tag)
              (:pointer (:struct %pipewire::memmap))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::tag (:array %pipewire::uint32-t 5))
              (%pipewire::size %pipewire::size-t))

(declaim (inline %pipewire::mempool-import))

(cffi:defcfun ("pw_mempool_import" %pipewire::mempool-import)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::flags %pipewire::memblock-flags)
              (%pipewire::type %pipewire::uint32-t)
              (%pipewire::fd :int))

(declaim (inline %pipewire::mempool-import-block))

(cffi:defcfun ("pw_mempool_import_block"
               %pipewire::mempool-import-block)
              (:pointer (:struct %pipewire::memblock))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::mem
               (:pointer (:struct %pipewire::memblock))))

(declaim (inline %pipewire::mempool-import-map))

(cffi:defcfun ("pw_mempool_import_map" %pipewire::mempool-import-map)
              (:pointer (:struct %pipewire::memmap))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::other
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::data (:pointer :void))
              (%pipewire::size %pipewire::uint32-t)
              (%pipewire::tag (:array %pipewire::uint32-t 5)))

(declaim (inline %pipewire::mempool-map-id))

(cffi:defcfun ("pw_mempool_map_id" %pipewire::mempool-map-id)
              (:pointer (:struct %pipewire::memmap))
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::flags %pipewire::memmap-flags)
              (%pipewire::offset %pipewire::uint32-t)
              (%pipewire::size %pipewire::uint32-t)
              (%pipewire::tag (:array %pipewire::uint32-t 5)))

(declaim (inline %pipewire::mempool-new))

(cffi:defcfun ("pw_mempool_new" %pipewire::mempool-new)
              (:pointer (:struct %pipewire::mempool))
              (%pipewire::props
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::mempool-remove-id))

(cffi:defcfun ("pw_mempool_remove_id" %pipewire::mempool-remove-id)
              :int
              (%pipewire::pool
               (:pointer (:struct %pipewire::mempool)))
              (%pipewire::id %pipewire::uint32-t))

(cffi:defcstruct (%pipewire::module-info :size 48)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::name :string :offset 8)
                 (%pipewire::filename :string :offset 16)
                 (%pipewire::args :string :offset 24)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  32))

(declaim (inline %pipewire::module-info-free))

(cffi:defcfun ("pw_module_info_free" %pipewire::module-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::module-info))))

(declaim (inline %pipewire::module-info-update))

(cffi:defcfun ("pw_module_info_update" %pipewire::module-info-update)
              (:pointer (:struct %pipewire::module-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::module-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::module-info))))

(cffi:defcstruct (%pipewire::node-info :size 72)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::max-input-ports %pipewire::uint32-t
                  :offset 4)
                 (%pipewire::max-output-ports %pipewire::uint32-t
                  :offset 8)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  16)
                 (%pipewire::n-input-ports %pipewire::uint32-t
                  :offset 24)
                 (%pipewire::n-output-ports %pipewire::uint32-t
                  :offset 28)
                 (%pipewire::state %pipewire::node-state :offset 32)
                 (%pipewire::error :string :offset 40)
                 (%pipewire::n-params %pipewire::uint32-t :offset 64))

(declaim (inline %pipewire::node-info-free))

(cffi:defcfun ("pw_node_info_free" %pipewire::node-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::node-info))))

(declaim (inline %pipewire::node-info-update))

(cffi:defcfun ("pw_node_info_update" %pipewire::node-info-update)
              (:pointer (:struct %pipewire::node-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::node-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::node-info))))

(declaim (inline %pipewire::node-state-as-string))

(cffi:defcfun ("pw_node_state_as_string"
               %pipewire::node-state-as-string)
              :string
              (%pipewire::state %pipewire::node-state))

(cffi:defcstruct (%pipewire::port-info :size 40)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::change-mask %pipewire::uint64-t :offset
                  8)
                 (%pipewire::n-params %pipewire::uint32-t :offset 32))

(declaim (inline %pipewire::port-info-free))

(cffi:defcfun ("pw_port_info_free" %pipewire::port-info-free)
              :void
              (%pipewire::info
               (:pointer (:struct %pipewire::port-info))))

(declaim (inline %pipewire::port-info-update))

(cffi:defcfun ("pw_port_info_update" %pipewire::port-info-update)
              (:pointer (:struct %pipewire::port-info))
              (%pipewire::info
               (:pointer (:struct %pipewire::port-info)))
              (%pipewire::update
               (:pointer (:struct %pipewire::port-info))))

(declaim (inline %pipewire::properties-add))

(cffi:defcfun ("pw_properties_add" %pipewire::properties-add)
              :int
              (%pipewire::oldprops
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::properties-add-keys))

(cffi:defcfun ("pw_properties_add_keys"
               %pipewire::properties-add-keys)
              :int
              (%pipewire::oldprops
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::keys (:pointer :string)))

(declaim (inline %pipewire::properties-clear))

(cffi:defcfun ("pw_properties_clear" %pipewire::properties-clear)
              :void
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::properties-copy))

(cffi:defcfun ("pw_properties_copy" %pipewire::properties-copy)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::properties-free))

(cffi:defcfun ("pw_properties_free" %pipewire::properties-free)
              :void
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::properties-get))

(cffi:defcfun ("pw_properties_get" %pipewire::properties-get)
              :string
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::key :string))

(declaim (inline %pipewire::properties-iterate))

(cffi:defcfun ("pw_properties_iterate" %pipewire::properties-iterate)
              :string
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::state (:pointer (:pointer :void))))

(declaim (inline %pipewire::properties-new))

(cffi:defcfun ("pw_properties_new" %pipewire::properties-new)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::key :string)
              &rest)

(declaim (inline %pipewire::properties-new-dict))

(cffi:defcfun ("pw_properties_new_dict"
               %pipewire::properties-new-dict)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::properties-new-string))

(cffi:defcfun ("pw_properties_new_string"
               %pipewire::properties-new-string)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::args :string))

(declaim (inline %pipewire::properties-set))

(cffi:defcfun ("pw_properties_set" %pipewire::properties-set)
              :int
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::key :string)
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-setf))

(cffi:defcfun ("pw_properties_setf" %pipewire::properties-setf)
              :int
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::key :string)
              (%pipewire::format :string)
              &rest)

(declaim (inline %pipewire::properties-setva))

(cffi:defcfun ("pw_properties_setva" %pipewire::properties-setva)
              :int
              (%pipewire::properties
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::key :string)
              (%pipewire::format :string)
              (%pipewire::args %pipewire::va-list))

(declaim (inline %pipewire::properties-update))

(cffi:defcfun ("pw_properties_update" %pipewire::properties-update)
              :int
              (%pipewire::oldprops
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::properties-update-ignore))

(cffi:defcfun ("pw_properties_update_ignore"
               %pipewire::properties-update-ignore)
              :int
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::ignore (:pointer :string)))

(declaim (inline %pipewire::properties-update-keys))

(cffi:defcfun ("pw_properties_update_keys"
               %pipewire::properties-update-keys)
              :int
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::keys (:pointer :string)))

(declaim (inline %pipewire::properties-update-string))

(cffi:defcfun ("pw_properties_update_string"
               %pipewire::properties-update-string)
              :int
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::str :string)
              (%pipewire::size %pipewire::size-t))

(cffi:defcstruct (%pipewire::protocol-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8))

(declaim (inline %pipewire::protocol-add-listener))

(cffi:defcfun ("pw_protocol_add_listener"
               %pipewire::protocol-add-listener)
              :void
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::protocol-events)))
              (%pipewire::data (:pointer :void)))

(cffi:defcstruct (%pipewire::protocol-marshal :size 56)
                 (%pipewire::type :string :offset 0)
                 (%pipewire::version %pipewire::uint32-t :offset 8)
                 (%pipewire::flags %pipewire::uint32-t :offset 12)
                 (%pipewire::n-client-methods %pipewire::uint32-t
                  :offset 16)
                 (%pipewire::n-server-methods %pipewire::uint32-t
                  :offset 20)
                 (%pipewire::client-marshal (:pointer :void) :offset
                  24)
                 (%pipewire::server-demarshal (:pointer :void)
                  :offset 32)
                 (%pipewire::server-marshal (:pointer :void) :offset
                  40)
                 (%pipewire::client-demarshal (:pointer :void)
                  :offset 48))

(declaim (inline %pipewire::protocol-add-marshal))

(cffi:defcfun ("pw_protocol_add_marshal"
               %pipewire::protocol-add-marshal)
              :int
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol)))
              (%pipewire::marshal
               (:pointer (:struct %pipewire::protocol-marshal))))

(declaim (inline %pipewire::protocol-destroy))

(cffi:defcfun ("pw_protocol_destroy" %pipewire::protocol-destroy)
              :void
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol))))

(declaim (inline %pipewire::protocol-get-context))

(cffi:defcfun ("pw_protocol_get_context"
               %pipewire::protocol-get-context)
              (:pointer (:struct %pipewire::context))
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol))))

(declaim (inline %pipewire::protocol-get-extension))

(cffi:defcfun ("pw_protocol_get_extension"
               %pipewire::protocol-get-extension)
              (:pointer :void)
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol))))

(cffi:defcstruct (%pipewire::protocol-implementaton :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::new-client (:pointer :void) :offset 8)
                 (%pipewire::add-server (:pointer :void) :offset 16))

(declaim (inline %pipewire::protocol-get-implementation))

(cffi:defcfun ("pw_protocol_get_implementation"
               %pipewire::protocol-get-implementation)
              (:pointer (:struct %pipewire::protocol-implementaton))
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol))))

(declaim (inline %pipewire::protocol-get-marshal))

(cffi:defcfun ("pw_protocol_get_marshal"
               %pipewire::protocol-get-marshal)
              (:pointer (:struct %pipewire::protocol-marshal))
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol)))
              (%pipewire::type :string)
              (%pipewire::version %pipewire::uint32-t)
              (%pipewire::flags %pipewire::uint32-t))

(declaim (inline %pipewire::protocol-get-user-data))

(cffi:defcfun ("pw_protocol_get_user_data"
               %pipewire::protocol-get-user-data)
              (:pointer :void)
              (%pipewire::protocol
               (:pointer (:struct %pipewire::protocol))))

(declaim (inline %pipewire::protocol-new))

(cffi:defcfun ("pw_protocol_new" %pipewire::protocol-new)
              (:pointer (:struct %pipewire::protocol))
              (%pipewire::context
               (:pointer (:struct %pipewire::context)))
              (%pipewire::name :string)
              (%pipewire::user-data-size %pipewire::size-t))

(cffi:defcstruct (%pipewire::proxy-events :size 48)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8)
                 (%pipewire::bound (:pointer :void) :offset 16)
                 (%pipewire::removed (:pointer :void) :offset 24)
                 (%pipewire::done (:pointer :void) :offset 32)
                 (%pipewire::error (:pointer :void) :offset 40))

(declaim (inline %pipewire::proxy-add-listener))

(cffi:defcfun ("pw_proxy_add_listener" %pipewire::proxy-add-listener)
              :void
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::proxy-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::proxy-add-object-listener))

(cffi:defcfun ("pw_proxy_add_object_listener"
               %pipewire::proxy-add-object-listener)
              :void
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::funcs (:pointer :void))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::proxy-destroy))

(cffi:defcfun ("pw_proxy_destroy" %pipewire::proxy-destroy)
              :void
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-error))

(cffi:defcfun ("pw_proxy_error" %pipewire::proxy-error)
              :int
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::res :int)
              (%pipewire::error :string))

(declaim (inline %pipewire::proxy-errorf))

(cffi:defcfun ("pw_proxy_errorf" %pipewire::proxy-errorf)
              :int
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::res :int)
              (%pipewire::error :string)
              &rest)

(declaim (inline %pipewire::proxy-get-bound-id))

(cffi:defcfun ("pw_proxy_get_bound_id" %pipewire::proxy-get-bound-id)
              %pipewire::uint32-t
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-get-id))

(cffi:defcfun ("pw_proxy_get_id" %pipewire::proxy-get-id)
              %pipewire::uint32-t
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-get-marshal))

(cffi:defcfun ("pw_proxy_get_marshal" %pipewire::proxy-get-marshal)
              (:pointer (:struct %pipewire::protocol-marshal))
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(cffi:defcstruct (%pipewire::spa-hook-list :size 16))

(declaim (inline %pipewire::proxy-get-object-listeners))

(cffi:defcfun ("pw_proxy_get_object_listeners"
               %pipewire::proxy-get-object-listeners)
              (:pointer (:struct %pipewire::spa-hook-list))
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-get-protocol))

(cffi:defcfun ("pw_proxy_get_protocol" %pipewire::proxy-get-protocol)
              (:pointer (:struct %pipewire::protocol))
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-get-type))

(cffi:defcfun ("pw_proxy_get_type" %pipewire::proxy-get-type)
              :string
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::version (:pointer %pipewire::uint32-t)))

(declaim (inline %pipewire::proxy-get-user-data))

(cffi:defcfun ("pw_proxy_get_user_data"
               %pipewire::proxy-get-user-data)
              (:pointer :void)
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy))))

(declaim (inline %pipewire::proxy-install-marshal))

(cffi:defcfun ("pw_proxy_install_marshal"
               %pipewire::proxy-install-marshal)
              :int
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::implementor :bool))

(declaim (inline %pipewire::proxy-new))

(cffi:defcfun ("pw_proxy_new" %pipewire::proxy-new)
              (:pointer (:struct %pipewire::proxy))
              (%pipewire::factory
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::type :string)
              (%pipewire::version %pipewire::uint32-t)
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::proxy-set-bound-id))

(cffi:defcfun ("pw_proxy_set_bound_id" %pipewire::proxy-set-bound-id)
              :int
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::global-id %pipewire::uint32-t))

(declaim (inline %pipewire::proxy-sync))

(cffi:defcfun ("pw_proxy_sync" %pipewire::proxy-sync)
              :int
              (%pipewire::proxy
               (:pointer (:struct %pipewire::proxy)))
              (%pipewire::seq :int))

(declaim (inline %pipewire::split-strv))

(cffi:defcfun ("pw_split_strv" %pipewire::split-strv)
              (:pointer :string)
              (%pipewire::str :string)
              (%pipewire::delimiter :string)
              (%pipewire::max-tokens :int)
              (%pipewire::n-tokens (:pointer :int)))

(declaim (inline %pipewire::split-walk))

(cffi:defcfun ("pw_split_walk" %pipewire::split-walk)
              :string
              (%pipewire::str :string)
              (%pipewire::delimiter :string)
              (%pipewire::len (:pointer %pipewire::size-t))
              (%pipewire::state (:pointer :string)))

(cffi:defcstruct (%pipewire::stream :size 0))

(cffi:defcstruct (%pipewire::stream-events :size 80)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8)
                 (%pipewire::state-changed (:pointer :void) :offset
                  16)
                 (%pipewire::control-info (:pointer :void) :offset
                  24)
                 (%pipewire::io-changed (:pointer :void) :offset 32)
                 (%pipewire::param-changed (:pointer :void) :offset
                  40)
                 (%pipewire::add-buffer (:pointer :void) :offset 48)
                 (%pipewire::remove-buffer (:pointer :void) :offset
                  56)
                 (%pipewire::process (:pointer :void) :offset 64)
                 (%pipewire::drained (:pointer :void) :offset 72))

(declaim (inline %pipewire::stream-add-listener))

(cffi:defcfun ("pw_stream_add_listener"
               %pipewire::stream-add-listener)
              :void
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::stream-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::stream-connect))

(cffi:defcfun ("pw_stream_connect" %pipewire::stream-connect)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::direction %pipewire::spa-direction)
              (%pipewire::target-id %pipewire::uint32-t)
              (%pipewire::flags %pipewire::stream-flags)
              (%pipewire::params
               (:pointer (:pointer (:struct %pipewire::spa-pod))))
              (%pipewire::n-params %pipewire::uint32-t))

(declaim (inline %pipewire::stream-dequeue-buffer))

(cffi:defcfun ("pw_stream_dequeue_buffer"
               %pipewire::stream-dequeue-buffer)
              (:pointer (:struct %pipewire::buffer))
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-destroy))

(cffi:defcfun ("pw_stream_destroy" %pipewire::stream-destroy)
              :void
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-disconnect))

(cffi:defcfun ("pw_stream_disconnect" %pipewire::stream-disconnect)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-flush))

(cffi:defcfun ("pw_stream_flush" %pipewire::stream-flush)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::drain :bool))

(declaim (inline %pipewire::stream-get-core))

(cffi:defcfun ("pw_stream_get_core" %pipewire::stream-get-core)
              (:pointer (:struct %pipewire::core))
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-get-name))

(cffi:defcfun ("pw_stream_get_name" %pipewire::stream-get-name)
              :string
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-get-node-id))

(cffi:defcfun ("pw_stream_get_node_id" %pipewire::stream-get-node-id)
              %pipewire::uint32-t
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-get-properties))

(cffi:defcfun ("pw_stream_get_properties"
               %pipewire::stream-get-properties)
              (:pointer (:struct %pipewire::properties))
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream))))

(declaim (inline %pipewire::stream-get-state))

(cffi:defcfun ("pw_stream_get_state" %pipewire::stream-get-state)
              %pipewire::stream-state
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::error (:pointer :string)))

(declaim (inline %pipewire::stream-get-time))

(cffi:defcfun ("pw_stream_get_time" %pipewire::stream-get-time)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::time (:pointer (:struct %pipewire::time))))

(declaim (inline %pipewire::stream-new))

(cffi:defcfun ("pw_stream_new" %pipewire::stream-new)
              (:pointer (:struct %pipewire::stream))
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::properties))))

(declaim (inline %pipewire::stream-new-simple))

(cffi:defcfun ("pw_stream_new_simple" %pipewire::stream-new-simple)
              (:pointer (:struct %pipewire::stream))
              (%pipewire::loop (:pointer (:struct %pipewire::loop)))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::properties)))
              (%pipewire::events
               (:pointer (:struct %pipewire::stream-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::stream-queue-buffer))

(cffi:defcfun ("pw_stream_queue_buffer"
               %pipewire::stream-queue-buffer)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::buffer
               (:pointer (:struct %pipewire::buffer))))

(declaim (inline %pipewire::stream-set-active))

(cffi:defcfun ("pw_stream_set_active" %pipewire::stream-set-active)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::active :bool))

(declaim (inline %pipewire::stream-set-control))

(cffi:defcfun ("pw_stream_set_control" %pipewire::stream-set-control)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::n-values %pipewire::uint32-t)
              (%pipewire::values (:pointer :float))
              &rest)

(declaim (inline %pipewire::stream-set-error))

(cffi:defcfun ("pw_stream_set_error" %pipewire::stream-set-error)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::res :int)
              (%pipewire::error :string)
              &rest)

(declaim (inline %pipewire::stream-state-as-string))

(cffi:defcfun ("pw_stream_state_as_string"
               %pipewire::stream-state-as-string)
              :string
              (%pipewire::state %pipewire::stream-state))

(declaim (inline %pipewire::stream-update-params))

(cffi:defcfun ("pw_stream_update_params"
               %pipewire::stream-update-params)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::params
               (:pointer (:pointer (:struct %pipewire::spa-pod))))
              (%pipewire::n-params %pipewire::uint32-t))

(declaim (inline %pipewire::stream-update-properties))

(cffi:defcfun ("pw_stream_update_properties"
               %pipewire::stream-update-properties)
              :int
              (%pipewire::stream
               (:pointer (:struct %pipewire::stream)))
              (%pipewire::dict
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::strip))

(cffi:defcfun ("pw_strip" %pipewire::strip)
              :string
              (%pipewire::str :string)
              (%pipewire::whitespace :string))

(cffi:defcstruct (%pipewire::thread-loop :size 0))

(declaim (inline %pipewire::thread-loop-accept))

(cffi:defcfun ("pw_thread_loop_accept" %pipewire::thread-loop-accept)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(cffi:defcstruct (%pipewire::thread-loop-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::destroy (:pointer :void) :offset 8))

(declaim (inline %pipewire::thread-loop-add-listener))

(cffi:defcfun ("pw_thread_loop_add_listener"
               %pipewire::thread-loop-add-listener)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop)))
              (%pipewire::listener
               (:pointer (:struct %pipewire::spa-hook)))
              (%pipewire::events
               (:pointer (:struct %pipewire::thread-loop-events)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::thread-loop-destroy))

(cffi:defcfun ("pw_thread_loop_destroy"
               %pipewire::thread-loop-destroy)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-get-loop))

(cffi:defcfun ("pw_thread_loop_get_loop"
               %pipewire::thread-loop-get-loop)
              (:pointer (:struct %pipewire::loop))
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(cffi:defctype %pipewire::%%time-t :long)

(cffi:defctype %pipewire::%%syscall-slong-t :long)

(cffi:defcstruct (%pipewire::timespec :size 16)
                 (%pipewire::tv-sec %pipewire::%%time-t :offset 0)
                 (%pipewire::tv-nsec %pipewire::%%syscall-slong-t
                  :offset 8))

(declaim (inline %pipewire::thread-loop-get-time))

(cffi:defcfun ("pw_thread_loop_get_time"
               %pipewire::thread-loop-get-time)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop)))
              (%pipewire::abstime
               (:pointer (:struct %pipewire::timespec)))
              (%pipewire::timeout %pipewire::int64-t))

(declaim (inline %pipewire::thread-loop-in-thread))

(cffi:defcfun ("pw_thread_loop_in_thread"
               %pipewire::thread-loop-in-thread)
              :bool
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-lock))

(cffi:defcfun ("pw_thread_loop_lock" %pipewire::thread-loop-lock)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-new))

(cffi:defcfun ("pw_thread_loop_new" %pipewire::thread-loop-new)
              (:pointer (:struct %pipewire::thread-loop))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::thread-loop-new-full))

(cffi:defcfun ("pw_thread_loop_new_full"
               %pipewire::thread-loop-new-full)
              (:pointer (:struct %pipewire::thread-loop))
              (%pipewire::loop (:pointer (:struct %pipewire::loop)))
              (%pipewire::name :string)
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict))))

(declaim (inline %pipewire::thread-loop-signal))

(cffi:defcfun ("pw_thread_loop_signal" %pipewire::thread-loop-signal)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop)))
              (%pipewire::wait-for-accept :bool))

(declaim (inline %pipewire::thread-loop-start))

(cffi:defcfun ("pw_thread_loop_start" %pipewire::thread-loop-start)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-stop))

(cffi:defcfun ("pw_thread_loop_stop" %pipewire::thread-loop-stop)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-timed-wait))

(cffi:defcfun ("pw_thread_loop_timed_wait"
               %pipewire::thread-loop-timed-wait)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop)))
              (%pipewire::wait-max-sec :int))

(declaim (inline %pipewire::thread-loop-timed-wait-full))

(cffi:defcfun ("pw_thread_loop_timed_wait_full"
               %pipewire::thread-loop-timed-wait-full)
              :int
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop)))
              (%pipewire::abstime
               (:pointer (:struct %pipewire::timespec))))

(declaim (inline %pipewire::thread-loop-unlock))

(cffi:defcfun ("pw_thread_loop_unlock" %pipewire::thread-loop-unlock)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(declaim (inline %pipewire::thread-loop-wait))

(cffi:defcfun ("pw_thread_loop_wait" %pipewire::thread-loop-wait)
              :void
              (%pipewire::loop
               (:pointer (:struct %pipewire::thread-loop))))

(cffi:defcstruct (%pipewire::spa-type-info :size 24)
                 (%pipewire::type %pipewire::uint32-t :offset 0)
                 (%pipewire::parent %pipewire::uint32-t :offset 4)
                 (%pipewire::name :string :offset 8))

(declaim (inline %pipewire::type-info))

(cffi:defcfun ("pw_type_info" %pipewire::type-info)
              (:pointer (:struct %pipewire::spa-type-info)))

(declaim (inline %pipewire::unload-spa-handle))

(cffi:defcfun ("pw_unload_spa_handle" %pipewire::unload-spa-handle)
              :int
              (%pipewire::handle
               (:pointer (:struct %pipewire::spa-handle))))

(cffi:defcstruct (%pipewire::array :size 32)
                 (%pipewire::data (:pointer :void) :offset 0)
                 (%pipewire::size %pipewire::size-t :offset 8)
                 (%pipewire::alloc %pipewire::size-t :offset 16)
                 (%pipewire::extend %pipewire::size-t :offset 24))

(cffi:defcstruct (%pipewire::client-events :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8)
                 (%pipewire::permissions (:pointer :void) :offset 16))

(cffi:defcstruct (%pipewire::client-methods :size 48)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::error (:pointer :void) :offset 16)
                 (%pipewire::update-properties (:pointer :void)
                  :offset 24)
                 (%pipewire::get-permissions (:pointer :void) :offset
                  32)
                 (%pipewire::update-permissions (:pointer :void)
                  :offset 40))

(cffi:defcstruct (%pipewire::core-events :size 72)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8)
                 (%pipewire::done (:pointer :void) :offset 16)
                 (%pipewire::ping (:pointer :void) :offset 24)
                 (%pipewire::error (:pointer :void) :offset 32)
                 (%pipewire::remove-id (:pointer :void) :offset 40)
                 (%pipewire::bound-id (:pointer :void) :offset 48)
                 (%pipewire::add-mem (:pointer :void) :offset 56)
                 (%pipewire::remove-mem (:pointer :void) :offset 64))

(cffi:defcstruct (%pipewire::core-methods :size 72)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::hello (:pointer :void) :offset 16)
                 (%pipewire::sync (:pointer :void) :offset 24)
                 (%pipewire::pong (:pointer :void) :offset 32)
                 (%pipewire::error (:pointer :void) :offset 40)
                 (%pipewire::get-registry (:pointer :void) :offset
                  48)
                 (%pipewire::create-object (:pointer :void) :offset
                  56)
                 (%pipewire::destroy (:pointer :void) :offset 64))

(cffi:defcstruct (%pipewire::device :size 0))

(cffi:defcstruct (%pipewire::device-events :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8)
                 (%pipewire::param (:pointer :void) :offset 16))

(cffi:defcstruct (%pipewire::device-methods :size 40)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::subscribe-params (:pointer :void)
                  :offset 16)
                 (%pipewire::enum-params (:pointer :void) :offset 24)
                 (%pipewire::set-param (:pointer :void) :offset 32))

(cffi:defcstruct (%pipewire::factory :size 0))

(cffi:defcstruct (%pipewire::factory-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::factory-methods :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::impl-client :size 0))

(cffi:defcstruct (%pipewire::impl-core :size 0))

(cffi:defcstruct (%pipewire::link :size 0))

(cffi:defcstruct (%pipewire::link-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::link-methods :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::map :size 40)
                 (%pipewire::items (:struct %pipewire::array) :offset
                  0)
                 (%pipewire::free-list %pipewire::uint32-t :offset
                  32))

(cffi:defcstruct (%pipewire::map-range :size 12)
                 (%pipewire::start %pipewire::uint32-t :offset 0)
                 (%pipewire::offset %pipewire::uint32-t :offset 4)
                 (%pipewire::size %pipewire::uint32-t :offset 8))

(cffi:defcstruct (%pipewire::memchunk :size 0))

(cffi:defcstruct (%pipewire::module :size 0))

(cffi:defcstruct (%pipewire::module-events :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::module-methods :size 16)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8))

(cffi:defcstruct (%pipewire::node :size 0))

(cffi:defcstruct (%pipewire::node-events :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8)
                 (%pipewire::param (:pointer :void) :offset 16))

(cffi:defcstruct (%pipewire::node-methods :size 48)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::subscribe-params (:pointer :void)
                  :offset 16)
                 (%pipewire::enum-params (:pointer :void) :offset 24)
                 (%pipewire::set-param (:pointer :void) :offset 32)
                 (%pipewire::send-command (:pointer :void) :offset
                  40))

(cffi:defcstruct (%pipewire::permission :size 8)
                 (%pipewire::id %pipewire::uint32-t :offset 0)
                 (%pipewire::permissions %pipewire::uint32-t :offset
                  4))

(cffi:defcstruct (%pipewire::port :size 0))

(cffi:defcstruct (%pipewire::port-events :size 24)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::info (:pointer :void) :offset 8)
                 (%pipewire::param (:pointer :void) :offset 16))

(cffi:defcstruct (%pipewire::port-methods :size 32)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::subscribe-params (:pointer :void)
                  :offset 16)
                 (%pipewire::enum-params (:pointer :void) :offset 24))

(cffi:defcstruct (%pipewire::protocol-client :size 80)
                 (%pipewire::protocol
                  (:pointer (:struct %pipewire::protocol)) :offset
                  16)
                 (%pipewire::core
                  (:pointer (:struct %pipewire::core)) :offset 24)
                 (%pipewire::connect (:pointer :void) :offset 32)
                 (%pipewire::connect-fd (:pointer :void) :offset 40)
                 (%pipewire::steal-fd (:pointer :void) :offset 48)
                 (%pipewire::disconnect (:pointer :void) :offset 56)
                 (%pipewire::destroy (:pointer :void) :offset 64)
                 (%pipewire::set-paused (:pointer :void) :offset 72))

(cffi:defcstruct (%pipewire::protocol-server :size 56)
                 (%pipewire::protocol
                  (:pointer (:struct %pipewire::protocol)) :offset
                  16)
                 (%pipewire::core
                  (:pointer (:struct %pipewire::impl-core)) :offset
                  24)
                 (%pipewire::destroy (:pointer :void) :offset 48))

(cffi:defcstruct (%pipewire::registry-methods :size 32)
                 (%pipewire::version %pipewire::uint32-t :offset 0)
                 (%pipewire::add-listener (:pointer :void) :offset 8)
                 (%pipewire::bind (:pointer :void) :offset 16)
                 (%pipewire::destroy (:pointer :void) :offset 24))

(cffi:defcstruct (%pipewire::stream-control :size 40)
                 (%pipewire::name :string :offset 0)
                 (%pipewire::flags %pipewire::uint32-t :offset 8)
                 (%pipewire::def :float :offset 12)
                 (%pipewire::min :float :offset 16)
                 (%pipewire::max :float :offset 20)
                 (%pipewire::values (:pointer :float) :offset 24)
                 (%pipewire::n-values %pipewire::uint32-t :offset 32)
                 (%pipewire::max-values %pipewire::uint32-t :offset
                  36))

(cffi:defcunion (%pipewire::map-item :size 8)
                (%pipewire::next %pipewire::uint32-t)
                (%pipewire::data (:pointer :void)))

(define-symbol-macro
  %pipewire::*log-level*
  (let ((%pipewire::ptr
         (cffi:foreign-symbol-pointer "pw_log_level")))
    (when %pipewire::ptr
      (cffi:mem-ref %pipewire::ptr '%pipewire::spa-log-level))))

(declaim (inline %pipewire::array-add))

(cffi:defcfun ("__claw_pw_array_add" %pipewire::array-add)
              (:pointer :void)
              (%pipewire::arr (:pointer (:struct %pipewire::array)))
              (%pipewire::size %pipewire::size-t))

(declaim (inline %pipewire::array-add-fixed))

(cffi:defcfun ("__claw_pw_array_add_fixed"
               %pipewire::array-add-fixed)
              (:pointer :void)
              (%pipewire::arr (:pointer (:struct %pipewire::array)))
              (%pipewire::size %pipewire::size-t))

(declaim (inline %pipewire::array-clear))

(cffi:defcfun ("__claw_pw_array_clear" %pipewire::array-clear)
              :void
              (%pipewire::arr (:pointer (:struct %pipewire::array))))

(declaim (inline %pipewire::array-ensure-size))

(cffi:defcfun ("__claw_pw_array_ensure_size"
               %pipewire::array-ensure-size)
              :int
              (%pipewire::arr (:pointer (:struct %pipewire::array)))
              (%pipewire::size %pipewire::size-t))

(declaim (inline %pipewire::array-init))

(cffi:defcfun ("__claw_pw_array_init" %pipewire::array-init)
              :void
              (%pipewire::arr (:pointer (:struct %pipewire::array)))
              (%pipewire::extend %pipewire::size-t))

(declaim (inline %pipewire::array-reset))

(cffi:defcfun ("__claw_pw_array_reset" %pipewire::array-reset)
              :void
              (%pipewire::arr (:pointer (:struct %pipewire::array))))

(declaim (inline %pipewire::core-create-object))

(cffi:defcfun ("__claw_pw_core_create_object"
               %pipewire::core-create-object)
              (:pointer :void)
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::factory-name :string)
              (%pipewire::type :string)
              (%pipewire::version %pipewire::uint32-t)
              (%pipewire::props
               (:pointer (:struct %pipewire::spa-dict)))
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::core-errorf))

(cffi:defcfun ("__claw_pw_core_errorf" %pipewire::core-errorf)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::seq :int)
              (%pipewire::res :int)
              (%pipewire::message :string)
              &rest)

(declaim (inline %pipewire::core-errorv))

(cffi:defcfun ("__claw_pw_core_errorv" %pipewire::core-errorv)
              :int
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::seq :int)
              (%pipewire::res :int)
              (%pipewire::message :string)
              (%pipewire::args %pipewire::va-list))

(declaim (inline %pipewire::core-get-registry))

(cffi:defcfun ("__claw_pw_core_get_registry"
               %pipewire::core-get-registry)
              (:pointer (:struct %pipewire::registry))
              (%pipewire::core (:pointer (:struct %pipewire::core)))
              (%pipewire::version %pipewire::uint32-t)
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::registry-bind))

(cffi:defcfun ("__claw_pw_registry_bind" %pipewire::registry-bind)
              (:pointer :void)
              (%pipewire::registry
               (:pointer (:struct %pipewire::registry)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::type :string)
              (%pipewire::version %pipewire::uint32-t)
              (%pipewire::user-data-size %pipewire::size-t))

(declaim (inline %pipewire::map-clear))

(cffi:defcfun ("__claw_pw_map_clear" %pipewire::map-clear)
              :void
              (%pipewire::map (:pointer (:struct %pipewire::map))))

(declaim (inline %pipewire::map-for-each))

(cffi:defcfun ("__claw_pw_map_for_each" %pipewire::map-for-each)
              :int
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::func (:pointer :void))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::map-init))

(cffi:defcfun ("__claw_pw_map_init" %pipewire::map-init)
              :void
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::size %pipewire::size-t)
              (%pipewire::extend %pipewire::size-t))

(declaim (inline %pipewire::map-insert-at))

(cffi:defcfun ("__claw_pw_map_insert_at" %pipewire::map-insert-at)
              :int
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::id %pipewire::uint32-t)
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::map-insert-new))

(cffi:defcfun ("__claw_pw_map_insert_new" %pipewire::map-insert-new)
              %pipewire::uint32-t
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::data (:pointer :void)))

(declaim (inline %pipewire::map-lookup))

(cffi:defcfun ("__claw_pw_map_lookup" %pipewire::map-lookup)
              (:pointer :void)
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::id %pipewire::uint32-t))

(declaim (inline %pipewire::map-remove))

(cffi:defcfun ("__claw_pw_map_remove" %pipewire::map-remove)
              :void
              (%pipewire::map (:pointer (:struct %pipewire::map)))
              (%pipewire::id %pipewire::uint32-t))

(declaim (inline %pipewire::map-reset))

(cffi:defcfun ("__claw_pw_map_reset" %pipewire::map-reset)
              :void
              (%pipewire::map (:pointer (:struct %pipewire::map))))

(declaim (inline %pipewire::map-range-init))

(cffi:defcfun ("__claw_pw_map_range_init" %pipewire::map-range-init)
              :void
              (%pipewire::range
               (:pointer (:struct %pipewire::map-range)))
              (%pipewire::offset %pipewire::uint32-t)
              (%pipewire::size %pipewire::uint32-t)
              (%pipewire::page-size %pipewire::uint32-t))

(declaim (inline %pipewire::memblock-unref))

(cffi:defcfun ("__claw_pw_memblock_unref" %pipewire::memblock-unref)
              :void
              (%pipewire::mem
               (:pointer (:struct %pipewire::memblock))))

(declaim (inline %pipewire::properties-parse-bool))

(cffi:defcfun ("__claw_pw_properties_parse_bool"
               %pipewire::properties-parse-bool)
              :bool
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-parse-double))

(cffi:defcfun ("__claw_pw_properties_parse_double"
               %pipewire::properties-parse-double)
              :double
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-parse-float))

(cffi:defcfun ("__claw_pw_properties_parse_float"
               %pipewire::properties-parse-float)
              :float
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-parse-int))

(cffi:defcfun ("__claw_pw_properties_parse_int"
               %pipewire::properties-parse-int)
              :int
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-parse-int64))

(cffi:defcfun ("__claw_pw_properties_parse_int64"
               %pipewire::properties-parse-int64)
              %pipewire::int64-t
              (%pipewire::value :string))

(declaim (inline %pipewire::properties-parse-uint64))

(cffi:defcfun ("__claw_pw_properties_parse_uint64"
               %pipewire::properties-parse-uint64)
              %pipewire::uint64-t
              (%pipewire::value :string))

(cffi:defctype %pipewire::destroy-t (:pointer :void))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%pipewire::+version-node+ "%PIPEWIRE")
  (export '%pipewire::mempool-find-ptr "%PIPEWIRE")
  (export '%pipewire::array-clear "%PIPEWIRE")
  (export '%pipewire::context-load-spa-handle "%PIPEWIRE")
  (export '%pipewire::+port-event-param+ "%PIPEWIRE")
  (export '%pipewire::steal-fd "%PIPEWIRE")
  (export '%pipewire::data-loop-get-loop "%PIPEWIRE")
  (export '%pipewire::+version-module+ "%PIPEWIRE")
  (export '%pipewire::+key-node-max-latency+ "%PIPEWIRE")
  (export '%pipewire::+key-access+ "%PIPEWIRE")
  (export '%pipewire::+key-device-name+ "%PIPEWIRE")
  (export '%pipewire::+type-interface-registry+ "%PIPEWIRE")
  (export '%pipewire::+key-media-name+ "%PIPEWIRE")
  (export '%pipewire::thread-loop-unlock "%PIPEWIRE")
  (export '%pipewire::+key-node-cache-params+ "%PIPEWIRE")
  (export '%pipewire::+key-core-monitors+ "%PIPEWIRE")
  (export '%pipewire::proxy-sync "%PIPEWIRE")
  (export '%pipewire::protocol-server "%PIPEWIRE")
  (export '%pipewire::+core-event-remove-mem+ "%PIPEWIRE")
  (export '%pipewire::+version-registry+ "%PIPEWIRE")
  (export '%pipewire::+direction+ "%PIPEWIRE")
  (export '%pipewire::link "%PIPEWIRE")
  (export '%pipewire::port-info "%PIPEWIRE")
  (export '%pipewire::port-info-free "%PIPEWIRE")
  (export '%pipewire::thread-loop-start "%PIPEWIRE")
  (export '%pipewire::node-events "%PIPEWIRE")
  (export '%pipewire::stream-connect "%PIPEWIRE")
  (export '%pipewire::+key-audio-rate+ "%PIPEWIRE")
  (export '%pipewire::main-loop-get-loop "%PIPEWIRE")
  (export '%pipewire::core-get-user-data "%PIPEWIRE")
  (export '%pipewire::+major+ "%PIPEWIRE")
  (export '%pipewire::+client-event-permissions+ "%PIPEWIRE")
  (export '%pipewire::+node-method-set-param+ "%PIPEWIRE")
  (export '%pipewire::+core-event-info+ "%PIPEWIRE")
  (export '%pipewire::thread-loop-new-full "%PIPEWIRE")
  (export '%pipewire::+key-app-id+ "%PIPEWIRE")
  (export '%pipewire::link-info-update "%PIPEWIRE")
  (export '%pipewire::+key-device-product-name+ "%PIPEWIRE")
  (export '%pipewire::filter-queue-buffer "%PIPEWIRE")
  (export '%pipewire::device-info-free "%PIPEWIRE")
  (export '%pipewire::array-ensure-size "%PIPEWIRE")
  (export '%pipewire::properties-new-dict "%PIPEWIRE")
  (export '%pipewire::get-permissions "%PIPEWIRE")
  (export '%pipewire::permissions "%PIPEWIRE")
  (export '%pipewire::stream-control "%PIPEWIRE")
  (export '%pipewire::+key-core-daemon+ "%PIPEWIRE")
  (export '%pipewire::proxy-get-user-data "%PIPEWIRE")
  (export '%pipewire::proxy-get-protocol "%PIPEWIRE")
  (export '%pipewire::+version-factory-methods+ "%PIPEWIRE")
  (export '%pipewire::+version-main-loop-events+ "%PIPEWIRE")
  (export '%pipewire::stream-update-properties "%PIPEWIRE")
  (export '%pipewire::proxy-error "%PIPEWIRE")
  (export '%pipewire::tag "%PIPEWIRE")
  (export '%pipewire::time "%PIPEWIRE")
  (export '%pipewire::filter-get-node-id "%PIPEWIRE")
  (export '%pipewire::+buffers-flag-shared+ "%PIPEWIRE")
  (export '%pipewire::+key-app-process-binary+ "%PIPEWIRE")
  (export '%pipewire::func "%PIPEWIRE")
  (export '%pipewire::context-find-export-type "%PIPEWIRE")
  (export '%pipewire::core-get-client "%PIPEWIRE")
  (export '%pipewire::spa-invoke-func-t "%PIPEWIRE")
  (export '%pipewire::bound-id "%PIPEWIRE")
  (export '%pipewire::protocol-get-marshal "%PIPEWIRE")
  (export '%pipewire::+permission-format+ "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-output-ports+ "%PIPEWIRE")
  (export '%pipewire::stream-new "%PIPEWIRE")
  (export '%pipewire::stream-dequeue-buffer "%PIPEWIRE")
  (export '%pipewire::properties-copy "%PIPEWIRE")
  (export '%pipewire::stream-get-core "%PIPEWIRE")
  (export '%pipewire::+type-info-protocol-base+ "%PIPEWIRE")
  (export '%pipewire::+key-audio-channel+ "%PIPEWIRE")
  (export '%pipewire::+key-device-id+ "%PIPEWIRE")
  (export '%pipewire::+key-node-always-process+ "%PIPEWIRE")
  (export '%pipewire::get-prgname "%PIPEWIRE")
  (export '%pipewire::spa-handle "%PIPEWIRE")
  (export '%pipewire::+key-node-description+ "%PIPEWIRE")
  (export '%pipewire::proxy-install-marshal "%PIPEWIRE")
  (export '%pipewire::filter-add-port "%PIPEWIRE")
  (export '%pipewire::context "%PIPEWIRE")
  (export '%pipewire::proxy-new "%PIPEWIRE")
  (export '%pipewire::+key-app-process-user+ "%PIPEWIRE")
  (export '%pipewire::+node-event-param+ "%PIPEWIRE")
  (export '%pipewire::+version-registry-events+ "%PIPEWIRE")
  (export '%pipewire::properties-parse-bool "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::+key-node-latency+ "%PIPEWIRE")
  (export '%pipewire::node-info-update "%PIPEWIRE")
  (export '%pipewire::+key-module-author+ "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-input-ports+ "%PIPEWIRE")
  (export '%pipewire::protocol "%PIPEWIRE")
  (export '%pipewire::+key-node-autoconnect+ "%PIPEWIRE")
  (export '%pipewire::+registry-method-bind+ "%PIPEWIRE")
  (export '%pipewire::max "%PIPEWIRE")
  (export '%pipewire::+key-port-alias+ "%PIPEWIRE")
  (export '%pipewire::stream-add-listener "%PIPEWIRE")
  (export '%pipewire::proxy-events "%PIPEWIRE")
  (export '%pipewire::global-removed "%PIPEWIRE")
  (export '%pipewire::context-connect-self "%PIPEWIRE")
  (export '%pipewire::+key-link-output-port+ "%PIPEWIRE")
  (export '%pipewire::filter-set-error "%PIPEWIRE")
  (export '%pipewire::max-input-ports "%PIPEWIRE")
  (export '%pipewire::properties-parse-double "%PIPEWIRE")
  (export '%pipewire::size "%PIPEWIRE")
  (export '%pipewire::update-properties "%PIPEWIRE")
  (export '%pipewire::client-methods "%PIPEWIRE")
  (export '%pipewire::+client-method-num+ "%PIPEWIRE")
  (export '%pipewire::+core-method-destroy+ "%PIPEWIRE")
  (export '%pipewire::+key-factory-type-version+ "%PIPEWIRE")
  (export '%pipewire::get-client-name "%PIPEWIRE")
  (export '%pipewire::+key-device-vendor-id+ "%PIPEWIRE")
  (export '%pipewire::registry-bind "%PIPEWIRE")
  (export '%pipewire::+key-stream-latency-max+ "%PIPEWIRE")
  (export '%pipewire::array-init "%PIPEWIRE")
  (export '%pipewire::+core-method-pong+ "%PIPEWIRE")
  (export '%pipewire::process "%PIPEWIRE")
  (export '%pipewire::+key-video-rate+ "%PIPEWIRE")
  (export '%pipewire::+key-audio-format+ "%PIPEWIRE")
  (export '%pipewire::remove-buffer "%PIPEWIRE")
  (export '%pipewire::removed "%PIPEWIRE")
  (export '%pipewire::add-server "%PIPEWIRE")
  (export '%pipewire::type-info "%PIPEWIRE")
  (export '%pipewire::va-list "%PIPEWIRE")
  (export '%pipewire::+version-filter-events+ "%PIPEWIRE")
  (export '%pipewire::+api-version+ "%PIPEWIRE")
  (export '%pipewire::link-events "%PIPEWIRE")
  (export '%pipewire::n-output-ports "%PIPEWIRE")
  (export '%pipewire::+version-port+ "%PIPEWIRE")
  (export '%pipewire::+node-event-num+ "%PIPEWIRE")
  (export '%pipewire::+device-event-num+ "%PIPEWIRE")
  (export '%pipewire::+id-core+ "%PIPEWIRE")
  (export '%pipewire::stream-events "%PIPEWIRE")
  (export '%pipewire::id "%PIPEWIRE")
  (export '%pipewire::+registry-event-global-remove+ "%PIPEWIRE")
  (export '%pipewire::min "%PIPEWIRE")
  (export '%pipewire::+device-event-param+ "%PIPEWIRE")
  (export '%pipewire::+key-device-product-id+ "%PIPEWIRE")
  (export '%pipewire::map-lookup "%PIPEWIRE")
  (export '%pipewire::remove-mem "%PIPEWIRE")
  (export '%pipewire::main-loop-add-listener "%PIPEWIRE")
  (export '%pipewire::+key-context-profile-modules+ "%PIPEWIRE")
  (export '%pipewire::+module-event-num+ "%PIPEWIRE")
  (export '%pipewire::properties-new "%PIPEWIRE")
  (export '%pipewire::+version-factory-events+ "%PIPEWIRE")
  (export '%pipewire::properties "%PIPEWIRE")
  (export '%pipewire::+key-cpu-max-align+ "%PIPEWIRE")
  (export '%pipewire::+link-event-info+ "%PIPEWIRE")
  (export '%pipewire::+version-protocol-implementation+ "%PIPEWIRE")
  (export '%pipewire::+key-media-title+ "%PIPEWIRE")
  (export '%pipewire::split-walk "%PIPEWIRE")
  (export '%pipewire::spa-support "%PIPEWIRE")
  (export '%pipewire::properties-iterate "%PIPEWIRE")
  (export '%pipewire::thread-loop-in-thread "%PIPEWIRE")
  (export '%pipewire::spa-pod "%PIPEWIRE")
  (export '%pipewire::sync "%PIPEWIRE")
  (export '%pipewire::+node-method-subscribe-params+ "%PIPEWIRE")
  (export '%pipewire::+device-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::context-register-export-type "%PIPEWIRE")
  (export '%pipewire::+key-device-nick+ "%PIPEWIRE")
  (export '%pipewire::pool "%PIPEWIRE")
  (export '%pipewire::+key-device-form-factor+ "%PIPEWIRE")
  (export '%pipewire::+buffers-flag-none+ "%PIPEWIRE")
  (export '%pipewire::+key-video-format+ "%PIPEWIRE")
  (export '%pipewire::+key-app-process-id+ "%PIPEWIRE")
  (export '%pipewire::hello "%PIPEWIRE")
  (export '%pipewire::start "%PIPEWIRE")
  (export '%pipewire::data-loop "%PIPEWIRE")
  (export '%pipewire::+key-link-feedback+ "%PIPEWIRE")
  (export '%pipewire::loop-new "%PIPEWIRE")
  (export '%pipewire::thread-loop-wait "%PIPEWIRE")
  (export '%pipewire::port-events "%PIPEWIRE")
  (export '%pipewire::+version-context-events+ "%PIPEWIRE")
  (export '%pipewire::impl-client "%PIPEWIRE")
  (export '%pipewire::+device-method-set-param+ "%PIPEWIRE")
  (export '%pipewire::+micro+ "%PIPEWIRE")
  (export '%pipewire::main-loop-new "%PIPEWIRE")
  (export '%pipewire::+perm-rwx+ "%PIPEWIRE")
  (export '%pipewire::memchunk "%PIPEWIRE")
  (export '%pipewire::memmap-free "%PIPEWIRE")
  (export '%pipewire::properties-new-string "%PIPEWIRE")
  (export '%pipewire::+client-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::buffers "%PIPEWIRE")
  (export '%pipewire::stream-disconnect "%PIPEWIRE")
  (export '%pipewire::port-info-update "%PIPEWIRE")
  (export '%pipewire::stream-get-time "%PIPEWIRE")
  (export '%pipewire::+version-protocol-events+ "%PIPEWIRE")
  (export '%pipewire::factory-methods "%PIPEWIRE")
  (export '%pipewire::+key-media-category+ "%PIPEWIRE")
  (export '%pipewire::ptr "%PIPEWIRE")
  (export '%pipewire::get-user-name "%PIPEWIRE")
  (export '%pipewire::+key-client-api+ "%PIPEWIRE")
  (export '%pipewire::+port-method-num+ "%PIPEWIRE")
  (export '%pipewire::state-changed "%PIPEWIRE")
  (export '%pipewire::+key-port-cache-params+ "%PIPEWIRE")
  (export '%pipewire::context-get-conf-section "%PIPEWIRE")
  (export '%pipewire::spa-dict "%PIPEWIRE")
  (export '%pipewire::+key-app-process-machine-id+ "%PIPEWIRE")
  (export '%pipewire::+key-media-format+ "%PIPEWIRE")
  (export '%pipewire::filter-destroy "%PIPEWIRE")
  (export '%pipewire::+key-node-group+ "%PIPEWIRE")
  (export '%pipewire::uint64-t "%PIPEWIRE")
  (export '%pipewire::+version-port-events+ "%PIPEWIRE")
  (export '%pipewire::context-connect "%PIPEWIRE")
  (export '%pipewire::proxy-add-listener "%PIPEWIRE")
  (export '%pipewire::+key-link-id+ "%PIPEWIRE")
  (export '%pipewire::+key-app-icon-name+ "%PIPEWIRE")
  (export '%pipewire::+version-data-loop-events+ "%PIPEWIRE")
  (export '%pipewire::+perm-invalid+ "%PIPEWIRE")
  (export '%pipewire::+key-core-id+ "%PIPEWIRE")
  (export '%pipewire::+key-device-api+ "%PIPEWIRE")
  (export '%pipewire::+node-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::+type-info-interface-base+ "%PIPEWIRE")
  (export '%pipewire::module-methods "%PIPEWIRE")
  (export '%pipewire::thread-loop-get-time "%PIPEWIRE")
  (export '%pipewire::properties-add-keys "%PIPEWIRE")
  (export '%pipewire::core-disconnect "%PIPEWIRE")
  (export '%pipewire::filter-add-listener "%PIPEWIRE")
  (export '%pipewire::protocol-marshal "%PIPEWIRE")
  (export '%pipewire::factory-info-update "%PIPEWIRE")
  (export '%pipewire::+core-method-create-object+ "%PIPEWIRE")
  (export '%pipewire::memblock-map "%PIPEWIRE")
  (export '%pipewire::+port-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::proxy-errorf "%PIPEWIRE")
  (export '%pipewire::map-clear "%PIPEWIRE")
  (export '%pipewire::+core-event-remove-id+ "%PIPEWIRE")
  (export '%pipewire::array-add-fixed "%PIPEWIRE")
  (export '%pipewire::+key-client-name+ "%PIPEWIRE")
  (export '%pipewire::+type-interface-client+ "%PIPEWIRE")
  (export '%pipewire::map-reset "%PIPEWIRE")
  (export '%pipewire::context-update-properties "%PIPEWIRE")
  (export '%pipewire::update-permissions "%PIPEWIRE")
  (export '%pipewire::+key-media-role+ "%PIPEWIRE")
  (export '%pipewire::link-state "%PIPEWIRE")
  (export '%pipewire::context-find-global "%PIPEWIRE")
  (export '%pipewire::+key-remote-intention+ "%PIPEWIRE")
  (export '%pipewire::output-port-id "%PIPEWIRE")
  (export '%pipewire::port-methods "%PIPEWIRE")
  (export '%pipewire::properties-parse-float "%PIPEWIRE")
  (export '%pipewire::registry "%PIPEWIRE")
  (export '%pipewire::+core-method-hello+ "%PIPEWIRE")
  (export '%pipewire::spa-log "%PIPEWIRE")
  (export '%pipewire::max-output-ports "%PIPEWIRE")
  (export '%pipewire::+key-module-id+ "%PIPEWIRE")
  (export '%pipewire::+version-link-methods+ "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-state+ "%PIPEWIRE")
  (export '%pipewire::+key-video-size+ "%PIPEWIRE")
  (export '%pipewire::+perm-w+ "%PIPEWIRE")
  (export '%pipewire::properties-free "%PIPEWIRE")
  (export '%pipewire::+type-info-interface+ "%PIPEWIRE")
  (export '%pipewire::core-create-object "%PIPEWIRE")
  (export '%pipewire::+key-app-version+ "%PIPEWIRE")
  (export '%pipewire::param "%PIPEWIRE")
  (export '%pipewire::+key-media-artist+ "%PIPEWIRE")
  (export '%pipewire::int64-t "%PIPEWIRE")
  (export '%pipewire::context-events "%PIPEWIRE")
  (export '%pipewire::filter-connect "%PIPEWIRE")
  (export '%pipewire::map-for-each "%PIPEWIRE")
  (export '%pipewire::filter-get-core "%PIPEWIRE")
  (export '%pipewire::set-paused "%PIPEWIRE")
  (export '%pipewire::get-interface "%PIPEWIRE")
  (export '%pipewire::+key-node-id+ "%PIPEWIRE")
  (export '%pipewire::stream-new-simple "%PIPEWIRE")
  (export '%pipewire::server-demarshal "%PIPEWIRE")
  (export '%pipewire::core "%PIPEWIRE")
  (export '%pipewire::host-name "%PIPEWIRE")
  (export '%pipewire::proxy-get-id "%PIPEWIRE")
  (export '%pipewire::+key-sec-pid+ "%PIPEWIRE")
  (export '%pipewire::properties-parse-int64 "%PIPEWIRE")
  (export '%pipewire::map-init "%PIPEWIRE")
  (export '%pipewire::create-object "%PIPEWIRE")
  (export '%pipewire::+key-device-vendor-name+ "%PIPEWIRE")
  (export '%pipewire::+perm-all+ "%PIPEWIRE")
  (export '%pipewire::proxy-set-bound-id "%PIPEWIRE")
  (export '%pipewire::+type-info-object-base+ "%PIPEWIRE")
  (export '%pipewire::memmap-flags "%PIPEWIRE")
  (export '%pipewire::+key-device-class+ "%PIPEWIRE")
  (export '%pipewire::map-range-init "%PIPEWIRE")
  (export '%pipewire::+port-event-num+ "%PIPEWIRE")
  (export '%pipewire::gp-offset "%PIPEWIRE")
  (export '%pipewire::name "%PIPEWIRE")
  (export '%pipewire::filter-get-dsp-buffer "%PIPEWIRE")
  (export '%pipewire::items "%PIPEWIRE")
  (export '%pipewire::client-events "%PIPEWIRE")
  (export '%pipewire::loop-destroy "%PIPEWIRE")
  (export '%pipewire::main-loop-events "%PIPEWIRE")
  (export '%pipewire::+link-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::+version-stream-events+ "%PIPEWIRE")
  (export '%pipewire::+core-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::done "%PIPEWIRE")
  (export '%pipewire::thread-loop-lock "%PIPEWIRE")
  (export '%pipewire::data-loop-destroy "%PIPEWIRE")
  (export '%pipewire::+device-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::mem "%PIPEWIRE")
  (export '%pipewire::thread-loop-timed-wait "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-params+ "%PIPEWIRE")
  (export '%pipewire::delay "%PIPEWIRE")
  (export '%pipewire::link-info-free "%PIPEWIRE")
  (export '%pipewire::+core-method-sync+ "%PIPEWIRE")
  (export '%pipewire::+device-method-enum-params+ "%PIPEWIRE")
  (export '%pipewire::loop "%PIPEWIRE")
  (export '%pipewire::filter-events "%PIPEWIRE")
  (export '%pipewire::args "%PIPEWIRE")
  (export '%pipewire::ref "%PIPEWIRE")
  (export '%pipewire::stream-state "%PIPEWIRE")
  (export '%pipewire::*log-level* "%PIPEWIRE")
  (export '%pipewire::+key-app-language+ "%PIPEWIRE")
  (export '%pipewire::link-info "%PIPEWIRE")
  (export '%pipewire::+key-stream-latency-min+ "%PIPEWIRE")
  (export '%pipewire::+module-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::+key-config-name+ "%PIPEWIRE")
  (export '%pipewire::n-values "%PIPEWIRE")
  (export '%pipewire::+id-any+ "%PIPEWIRE")
  (export '%pipewire::+client-event-num+ "%PIPEWIRE")
  (export '%pipewire::client-demarshal "%PIPEWIRE")
  (export '%pipewire::+key-node-dont-reconnect+ "%PIPEWIRE")
  (export '%pipewire::thread-loop-timed-wait-full "%PIPEWIRE")
  (export '%pipewire::+key-port-monitor+ "%PIPEWIRE")
  (export '%pipewire::buffers-negotiate "%PIPEWIRE")
  (export '%pipewire::uint32-t "%PIPEWIRE")
  (export '%pipewire::+key-media-software+ "%PIPEWIRE")
  (export '%pipewire::info "%PIPEWIRE")
  (export '%pipewire::device-events "%PIPEWIRE")
  (export '%pipewire::+key-device-intended-roles+ "%PIPEWIRE")
  (export '%pipewire::+key-link-input-node+ "%PIPEWIRE")
  (export '%pipewire::filter "%PIPEWIRE")
  (export '%pipewire::get-registry "%PIPEWIRE")
  (export '%pipewire::device-methods "%PIPEWIRE")
  (export '%pipewire::filter-flush "%PIPEWIRE")
  (export '%pipewire::version "%PIPEWIRE")
  (export '%pipewire::client-marshal "%PIPEWIRE")
  (export '%pipewire::core-errorf "%PIPEWIRE")
  (export '%pipewire::memblock-flags "%PIPEWIRE")
  (export '%pipewire::+factory-event-num+ "%PIPEWIRE")
  (export '%pipewire::+client-method-get-permissions+ "%PIPEWIRE")
  (export '%pipewire::memblock-unref "%PIPEWIRE")
  (export '%pipewire::+core-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::filter-get-name "%PIPEWIRE")
  (export '%pipewire::protocol-get-implementation "%PIPEWIRE")
  (export '%pipewire::+key-link-input-port+ "%PIPEWIRE")
  (export '%pipewire::context-get-object "%PIPEWIRE")
  (export '%pipewire::main-loop-quit "%PIPEWIRE")
  (export '%pipewire::data-loop-start "%PIPEWIRE")
  (export '%pipewire::+version-client+ "%PIPEWIRE")
  (export '%pipewire::+key-user-name+ "%PIPEWIRE")
  (export '%pipewire::+factory-method-num+ "%PIPEWIRE")
  (export '%pipewire::values "%PIPEWIRE")
  (export '%pipewire::export-type "%PIPEWIRE")
  (export '%pipewire::+module-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::direction-reverse "%PIPEWIRE")
  (export '%pipewire::%%va-list-tag "%PIPEWIRE")
  (export '%pipewire::flags "%PIPEWIRE")
  (export '%pipewire::+port-event-info+ "%PIPEWIRE")
  (export '%pipewire::+node-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::+registry-method-destroy+ "%PIPEWIRE")
  (export '%pipewire::output-node-id "%PIPEWIRE")
  (export '%pipewire::+key-device-bus+ "%PIPEWIRE")
  (export '%pipewire::+key-node-pause-on-idle+ "%PIPEWIRE")
  (export '%pipewire::+factory-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::send-command "%PIPEWIRE")
  (export '%pipewire::log-log "%PIPEWIRE")
  (export '%pipewire::get-application-name "%PIPEWIRE")
  (export '%pipewire::proxy-destroy "%PIPEWIRE")
  (export '%pipewire::protocol-destroy "%PIPEWIRE")
  (export '%pipewire::thread-loop-new "%PIPEWIRE")
  (export '%pipewire::protocol-get-user-data "%PIPEWIRE")
  (export '%pipewire::+key-priority-session+ "%PIPEWIRE")
  (export '%pipewire::filter-port-flags "%PIPEWIRE")
  (export '%pipewire::global "%PIPEWIRE")
  (export '%pipewire::+key-library-name-dbus+ "%PIPEWIRE")
  (export '%pipewire::module-events "%PIPEWIRE")
  (export '%pipewire::array "%PIPEWIRE")
  (export '%pipewire::+port-change-mask-params+ "%PIPEWIRE")
  (export '%pipewire::+key-protocol+ "%PIPEWIRE")
  (export '%pipewire::impl-core "%PIPEWIRE")
  (export '%pipewire::registry-add-listener "%PIPEWIRE")
  (export '%pipewire::module-info-update "%PIPEWIRE")
  (export '%pipewire::+key-sec-label+ "%PIPEWIRE")
  (export '%pipewire::protocol-client "%PIPEWIRE")
  (export '%pipewire::data-loop-wait "%PIPEWIRE")
  (export '%pipewire::thread-loop-get-loop "%PIPEWIRE")
  (export '%pipewire::n-buffers "%PIPEWIRE")
  (export '%pipewire::deinit "%PIPEWIRE")
  (export '%pipewire::+key-module-version+ "%PIPEWIRE")
  (export '%pipewire::+client-event-info+ "%PIPEWIRE")
  (export '%pipewire::input-node-id "%PIPEWIRE")
  (export '%pipewire::control-info "%PIPEWIRE")
  (export '%pipewire::+type-info-protocol+ "%PIPEWIRE")
  (export '%pipewire::timespec "%PIPEWIRE")
  (export '%pipewire::next "%PIPEWIRE")
  (export '%pipewire::+key-device-serial+ "%PIPEWIRE")
  (export '%pipewire::split-strv "%PIPEWIRE")
  (export '%pipewire::mempool-find-fd "%PIPEWIRE")
  (export '%pipewire::n-client-methods "%PIPEWIRE")
  (export '%pipewire::global-remove "%PIPEWIRE")
  (export '%pipewire::context-new "%PIPEWIRE")
  (export '%pipewire::+type-info-base+ "%PIPEWIRE")
  (export '%pipewire::buffers-clear "%PIPEWIRE")
  (export '%pipewire::get-library-version "%PIPEWIRE")
  (export '%pipewire::destroy "%PIPEWIRE")
  (export '%pipewire::client-info-free "%PIPEWIRE")
  (export '%pipewire::+type-interface-node+ "%PIPEWIRE")
  (export '%pipewire::+direction-input+ "%PIPEWIRE")
  (export '%pipewire::+perm-m+ "%PIPEWIRE")
  (export '%pipewire::core-info "%PIPEWIRE")
  (export '%pipewire::+key-port-name+ "%PIPEWIRE")
  (export '%pipewire::tv-nsec "%PIPEWIRE")
  (export '%pipewire::subscribe-params "%PIPEWIRE")
  (export '%pipewire::filter-dequeue-buffer "%PIPEWIRE")
  (export '%pipewire::spa-hook "%PIPEWIRE")
  (export '%pipewire::connect "%PIPEWIRE")
  (export '%pipewire::+port-method-subscribe-params+ "%PIPEWIRE")
  (export '%pipewire::+version-link+ "%PIPEWIRE")
  (export '%pipewire::properties-parse-uint64 "%PIPEWIRE")
  (export '%pipewire::core-errorv "%PIPEWIRE")
  (export '%pipewire::context-connect-fd "%PIPEWIRE")
  (export '%pipewire::stream-set-error "%PIPEWIRE")
  (export '%pipewire::context-set-object "%PIPEWIRE")
  (export '%pipewire::+core-event-ping+ "%PIPEWIRE")
  (export '%pipewire::+perm-rwxm+ "%PIPEWIRE")
  (export '%pipewire::user-data "%PIPEWIRE")
  (export '%pipewire::+link-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::+version-device-events+ "%PIPEWIRE")
  (export '%pipewire::+core-method-error+ "%PIPEWIRE")
  (export '%pipewire::core-events "%PIPEWIRE")
  (export '%pipewire::strip "%PIPEWIRE")
  (export '%pipewire::+key-node-stream+ "%PIPEWIRE")
  (export '%pipewire::node-methods "%PIPEWIRE")
  (export '%pipewire::+key-device-bus-path+ "%PIPEWIRE")
  (export '%pipewire::data-loop-invoke "%PIPEWIRE")
  (export '%pipewire::+key-sec-uid+ "%PIPEWIRE")
  (export '%pipewire::protocol-add-listener "%PIPEWIRE")
  (export '%pipewire::parent "%PIPEWIRE")
  (export '%pipewire::enum-params "%PIPEWIRE")
  (export '%pipewire::thread-loop-signal "%PIPEWIRE")
  (export '%pipewire::+type-interface-module+ "%PIPEWIRE")
  (export '%pipewire::mempool-add-listener "%PIPEWIRE")
  (export '%pipewire::load-spa-handle "%PIPEWIRE")
  (export '%pipewire::fd "%PIPEWIRE")
  (export '%pipewire::properties-update "%PIPEWIRE")
  (export '%pipewire::io-changed "%PIPEWIRE")
  (export '%pipewire::+direction-output+ "%PIPEWIRE")
  (export '%pipewire::n-items "%PIPEWIRE")
  (export '%pipewire::filter-update-properties "%PIPEWIRE")
  (export '%pipewire::new-client "%PIPEWIRE")
  (export '%pipewire::filter-set-active "%PIPEWIRE")
  (export '%pipewire::port "%PIPEWIRE")
  (export '%pipewire::stream-queue-buffer "%PIPEWIRE")
  (export '%pipewire::data-loop-add-listener "%PIPEWIRE")
  (export '%pipewire::+key-port-control+ "%PIPEWIRE")
  (export '%pipewire::reg-save-area "%PIPEWIRE")
  (export '%pipewire::properties-clear "%PIPEWIRE")
  (export '%pipewire::+registry-event-num+ "%PIPEWIRE")
  (export '%pipewire::properties-update-string "%PIPEWIRE")
  (export '%pipewire::+core-method-num+ "%PIPEWIRE")
  (export '%pipewire::+key-device-icon-name+ "%PIPEWIRE")
  (export '%pipewire::core-info-update "%PIPEWIRE")
  (export '%pipewire::server-marshal "%PIPEWIRE")
  (export '%pipewire::+key-app-icon+ "%PIPEWIRE")
  (export '%pipewire::device-info "%PIPEWIRE")
  (export '%pipewire::+client-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::props "%PIPEWIRE")
  (export '%pipewire::+key-factory-type-name+ "%PIPEWIRE")
  (export '%pipewire::+device-method-subscribe-params+ "%PIPEWIRE")
  (export '%pipewire::+core-event-done+ "%PIPEWIRE")
  (export '%pipewire::debug-is-category-enabled "%PIPEWIRE")
  (export '%pipewire::in-valgrind "%PIPEWIRE")
  (export '%pipewire::thread-loop-destroy "%PIPEWIRE")
  (export '%pipewire::+node-event-info+ "%PIPEWIRE")
  (export '%pipewire::core-get-properties "%PIPEWIRE")
  (export '%pipewire::error "%PIPEWIRE")
  (export '%pipewire::filter-state-as-string "%PIPEWIRE")
  (export '%pipewire::get-host-name "%PIPEWIRE")
  (export '%pipewire::node-state-as-string "%PIPEWIRE")
  (export '%pipewire::+key-device-icon+ "%PIPEWIRE")
  (export '%pipewire::mempool-remove-id "%PIPEWIRE")
  (export '%pipewire::filename "%PIPEWIRE")
  (export '%pipewire::+core-event-bound-id+ "%PIPEWIRE")
  (export '%pipewire::module "%PIPEWIRE")
  (export '%pipewire::+version-client-events+ "%PIPEWIRE")
  (export '%pipewire::+version-module-methods+ "%PIPEWIRE")
  (export '%pipewire::+type-interface-device+ "%PIPEWIRE")
  (export '%pipewire::proxy "%PIPEWIRE")
  (export '%pipewire::+perm-x+ "%PIPEWIRE")
  (export '%pipewire::tv-sec "%PIPEWIRE")
  (export '%pipewire::mempool-destroy "%PIPEWIRE")
  (export '%pipewire::+device-event-info+ "%PIPEWIRE")
  (export '%pipewire::pong "%PIPEWIRE")
  (export '%pipewire::+link-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::protocol-events "%PIPEWIRE")
  (export '%pipewire::+key-media-copyright+ "%PIPEWIRE")
  (export '%pipewire::mempool-events "%PIPEWIRE")
  (export '%pipewire::map-insert-at "%PIPEWIRE")
  (export '%pipewire::client-info-update "%PIPEWIRE")
  (export '%pipewire::main-loop "%PIPEWIRE")
  (export '%pipewire::n-server-methods "%PIPEWIRE")
  (export '%pipewire::mempool-find-tag "%PIPEWIRE")
  (export '%pipewire::core-info-free "%PIPEWIRE")
  (export '%pipewire::max-values "%PIPEWIRE")
  (export '%pipewire::context-find-protocol "%PIPEWIRE")
  (export '%pipewire::+core-event-error+ "%PIPEWIRE")
  (export '%pipewire::+key-device-plugged+ "%PIPEWIRE")
  (export '%pipewire::filter-state "%PIPEWIRE")
  (export '%pipewire::+key-core-name+ "%PIPEWIRE")
  (export '%pipewire::+key-format-dsp+ "%PIPEWIRE")
  (export '%pipewire::core-update-properties "%PIPEWIRE")
  (export '%pipewire::priv "%PIPEWIRE")
  (export '%pipewire::+buffers-flag-no-mem+ "%PIPEWIRE")
  (export '%pipewire::+version-module-events+ "%PIPEWIRE")
  (export '%pipewire::map-item "%PIPEWIRE")
  (export '%pipewire::+key-node-target+ "%PIPEWIRE")
  (export '%pipewire::+key-port-extra+ "%PIPEWIRE")
  (export '%pipewire::+link-change-mask-format+ "%PIPEWIRE")
  (export '%pipewire::thread-loop-accept "%PIPEWIRE")
  (export '%pipewire::+factory-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::+buffers-flag-dynamic+ "%PIPEWIRE")
  (export '%pipewire::add-buffer "%PIPEWIRE")
  (export '%pipewire::+key-module-name+ "%PIPEWIRE")
  (export '%pipewire::+key-stream-monitor+ "%PIPEWIRE")
  (export '%pipewire::buffer "%PIPEWIRE")
  (export '%pipewire::log-set "%PIPEWIRE")
  (export '%pipewire::queued "%PIPEWIRE")
  (export '%pipewire::+key-app-process-host+ "%PIPEWIRE")
  (export '%pipewire::+link-event-num+ "%PIPEWIRE")
  (export '%pipewire::stream-flags "%PIPEWIRE")
  (export '%pipewire::thread-loop-add-listener "%PIPEWIRE")
  (export '%pipewire::stream-state-as-string "%PIPEWIRE")
  (export '%pipewire::+factory-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::mempool-clear "%PIPEWIRE")
  (export '%pipewire::data-loop-exit "%PIPEWIRE")
  (export '%pipewire::stream-set-control "%PIPEWIRE")
  (export '%pipewire::filter-new-simple "%PIPEWIRE")
  (export '%pipewire::filter-get-properties "%PIPEWIRE")
  (export '%pipewire::+minor+ "%PIPEWIRE")
  (export '%pipewire::+core-event-num+ "%PIPEWIRE")
  (export '%pipewire::param-changed "%PIPEWIRE")
  (export '%pipewire::map-insert-new "%PIPEWIRE")
  (export '%pipewire::global-added "%PIPEWIRE")
  (export '%pipewire::+key-node-driver+ "%PIPEWIRE")
  (export '%pipewire::+version-device-methods+ "%PIPEWIRE")
  (export '%pipewire::+key-device-subsystem+ "%PIPEWIRE")
  (export '%pipewire::properties-get "%PIPEWIRE")
  (export '%pipewire::extend "%PIPEWIRE")
  (export '%pipewire::get-support "%PIPEWIRE")
  (export '%pipewire::clear "%PIPEWIRE")
  (export '%pipewire::alloc "%PIPEWIRE")
  (export '%pipewire::remove-id "%PIPEWIRE")
  (export '%pipewire::spa-node "%PIPEWIRE")
  (export '%pipewire::factory-info "%PIPEWIRE")
  (export '%pipewire::properties-setf "%PIPEWIRE")
  (export '%pipewire::core-get-mempool "%PIPEWIRE")
  (export '%pipewire::free "%PIPEWIRE")
  (export '%pipewire::context-for-each-global "%PIPEWIRE")
  (export '%pipewire::link-state-as-string "%PIPEWIRE")
  (export '%pipewire::added "%PIPEWIRE")
  (export '%pipewire::spa-type-info "%PIPEWIRE")
  (export '%pipewire::map-remove "%PIPEWIRE")
  (export '%pipewire::protocol-implementaton "%PIPEWIRE")
  (export '%pipewire::user-name "%PIPEWIRE")
  (export '%pipewire::+key-device-description+ "%PIPEWIRE")
  (export '%pipewire::protocol-get-context "%PIPEWIRE")
  (export '%pipewire::+registry-method-num+ "%PIPEWIRE")
  (export '%pipewire::node "%PIPEWIRE")
  (export '%pipewire::data-loop-in-thread "%PIPEWIRE")
  (export '%pipewire::stream-get-properties "%PIPEWIRE")
  (export '%pipewire::offset "%PIPEWIRE")
  (export '%pipewire::stream-get-name "%PIPEWIRE")
  (export '%pipewire::log-set-level "%PIPEWIRE")
  (export '%pipewire::stream-get-state "%PIPEWIRE")
  (export '%pipewire::module-info "%PIPEWIRE")
  (export '%pipewire::filter-remove-port "%PIPEWIRE")
  (export '%pipewire::core-methods "%PIPEWIRE")
  (export '%pipewire::factory-events "%PIPEWIRE")
  (export '%pipewire::+key-port-id+ "%PIPEWIRE")
  (export '%pipewire::+core-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::+key-config-prefix+ "%PIPEWIRE")
  (export '%pipewire::filter-new "%PIPEWIRE")
  (export '%pipewire::context-get-properties "%PIPEWIRE")
  (export '%pipewire::client "%PIPEWIRE")
  (export '%pipewire::+client-method-error+ "%PIPEWIRE")
  (export '%pipewire::+registry-event-global+ "%PIPEWIRE")
  (export '%pipewire::+version-link-events+ "%PIPEWIRE")
  (export '%pipewire::+key-media-type+ "%PIPEWIRE")
  (export '%pipewire::+port-change-mask-props+ "%PIPEWIRE")
  (export '%pipewire::stream-flush "%PIPEWIRE")
  (export '%pipewire::def "%PIPEWIRE")
  (export '%pipewire::mempool-map-id "%PIPEWIRE")
  (export '%pipewire::+key-object-id+ "%PIPEWIRE")
  (export '%pipewire::core-find-proxy "%PIPEWIRE")
  (export '%pipewire::+device-change-mask-params+ "%PIPEWIRE")
  (export '%pipewire::+type-interface-link+ "%PIPEWIRE")
  (export '%pipewire::array-add "%PIPEWIRE")
  (export '%pipewire::+key-module-description+ "%PIPEWIRE")
  (export '%pipewire::filter-get-state "%PIPEWIRE")
  (export '%pipewire::+map-range-init+ "%PIPEWIRE")
  (export '%pipewire::mempool-alloc "%PIPEWIRE")
  (export '%pipewire::+version-core-methods+ "%PIPEWIRE")
  (export '%pipewire::+key-media-icon-name+ "%PIPEWIRE")
  (export '%pipewire::+key-stream-capture-sink+ "%PIPEWIRE")
  (export '%pipewire::+key-node-session+ "%PIPEWIRE")
  (export '%pipewire::bind "%PIPEWIRE")
  (export '%pipewire::memmap "%PIPEWIRE")
  (export '%pipewire::data-loop-new "%PIPEWIRE")
  (export '%pipewire::registry-methods "%PIPEWIRE")
  (export '%pipewire::spa-log-level "%PIPEWIRE")
  (export '%pipewire::device "%PIPEWIRE")
  (export '%pipewire::spa-direction "%PIPEWIRE")
  (export '%pipewire::type "%PIPEWIRE")
  (export '%pipewire::ticks "%PIPEWIRE")
  (export '%pipewire::context-get-support "%PIPEWIRE")
  (export '%pipewire::+version-factory+ "%PIPEWIRE")
  (export '%pipewire::+node-method-send-command+ "%PIPEWIRE")
  (export '%pipewire::core-set-paused "%PIPEWIRE")
  (export '%pipewire::spa-hook-list "%PIPEWIRE")
  (export '%pipewire::+key-library-name-loop+ "%PIPEWIRE")
  (export '%pipewire::properties-parse-int "%PIPEWIRE")
  (export '%pipewire::mempool "%PIPEWIRE")
  (export '%pipewire::ping "%PIPEWIRE")
  (export '%pipewire::overflow-arg-area "%PIPEWIRE")
  (export '%pipewire::+key-stream-is-live+ "%PIPEWIRE")
  (export '%pipewire::connect-fd "%PIPEWIRE")
  (export '%pipewire::change-mask "%PIPEWIRE")
  (export '%pipewire::+key-device-cache-params+ "%PIPEWIRE")
  (export '%pipewire::core-get-registry "%PIPEWIRE")
  (export '%pipewire::data-loop-events "%PIPEWIRE")
  (export '%pipewire::+key-stream-dont-remix+ "%PIPEWIRE")
  (export '%pipewire::data "%PIPEWIRE")
  (export '%pipewire::block "%PIPEWIRE")
  (export '%pipewire::+key-factory-usage+ "%PIPEWIRE")
  (export '%pipewire::proxy-get-type "%PIPEWIRE")
  (export '%pipewire::direction-as-string "%PIPEWIRE")
  (export '%pipewire::+key-remote-name+ "%PIPEWIRE")
  (export '%pipewire::%%syscall-slong-t "%PIPEWIRE")
  (export '%pipewire::+factory-event-info+ "%PIPEWIRE")
  (export '%pipewire::map "%PIPEWIRE")
  (export '%pipewire::memblock-free "%PIPEWIRE")
  (export '%pipewire::+key-app-name+ "%PIPEWIRE")
  (export '%pipewire::proxy-add-object-listener "%PIPEWIRE")
  (export '%pipewire::+key-window-x11-display+ "%PIPEWIRE")
  (export '%pipewire::core-steal-fd "%PIPEWIRE")
  (export '%pipewire::mempool-import-map "%PIPEWIRE")
  (export '%pipewire::init "%PIPEWIRE")
  (export '%pipewire::+key-object-linger+ "%PIPEWIRE")
  (export '%pipewire::main-loop-run "%PIPEWIRE")
  (export '%pipewire::thread-loop-stop "%PIPEWIRE")
  (export '%pipewire::+version-port-methods+ "%PIPEWIRE")
  (export '%pipewire::stream-get-node-id "%PIPEWIRE")
  (export '%pipewire::+client-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::permission "%PIPEWIRE")
  (export '%pipewire::filter-disconnect "%PIPEWIRE")
  (export '%pipewire::+type-interface-port+ "%PIPEWIRE")
  (export '%pipewire::+key-node-exclusive+ "%PIPEWIRE")
  (export '%pipewire::+key-media-comment+ "%PIPEWIRE")
  (export '%pipewire::+version-client-methods+ "%PIPEWIRE")
  (export '%pipewire::+module-method-num+ "%PIPEWIRE")
  (export '%pipewire::+key-node-plugged+ "%PIPEWIRE")
  (export '%pipewire::+version-mempool-events+ "%PIPEWIRE")
  (export '%pipewire::protocol-add-marshal "%PIPEWIRE")
  (export '%pipewire::+module-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::node-info-free "%PIPEWIRE")
  (export '%pipewire::context-destroy "%PIPEWIRE")
  (export '%pipewire::context-get-user-data "%PIPEWIRE")
  (export '%pipewire::+key-port-direction+ "%PIPEWIRE")
  (export '%pipewire::drained "%PIPEWIRE")
  (export '%pipewire::node-info "%PIPEWIRE")
  (export '%pipewire::+key-device-string+ "%PIPEWIRE")
  (export '%pipewire::+version-registry-methods+ "%PIPEWIRE")
  (export '%pipewire::+key-link-passive+ "%PIPEWIRE")
  (export '%pipewire::+version-thread-loop-events+ "%PIPEWIRE")
  (export '%pipewire::registry-events "%PIPEWIRE")
  (export '%pipewire::core-get-context "%PIPEWIRE")
  (export '%pipewire::cookie "%PIPEWIRE")
  (export '%pipewire::device-info-update "%PIPEWIRE")
  (export '%pipewire::+key-node-nick+ "%PIPEWIRE")
  (export '%pipewire::size-t "%PIPEWIRE")
  (export '%pipewire::factory "%PIPEWIRE")
  (export '%pipewire::module-info-free "%PIPEWIRE")
  (export '%pipewire::+key-link-output-node+ "%PIPEWIRE")
  (export '%pipewire::input-port-id "%PIPEWIRE")
  (export '%pipewire::+default-remote+ "%PIPEWIRE")
  (export '%pipewire::filter-flags "%PIPEWIRE")
  (export '%pipewire::+version-proxy-events+ "%PIPEWIRE")
  (export '%pipewire::add-mem "%PIPEWIRE")
  (export '%pipewire::thread-loop "%PIPEWIRE")
  (export '%pipewire::+node-method-enum-params+ "%PIPEWIRE")
  (export '%pipewire::link-methods "%PIPEWIRE")
  (export '%pipewire::bound "%PIPEWIRE")
  (export '%pipewire::map-range "%PIPEWIRE")
  (export '%pipewire::+key-app-process-session-id+ "%PIPEWIRE")
  (export '%pipewire::+version-node-methods+ "%PIPEWIRE")
  (export '%pipewire::proxy-get-object-listeners "%PIPEWIRE")
  (export '%pipewire::properties-update-ignore "%PIPEWIRE")
  (export '%pipewire::main-loop-destroy "%PIPEWIRE")
  (export '%pipewire::node-state "%PIPEWIRE")
  (export '%pipewire::properties-set "%PIPEWIRE")
  (export '%pipewire::+key-audio-channels+ "%PIPEWIRE")
  (export '%pipewire::client-info "%PIPEWIRE")
  (export '%pipewire::+module-event-info+ "%PIPEWIRE")
  (export '%pipewire::mempool-import "%PIPEWIRE")
  (export '%pipewire::context-add-spa-lib "%PIPEWIRE")
  (export '%pipewire::+registry-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::+device-method-add-listener+ "%PIPEWIRE")
  (export '%pipewire::+key-sec-gid+ "%PIPEWIRE")
  (export '%pipewire::+key-object-path+ "%PIPEWIRE")
  (export '%pipewire::+port-change-mask-all+ "%PIPEWIRE")
  (export '%pipewire::+key-media-class+ "%PIPEWIRE")
  (export '%pipewire::log-get "%PIPEWIRE")
  (export '%pipewire::+key-factory-name+ "%PIPEWIRE")
  (export '%pipewire::+node-method-num+ "%PIPEWIRE")
  (export '%pipewire::state "%PIPEWIRE")
  (export '%pipewire::mempool-new "%PIPEWIRE")
  (export '%pipewire::filter-get-time "%PIPEWIRE")
  (export '%pipewire::now "%PIPEWIRE")
  (export '%pipewire::fp-offset "%PIPEWIRE")
  (export '%pipewire::n-params "%PIPEWIRE")
  (export '%pipewire::+key-cpu-cores+ "%PIPEWIRE")
  (export '%pipewire::protocol-get-extension "%PIPEWIRE")
  (export '%pipewire::stream-update-params "%PIPEWIRE")
  (export '%pipewire::+key-media-date+ "%PIPEWIRE")
  (export '%pipewire::+id-client+ "%PIPEWIRE")
  (export '%pipewire::+link-method-num+ "%PIPEWIRE")
  (export '%pipewire::+protocol-marshal-flag-impl+ "%PIPEWIRE")
  (export '%pipewire::+link-change-mask-state+ "%PIPEWIRE")
  (export '%pipewire::+key-module-usage+ "%PIPEWIRE")
  (export '%pipewire::core-export "%PIPEWIRE")
  (export '%pipewire::+key-core-version+ "%PIPEWIRE")
  (export '%pipewire::stream-set-active "%PIPEWIRE")
  (export '%pipewire::proxy-get-bound-id "%PIPEWIRE")
  (export '%pipewire::set-param "%PIPEWIRE")
  (export '%pipewire::+key-factory-id+ "%PIPEWIRE")
  (export '%pipewire::+key-host-name+ "%PIPEWIRE")
  (export '%pipewire::proxy-get-marshal "%PIPEWIRE")
  (export '%pipewire::+type-interface-factory+ "%PIPEWIRE")
  (export '%pipewire::log-logv "%PIPEWIRE")
  (export '%pipewire::context-add-listener "%PIPEWIRE")
  (export '%pipewire::+perm-r+ "%PIPEWIRE")
  (export '%pipewire::+key-client-access+ "%PIPEWIRE")
  (export '%pipewire::protocol-new "%PIPEWIRE")
  (export '%pipewire::factory-info-free "%PIPEWIRE")
  (export '%pipewire::filter-update-params "%PIPEWIRE")
  (export '%pipewire::+core-event-add-mem+ "%PIPEWIRE")
  (export '%pipewire::+key-client-id+ "%PIPEWIRE")
  (export '%pipewire::+client-method-update-permissions+ "%PIPEWIRE")
  (export '%pipewire::context-find-spa-lib "%PIPEWIRE")
  (export '%pipewire::+key-library-name-system+ "%PIPEWIRE")
  (export '%pipewire::destroy-t "%PIPEWIRE")
  (export '%pipewire::free-list "%PIPEWIRE")
  (export '%pipewire::memblock "%PIPEWIRE")
  (export '%pipewire::+key-node-name+ "%PIPEWIRE")
  (export '%pipewire::+port-method-enum-params+ "%PIPEWIRE")
  (export '%pipewire::+version-device+ "%PIPEWIRE")
  (export '%pipewire::unload-spa-handle "%PIPEWIRE")
  (export '%pipewire::+key-media-language+ "%PIPEWIRE")
  (export '%pipewire::+device-method-num+ "%PIPEWIRE")
  (export '%pipewire::+version-node-events+ "%PIPEWIRE")
  (export '%pipewire::check-access "%PIPEWIRE")
  (export '%pipewire::%%time-t "%PIPEWIRE")
  (export '%pipewire::data-loop-stop "%PIPEWIRE")
  (export '%pipewire::mempool-import-block "%PIPEWIRE")
  (export '%pipewire::+type-info-object+ "%PIPEWIRE")
  (export '%pipewire::n-input-ports "%PIPEWIRE")
  (export '%pipewire::+type-interface-core+ "%PIPEWIRE")
  (export '%pipewire::properties-update-keys "%PIPEWIRE")
  (export '%pipewire::context-get-main-loop "%PIPEWIRE")
  (export '%pipewire::properties-add "%PIPEWIRE")
  (export '%pipewire::free-strv "%PIPEWIRE")
  (export '%pipewire::array-reset "%PIPEWIRE")
  (export '%pipewire::+key-port-physical+ "%PIPEWIRE")
  (export '%pipewire::+key-port-terminal+ "%PIPEWIRE")
  (export '%pipewire::mempool-find-id "%PIPEWIRE")
  (export '%pipewire::stream "%PIPEWIRE")
  (export '%pipewire::thread-loop-events "%PIPEWIRE")
  (export '%pipewire::+key-media-icon+ "%PIPEWIRE")
  (export '%pipewire::properties-setva "%PIPEWIRE")
  (export '%pipewire::disconnect "%PIPEWIRE")
  (export '%pipewire::+core-method-get-registry+ "%PIPEWIRE")
  (export '%pipewire::+version-core-events+ "%PIPEWIRE")
  (export '%pipewire::+version-core+ "%PIPEWIRE")
  (export '%pipewire::add-listener "%PIPEWIRE")
  (export '%pipewire::stream-destroy "%PIPEWIRE")
  (export '%pipewire::+client-method-update-properties+ "%PIPEWIRE")
  (export '%pipewire::+key-media-filename+ "%PIPEWIRE")
  (export '%pipewire::+key-priority-driver+ "%PIPEWIRE"))

(defun %pipewire::initialize-claw-library-claw-pipewire/wrapper ()
  (unless (zerop (cffi:foreign-funcall
                   "__claw_claw_pipewire_wrapper_loader_96C098A1239E35BD6E9E94EF56D5"
                   :int))
    (error "Failed to initialize adapater")))

