(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (type $iiFv (func (param i32 i32 f64)))
 (import "env" "memory" (memory $0 0))
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "config" "BGR_ALIVE" (global $assembly/config/BGR_ALIVE i32))
 (import "config" "BGR_DEAD" (global $assembly/config/BGR_DEAD i32))
 (import "config" "BIT_ROT" (global $assembly/config/BIT_ROT i32))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (func $assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/index.ts:29:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:29:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:30:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:30:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:31:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:31:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:31:14
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:34:2
  (block $break|0
   ;;@ assembly/index.ts:34:7
   (set_local $2
    ;;@ assembly/index.ts:34:15
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:34:18
      (i32.lt_s
       (get_local $2)
       ;;@ assembly/index.ts:34:22
       (get_global $assembly/index/h)
      )
     )
    )
    ;;@ assembly/index.ts:35:4
    (block $break|1
     ;;@ assembly/index.ts:35:9
     (set_local $3
      ;;@ assembly/index.ts:35:17
      (i32.const 0)
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.eqz
        ;;@ assembly/index.ts:35:20
        (i32.lt_s
         (get_local $3)
         ;;@ assembly/index.ts:35:24
         (get_global $assembly/index/w)
        )
       )
      )
      ;;@ assembly/index.ts:36:6
      (block $assembly/index/set|inlined.0
       (set_local $4
        ;;@ assembly/index.ts:36:16
        (if (result i32)
         (f64.gt
          ;;@ assembly/index.ts:36:21
          (call $~lib/bindings/Math/random)
          ;;@ assembly/index.ts:36:32
          (f64.const 0.1)
         )
         ;;@ assembly/index.ts:36:38
         (i32.and
          (get_global $assembly/config/BGR_DEAD)
          ;;@ assembly/index.ts:36:49
          (i32.const 16777215)
         )
         ;;@ assembly/index.ts:36:62
         (i32.or
          (get_global $assembly/config/BGR_ALIVE)
          ;;@ assembly/index.ts:36:74
          (i32.const -16777216)
         )
        )
       )
       ;;@ assembly/index.ts:17:2
       (i32.store
        ;;@ assembly/index.ts:17:13
        (i32.shl
         (i32.add
          ;;@ assembly/index.ts:17:14
          (i32.add
           (get_global $assembly/index/s)
           ;;@ assembly/index.ts:17:18
           (i32.mul
            (get_local $2)
            ;;@ assembly/index.ts:17:22
            (get_global $assembly/index/w)
           )
          )
          ;;@ assembly/index.ts:17:26
          (get_local $3)
         )
         ;;@ assembly/index.ts:17:32
         (i32.const 2)
        )
        ;;@ assembly/index.ts:17:35
        (get_local $4)
       )
      )
      ;;@ assembly/index.ts:35:27
      (set_local $3
       (i32.add
        ;;@ assembly/index.ts:35:29
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    ;;@ assembly/index.ts:34:25
    (set_local $2
     (i32.add
      ;;@ assembly/index.ts:34:27
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/step (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (set_local $0
   ;;@ assembly/index.ts:43:12
   (i32.sub
    (get_global $assembly/index/h)
    ;;@ assembly/index.ts:43:16
    (i32.const 1)
   )
  )
  (set_local $1
   ;;@ assembly/index.ts:44:12
   (i32.sub
    (get_global $assembly/index/w)
    ;;@ assembly/index.ts:44:16
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:48:2
  (block $break|0
   ;;@ assembly/index.ts:48:7
   (set_local $2
    ;;@ assembly/index.ts:48:15
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:48:18
      (i32.lt_s
       (get_local $2)
       ;;@ assembly/index.ts:48:22
       (get_global $assembly/index/h)
      )
     )
    )
    ;;@ assembly/index.ts:48:30
    (block
     (set_local $3
      ;;@ assembly/index.ts:49:14
      (if (result i32)
       (i32.eq
        (get_local $2)
        ;;@ assembly/index.ts:49:19
        (i32.const 0)
       )
       ;;@ assembly/index.ts:49:23
       (get_local $0)
       ;;@ assembly/index.ts:49:29
       (i32.sub
        (get_local $2)
        ;;@ assembly/index.ts:49:33
        (i32.const 1)
       )
      )
     )
     (set_local $4
      ;;@ assembly/index.ts:50:14
      (if (result i32)
       (i32.eq
        (get_local $2)
        ;;@ assembly/index.ts:50:19
        (get_local $0)
       )
       ;;@ assembly/index.ts:50:25
       (i32.const 0)
       ;;@ assembly/index.ts:50:29
       (i32.add
        (get_local $2)
        ;;@ assembly/index.ts:50:33
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/index.ts:51:4
     (block $break|1
      ;;@ assembly/index.ts:51:9
      (set_local $5
       ;;@ assembly/index.ts:51:17
       (i32.const 0)
      )
      (loop $repeat|1
       (br_if $break|1
        (i32.eqz
         ;;@ assembly/index.ts:51:20
         (i32.lt_s
          (get_local $5)
          ;;@ assembly/index.ts:51:24
          (get_global $assembly/index/w)
         )
        )
       )
       ;;@ assembly/index.ts:51:32
       (block
        (set_local $6
         ;;@ assembly/index.ts:52:16
         (if (result i32)
          (i32.eq
           (get_local $5)
           ;;@ assembly/index.ts:52:21
           (i32.const 0)
          )
          ;;@ assembly/index.ts:52:25
          (get_local $1)
          ;;@ assembly/index.ts:52:31
          (i32.sub
           (get_local $5)
           ;;@ assembly/index.ts:52:35
           (i32.const 1)
          )
         )
        )
        (set_local $7
         ;;@ assembly/index.ts:53:16
         (if (result i32)
          (i32.eq
           (get_local $5)
           ;;@ assembly/index.ts:53:21
           (get_local $1)
          )
          ;;@ assembly/index.ts:53:27
          (i32.const 0)
          ;;@ assembly/index.ts:53:31
          (i32.add
           (get_local $5)
           ;;@ assembly/index.ts:53:35
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/index.ts:57:6
        (set_local $8
         ;;@ assembly/index.ts:57:27
         (i32.add
          ;;@ assembly/index.ts:58:8
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.and
                 ;;@ assembly/index.ts:58:9
                 (block $assembly/index/get|inlined.0 (result i32)
                  (i32.load
                   (i32.shl
                    (i32.add
                     (i32.mul
                      (get_local $3)
                      (get_global $assembly/index/w)
                     )
                     (get_local $6)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                 ;;@ assembly/index.ts:58:25
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:58:30
                (i32.and
                 ;;@ assembly/index.ts:58:31
                 (block $assembly/index/get|inlined.1 (result i32)
                  (i32.load
                   (i32.shl
                    (i32.add
                     (i32.mul
                      (get_local $3)
                      (get_global $assembly/index/w)
                     )
                     (get_local $5)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                 ;;@ assembly/index.ts:58:47
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:58:52
               (i32.and
                ;;@ assembly/index.ts:58:53
                (block $assembly/index/get|inlined.2 (result i32)
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $3)
                     (get_global $assembly/index/w)
                    )
                    (get_local $7)
                   )
                   (i32.const 2)
                  )
                 )
                )
                ;;@ assembly/index.ts:58:69
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:59:8
              (i32.and
               ;;@ assembly/index.ts:59:9
               (block $assembly/index/get|inlined.3 (result i32)
                (i32.load
                 (i32.shl
                  (i32.add
                   (i32.mul
                    (get_local $2)
                    (get_global $assembly/index/w)
                   )
                   (get_local $6)
                  )
                  (i32.const 2)
                 )
                )
               )
               ;;@ assembly/index.ts:59:25
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:59:52
             (i32.and
              ;;@ assembly/index.ts:59:53
              (block $assembly/index/get|inlined.4 (result i32)
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $2)
                   (get_global $assembly/index/w)
                  )
                  (get_local $7)
                 )
                 (i32.const 2)
                )
               )
              )
              ;;@ assembly/index.ts:59:69
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:60:8
            (i32.and
             ;;@ assembly/index.ts:60:9
             (block $assembly/index/get|inlined.5 (result i32)
              (i32.load
               (i32.shl
                (i32.add
                 (i32.mul
                  (get_local $4)
                  (get_global $assembly/index/w)
                 )
                 (get_local $6)
                )
                (i32.const 2)
               )
              )
             )
             ;;@ assembly/index.ts:60:25
             (i32.const 1)
            )
           )
           ;;@ assembly/index.ts:60:30
           (i32.and
            ;;@ assembly/index.ts:60:31
            (block $assembly/index/get|inlined.6 (result i32)
             (i32.load
              (i32.shl
               (i32.add
                (i32.mul
                 (get_local $4)
                 (get_global $assembly/index/w)
                )
                (get_local $5)
               )
               (i32.const 2)
              )
             )
            )
            ;;@ assembly/index.ts:60:47
            (i32.const 1)
           )
          )
          ;;@ assembly/index.ts:60:52
          (i32.and
           ;;@ assembly/index.ts:60:53
           (block $assembly/index/get|inlined.7 (result i32)
            (i32.load
             (i32.shl
              (i32.add
               (i32.mul
                (get_local $4)
                (get_global $assembly/index/w)
               )
               (get_local $7)
              )
              (i32.const 2)
             )
            )
           )
           ;;@ assembly/index.ts:60:69
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/index.ts:63:6
        (set_local $9
         ;;@ assembly/index.ts:63:17
         (block $assembly/index/get|inlined.8 (result i32)
          ;;@ assembly/index.ts:11:35
          (i32.load
           ;;@ assembly/index.ts:11:19
           (i32.shl
            (i32.add
             ;;@ assembly/index.ts:11:20
             (i32.mul
              (get_local $2)
              ;;@ assembly/index.ts:11:24
              (get_global $assembly/index/w)
             )
             ;;@ assembly/index.ts:11:28
             (get_local $5)
            )
            ;;@ assembly/index.ts:11:34
            (i32.const 2)
           )
          )
         )
        )
        ;;@ assembly/index.ts:64:6
        (if
         ;;@ assembly/index.ts:64:10
         (i32.and
          (get_local $9)
          ;;@ assembly/index.ts:64:17
          (i32.const 1)
         )
         ;;@ assembly/index.ts:64:20
         (if
          ;;@ assembly/index.ts:66:12
          (i32.eq
           (i32.and
            ;;@ assembly/index.ts:66:13
            (get_local $8)
            ;;@ assembly/index.ts:66:30
            (i32.const 14)
           )
           ;;@ assembly/index.ts:66:41
           (i32.const 2)
          )
          ;;@ assembly/index.ts:66:49
          (block $assembly/index/rot|inlined.0
           (set_local $10
            (select
             (tee_local $10
              (i32.sub
               (i32.shr_u
                (get_local $9)
                (i32.const 24)
               )
               (get_global $assembly/config/BIT_ROT)
              )
             )
             (tee_local $11
              (i32.const 0)
             )
             (i32.gt_s
              (get_local $10)
              (get_local $11)
             )
            )
           )
           (block $assembly/index/set|inlined.1
            (set_local $11
             (i32.or
              (i32.shl
               (get_local $10)
               (i32.const 24)
              )
              (i32.and
               (get_local $9)
               (i32.const 16777215)
              )
             )
            )
            (i32.store
             (i32.shl
              (i32.add
               (i32.add
                (get_global $assembly/index/s)
                (i32.mul
                 (get_local $2)
                 (get_global $assembly/index/w)
                )
               )
               (get_local $5)
              )
              (i32.const 2)
             )
             (get_local $11)
            )
           )
          )
          ;;@ assembly/index.ts:68:13
          (block $assembly/index/set|inlined.2
           (set_local $10
            ;;@ assembly/index.ts:68:23
            (i32.or
             (get_global $assembly/config/BGR_DEAD)
             ;;@ assembly/index.ts:68:34
             (i32.const -16777216)
            )
           )
           (i32.store
            (i32.shl
             (i32.add
              (i32.add
               (get_global $assembly/index/s)
               (i32.mul
                (get_local $2)
                (get_global $assembly/index/w)
               )
              )
              (get_local $5)
             )
             (i32.const 2)
            )
            (get_local $10)
           )
          )
         )
         ;;@ assembly/index.ts:69:13
         (if
          ;;@ assembly/index.ts:71:12
          (i32.eq
           (get_local $8)
           ;;@ assembly/index.ts:71:30
           (i32.const 3)
          )
          ;;@ assembly/index.ts:71:33
          (block $assembly/index/set|inlined.3
           (set_local $10
            ;;@ assembly/index.ts:71:43
            (i32.or
             (get_global $assembly/config/BGR_ALIVE)
             ;;@ assembly/index.ts:71:55
             (i32.const -16777216)
            )
           )
           (i32.store
            (i32.shl
             (i32.add
              (i32.add
               (get_global $assembly/index/s)
               (i32.mul
                (get_local $2)
                (get_global $assembly/index/w)
               )
              )
              (get_local $5)
             )
             (i32.const 2)
            )
            (get_local $10)
           )
          )
          ;;@ assembly/index.ts:73:13
          (block $assembly/index/rot|inlined.1
           ;;@ assembly/index.ts:23:2
           (set_local $10
            ;;@ assembly/index.ts:23:10
            (select
             (tee_local $10
              ;;@ assembly/index.ts:23:19
              (i32.sub
               (i32.shr_u
                ;;@ assembly/index.ts:23:20
                (get_local $9)
                ;;@ assembly/index.ts:23:26
                (i32.const 24)
               )
               ;;@ assembly/index.ts:23:32
               (get_global $assembly/config/BIT_ROT)
              )
             )
             (tee_local $11
              ;;@ assembly/index.ts:23:41
              (i32.const 0)
             )
             (i32.gt_s
              (get_local $10)
              (get_local $11)
             )
            )
           )
           ;;@ assembly/index.ts:24:2
           (block $assembly/index/set|inlined.4
            (set_local $11
             ;;@ assembly/index.ts:24:12
             (i32.or
              (i32.shl
               ;;@ assembly/index.ts:24:13
               (get_local $10)
               ;;@ assembly/index.ts:24:18
               (i32.const 24)
              )
              ;;@ assembly/index.ts:24:24
              (i32.and
               ;;@ assembly/index.ts:24:25
               (get_local $9)
               ;;@ assembly/index.ts:24:29
               (i32.const 16777215)
              )
             )
            )
            ;;@ assembly/index.ts:17:2
            (i32.store
             ;;@ assembly/index.ts:17:13
             (i32.shl
              (i32.add
               ;;@ assembly/index.ts:17:14
               (i32.add
                (get_global $assembly/index/s)
                ;;@ assembly/index.ts:17:18
                (i32.mul
                 (get_local $2)
                 ;;@ assembly/index.ts:17:22
                 (get_global $assembly/index/w)
                )
               )
               ;;@ assembly/index.ts:17:26
               (get_local $5)
              )
              ;;@ assembly/index.ts:17:32
              (i32.const 2)
             )
             ;;@ assembly/index.ts:17:35
             (get_local $11)
            )
           )
          )
         )
        )
       )
       ;;@ assembly/index.ts:51:27
       (set_local $5
        (i32.add
         ;;@ assembly/index.ts:51:29
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $repeat|1)
      )
     )
    )
    ;;@ assembly/index.ts:48:25
    (set_local $2
     (i32.add
      ;;@ assembly/index.ts:48:27
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/fill (; 3 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/index.ts:81:2
  (block $break|0
   ;;@ assembly/index.ts:81:7
   (set_local $3
    ;;@ assembly/index.ts:81:16
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:81:19
      (i32.lt_s
       (get_local $3)
       ;;@ assembly/index.ts:81:24
       (get_global $assembly/index/w)
      )
     )
    )
    ;;@ assembly/index.ts:82:4
    (if
     ;;@ assembly/index.ts:82:8
     (f64.lt
      ;;@ assembly/index.ts:82:13
      (call $~lib/bindings/Math/random)
      ;;@ assembly/index.ts:82:24
      (get_local $2)
     )
     ;;@ assembly/index.ts:82:27
     (block $assembly/index/set|inlined.5
      (set_local $4
       ;;@ assembly/index.ts:82:38
       (i32.or
        (get_global $assembly/config/BGR_ALIVE)
        ;;@ assembly/index.ts:82:50
        (i32.const -16777216)
       )
      )
      (i32.store
       (i32.shl
        (i32.add
         (i32.add
          (get_global $assembly/index/s)
          (i32.mul
           (get_local $1)
           (get_global $assembly/index/w)
          )
         )
         (get_local $3)
        )
        (i32.const 2)
       )
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:81:27
    (set_local $3
     (i32.add
      ;;@ assembly/index.ts:81:29
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:84:2
  (block $break|1
   ;;@ assembly/index.ts:84:7
   (set_local $3
    ;;@ assembly/index.ts:84:16
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      ;;@ assembly/index.ts:84:19
      (i32.lt_s
       (get_local $3)
       ;;@ assembly/index.ts:84:24
       (get_global $assembly/index/h)
      )
     )
    )
    ;;@ assembly/index.ts:85:4
    (if
     ;;@ assembly/index.ts:85:8
     (f64.lt
      ;;@ assembly/index.ts:85:13
      (call $~lib/bindings/Math/random)
      ;;@ assembly/index.ts:85:24
      (get_local $2)
     )
     ;;@ assembly/index.ts:85:27
     (block $assembly/index/set|inlined.6
      (set_local $4
       ;;@ assembly/index.ts:85:38
       (i32.or
        (get_global $assembly/config/BGR_ALIVE)
        ;;@ assembly/index.ts:85:50
        (i32.const -16777216)
       )
      )
      ;;@ assembly/index.ts:17:2
      (i32.store
       ;;@ assembly/index.ts:17:13
       (i32.shl
        (i32.add
         ;;@ assembly/index.ts:17:14
         (i32.add
          (get_global $assembly/index/s)
          ;;@ assembly/index.ts:17:18
          (i32.mul
           (get_local $3)
           ;;@ assembly/index.ts:17:22
           (get_global $assembly/index/w)
          )
         )
         ;;@ assembly/index.ts:17:26
         (get_local $0)
        )
        ;;@ assembly/index.ts:17:32
        (i32.const 2)
       )
       ;;@ assembly/index.ts:17:35
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:84:27
    (set_local $3
     (i32.add
      ;;@ assembly/index.ts:84:29
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
 )
 (func $null (; 4 ;) (type $v)
 )
)
