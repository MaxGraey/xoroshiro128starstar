(module
 (type $Fv (func (param f64)))
 (type $II (func (param i64) (result i64)))
 (type $F (func (result f64)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $index/s0 (mut i64) (i64.const 0))
 (global $index/s1 (mut i64) (i64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "initState" (func $index/initState))
 (export "next" (func $index/next))
 (func $index/splitmix64 (; 0 ;) (type $II) (param $0 i64) (result i64)
  get_local $0
  i64.const -7046029254386353131
  i64.add
  tee_local $0
  get_local $0
  i64.const 30
  i64.shr_u
  i64.xor
  i64.const -4658895280553007687
  i64.mul
  tee_local $0
  get_local $0
  i64.const 27
  i64.shr_u
  i64.xor
  i64.const -7723592293110705685
  i64.mul
  tee_local $0
  get_local $0
  i64.const 31
  i64.shr_u
  i64.xor
 )
 (func $index/initState (; 1 ;) (type $Fv) (param $0 f64)
  get_local $0
  i64.reinterpret/f64
  call $index/splitmix64
  set_global $index/s0
  get_global $index/s0
  call $index/splitmix64
  set_global $index/s1
 )
 (func $index/next (; 2 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  get_global $index/s0
  tee_local $0
  i64.const 5
  i64.mul
  i64.const 7
  i64.rotl
  i64.const 9
  i64.mul
  set_local $2
  get_global $index/s1
  get_local $0
  i64.xor
  tee_local $1
  get_local $0
  i64.const 24
  i64.rotl
  i64.xor
  get_local $1
  i64.const 16
  i64.shl
  i64.xor
  set_global $index/s0
  get_local $1
  i64.const 37
  i64.rotl
  set_global $index/s1
  get_local $2
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret/i64
  f64.const 1
  f64.sub
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
