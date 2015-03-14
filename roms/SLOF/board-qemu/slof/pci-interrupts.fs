
: pci-gen-irq-map-one ( prop-addr prop-len slot pin -- prop-addr prop-len )
        2dup + 4 mod                                        ( prop-addr prop-len slot pin parentpin )
        get-node >space
        pci-addr2dev + 1- 4 mod 1+  \ do swizzling          ( prop-addr prop-len slot pin swizzledpin )
        >r >r >r                                            ( prop-addr prop-len R: swizzledpin pin slot )

        r> B lshift encode-int+
        0 encode-64+                \ device slot           ( prop-addr prop-len R: swizzledpin pin )
        r> encode-int+              \ device pin            ( prop-addr prop-len R: swizzledpin )

        get-parent encode-int+      \ parent phandle
        0 encode-int+ 0 encode-64+  \ parent slot
        r> encode-int+              \ parent swizzled pin   ( prop-addr prop-len R: )
;

: pci-gen-irq-entry ( prop-addr prop-len config-addr -- prop-addr prop-len )
        pci-addr2dev 4 mod          ( prop-addr prop-len slot )
        -rot                        ( slot prop-addr prop-len )
        5 1 DO
                2 pick i            ( slot prop-addr prop-len slot pin )
                pci-gen-irq-map-one
        LOOP
        rot drop
;

: pci-set-irq-line ( config-addr -- )
  drop
;
