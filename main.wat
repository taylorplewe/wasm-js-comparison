(module
	(func $count (local i64)
		i64.const 9999999999
		local.set 0
		(loop $dec
			local.get 0
			i64.const 1
			i64.sub
			local.tee 0
			
			i64.const 0
			i64.ne
			br_if $dec
		)
	)
	(export "count" (func $count))
)