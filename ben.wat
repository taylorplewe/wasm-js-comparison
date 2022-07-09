(module
	(type (;0;) (func))
	(type (;1;) (func (param i32 i32 i32) (result i32)))
	(func (;0;) (type 0)
		nop)
	(func (;1;) (type 1) (param i32 i32 i32) (result i32)
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
	(table (;0;) 1 1 funcref)
	(memory (;0;) 256 256)
	(export "a" (memory 0))
	(export "b" (func 0))
	(export "c" (func 1))
	(export "d" (table 0)))
