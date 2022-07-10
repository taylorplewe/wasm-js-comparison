(module
  (type (;0;) (func))
  (type (;1;) (func (param f64) (result f64)))
  (func (;0;) (type 0)
    nop)
  (func (;1;) (type 1) (param f64) (result f64)
    (local f64 f64 i32)
    local.get 0
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 7
        i32.rem_u
        i32.eqz
        if  ;; label = @3
          local.get 1
          local.get 3
          i32.const 3
          i32.div_u
          f64.convert_i32_s
          f64.add
          local.set 1
          br 1 (;@2;)
        end
        block (result i32)  ;; label = @3
          local.get 0
          local.get 3
          f64.convert_i32_s
          f64.add
          local.tee 2
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          if  ;; label = @4
            local.get 2
            i32.trunc_f64_s
            br 1 (;@3;)
          end
          i32.const -2147483648
        end
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 1
          f64.const 0x1p-1 (;=0.5;)
          f64.mul
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.const 10
        i32.rem_u
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 0
          f64.add
          local.set 0
          br 1 (;@2;)
        end
        local.get 1
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 1
      end
      local.get 3
      i32.const 1
      i32.add
      local.tee 3
      i32.const 99999999
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (export "a" (memory 0))
  (export "b" (func 0))
  (export "c" (func 1))
  (export "d" (table 0)))
