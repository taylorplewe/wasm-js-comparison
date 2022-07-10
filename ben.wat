(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func (;0;) (type 2)))
  (import "wasi_snapshot_preview1" "args_get" (func (;1;) (type 2)))
  (import "env" "__main_argc_argv" (func (;2;) (type 2)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;3;) (type 1)))
  (func (;4;) (type 0))
  (func (;5;) (type 4) (param i32 i32 i32) (result i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.sub
    local.get 2
    select
    i32.const 99999999
    i32.mul
    local.get 0
    i32.add)
  (func (;6;) (type 0)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call 4
    end
    call 7
    call 10
    unreachable)
  (func (;7;) (type 3) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 12
        i32.add
        local.get 1
        i32.const 8
        i32.add
        call 0
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.load offset=12
        i32.const 2
        i32.shl
        local.tee 2
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 0
        local.tee 3
        global.set 0
        local.get 3
        local.get 1
        i32.load offset=8
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        i32.sub
        local.tee 3
        global.set 0
        local.get 0
        local.get 2
        i32.add
        i32.const 0
        i32.store
        local.get 0
        local.get 3
        call 1
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 0
        call 2
        local.set 0
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        local.get 0
        return
      end
      i32.const 71
      call 3
      unreachable
    end
    i32.const 71
    call 3
    unreachable)
  (func (;8;) (type 0))
  (func (;9;) (type 0)
    (local i32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.const 0
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.const -4
        i32.add
        local.tee 0
        i32.load
        call_indirect (type 0)
        local.get 0
        i32.const 0
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    call 8)
  (func (;10;) (type 1) (param i32)
    call 8
    call 9
    call 8
    local.get 0
    call 11
    unreachable)
  (func (;11;) (type 1) (param i32)
    local.get 0
    call 3
    unreachable)
  (func (;12;) (type 3) (result i32)
    global.get 0)
  (func (;13;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;14;) (type 5) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;15;) (type 3) (result i32)
    i32.const 1024)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243920))
  (export "memory" (memory 0))
  (export "ben" (func 5))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func 6))
  (export "__errno_location" (func 15))
  (export "stackSave" (func 12))
  (export "stackRestore" (func 13))
  (export "stackAlloc" (func 14))
  (elem (;0;) (i32.const 1) func 4))
