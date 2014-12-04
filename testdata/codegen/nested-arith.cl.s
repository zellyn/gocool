	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	3
_bool_tag:
	.word	4
_string_tag:
	.word	5
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const9:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const3
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const6
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	16
	.word	String_dispTab
	.word	int_const7
	.ascii	"/usr/class/cs143/tests/fa05/PA5/nested-arith.cl"
	.byte	0	
	.align	2
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	47
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
bool_const0:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const3
	.word	str_const4
	.word	str_const5
	.word	str_const6
	.word	str_const7
	.word	str_const8
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Main_protObj
	.word	Main_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const3
	.word	0
	.word	-1
Bool_protObj:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Main_protObj:
	.word	2
	.word	6
	.word	Main_dispTab
	.word	int_const3
	.word	int_const3
	.word	int_const3
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	IO_init
	la	$a0 int_const0
	sw	$a0 12($s0)
	la	$a0 int_const1
	sw	$a0 16($s0)
	la	$a0 int_const2
	sw	$a0 20($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	addiu	$sp $sp -2156
	sw	$fp 2156($sp)
	sw	$s0 2152($sp)
	sw	$ra 2148($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 2140($fp)
	sw	$s2 2136($fp)
	sw	$s3 2132($fp)
	sw	$s4 2128($fp)
	sw	$s5 2124($fp)
	sw	$s6 2120($fp)
	lw	$s6 12($s0)
	lw	$s5 16($s0)
	lw	$s4 12($s0)
	lw	$s3 16($s0)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s3)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s4 $a0
	lw	$s3 16($s0)
	lw	$s2 12($s0)
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	sw	$a0 0($fp)
	lw	$a0 16($s0)
	sw	$a0 4($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 4($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($fp)
	lw	$a0 16($s0)
	sw	$a0 4($fp)
	lw	$a0 12($s0)
	sw	$a0 8($fp)
	lw	$a0 16($s0)
	sw	$a0 12($fp)
	lw	$a0 12($s0)
	sw	$a0 16($fp)
	lw	$a0 16($s0)
	sw	$a0 20($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 20($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 16($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 16($fp)
	lw	$a0 16($s0)
	sw	$a0 20($fp)
	lw	$a0 12($s0)
	sw	$a0 24($fp)
	lw	$a0 16($s0)
	sw	$a0 28($fp)
	lw	$a0 12($s0)
	sw	$a0 32($fp)
	lw	$a0 16($s0)
	sw	$a0 36($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 36($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 32($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 32($fp)
	lw	$a0 16($s0)
	sw	$a0 36($fp)
	lw	$a0 12($s0)
	sw	$a0 40($fp)
	lw	$a0 16($s0)
	sw	$a0 44($fp)
	lw	$a0 12($s0)
	sw	$a0 48($fp)
	lw	$a0 16($s0)
	sw	$a0 52($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 52($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 48($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 48($fp)
	lw	$a0 16($s0)
	sw	$a0 52($fp)
	lw	$a0 12($s0)
	sw	$a0 56($fp)
	lw	$a0 16($s0)
	sw	$a0 60($fp)
	lw	$a0 12($s0)
	sw	$a0 64($fp)
	lw	$a0 16($s0)
	sw	$a0 68($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 68($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 64($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 64($fp)
	lw	$a0 16($s0)
	sw	$a0 68($fp)
	lw	$a0 12($s0)
	sw	$a0 72($fp)
	lw	$a0 16($s0)
	sw	$a0 76($fp)
	lw	$a0 12($s0)
	sw	$a0 80($fp)
	lw	$a0 16($s0)
	sw	$a0 84($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 84($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 80($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 80($fp)
	lw	$a0 16($s0)
	sw	$a0 84($fp)
	lw	$a0 12($s0)
	sw	$a0 88($fp)
	lw	$a0 16($s0)
	sw	$a0 92($fp)
	lw	$a0 12($s0)
	sw	$a0 96($fp)
	lw	$a0 16($s0)
	sw	$a0 100($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 100($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 96($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 96($fp)
	lw	$a0 16($s0)
	sw	$a0 100($fp)
	lw	$a0 12($s0)
	sw	$a0 104($fp)
	lw	$a0 16($s0)
	sw	$a0 108($fp)
	lw	$a0 12($s0)
	sw	$a0 112($fp)
	lw	$a0 16($s0)
	sw	$a0 116($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 116($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 112($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 112($fp)
	lw	$a0 16($s0)
	sw	$a0 116($fp)
	lw	$a0 12($s0)
	sw	$a0 120($fp)
	lw	$a0 16($s0)
	sw	$a0 124($fp)
	lw	$a0 12($s0)
	sw	$a0 128($fp)
	lw	$a0 16($s0)
	sw	$a0 132($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 132($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 128($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 128($fp)
	lw	$a0 16($s0)
	sw	$a0 132($fp)
	lw	$a0 12($s0)
	sw	$a0 136($fp)
	lw	$a0 16($s0)
	sw	$a0 140($fp)
	lw	$a0 12($s0)
	sw	$a0 144($fp)
	lw	$a0 16($s0)
	sw	$a0 148($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 148($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 144($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 144($fp)
	lw	$a0 16($s0)
	sw	$a0 148($fp)
	lw	$a0 12($s0)
	sw	$a0 152($fp)
	lw	$a0 16($s0)
	sw	$a0 156($fp)
	lw	$a0 12($s0)
	sw	$a0 160($fp)
	lw	$a0 16($s0)
	sw	$a0 164($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 164($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 160($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 160($fp)
	lw	$a0 16($s0)
	sw	$a0 164($fp)
	lw	$a0 12($s0)
	sw	$a0 168($fp)
	lw	$a0 16($s0)
	sw	$a0 172($fp)
	lw	$a0 12($s0)
	sw	$a0 176($fp)
	lw	$a0 16($s0)
	sw	$a0 180($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 180($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 176($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 176($fp)
	lw	$a0 16($s0)
	sw	$a0 180($fp)
	lw	$a0 12($s0)
	sw	$a0 184($fp)
	lw	$a0 16($s0)
	sw	$a0 188($fp)
	lw	$a0 12($s0)
	sw	$a0 192($fp)
	lw	$a0 16($s0)
	sw	$a0 196($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 196($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 192($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 192($fp)
	lw	$a0 16($s0)
	sw	$a0 196($fp)
	lw	$a0 12($s0)
	sw	$a0 200($fp)
	lw	$a0 16($s0)
	sw	$a0 204($fp)
	lw	$a0 12($s0)
	sw	$a0 208($fp)
	lw	$a0 16($s0)
	sw	$a0 212($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 212($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 208($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 208($fp)
	lw	$a0 16($s0)
	sw	$a0 212($fp)
	lw	$a0 12($s0)
	sw	$a0 216($fp)
	lw	$a0 16($s0)
	sw	$a0 220($fp)
	lw	$a0 12($s0)
	sw	$a0 224($fp)
	lw	$a0 16($s0)
	sw	$a0 228($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 228($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 224($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 224($fp)
	lw	$a0 16($s0)
	sw	$a0 228($fp)
	lw	$a0 12($s0)
	sw	$a0 232($fp)
	lw	$a0 16($s0)
	sw	$a0 236($fp)
	lw	$a0 12($s0)
	sw	$a0 240($fp)
	lw	$a0 16($s0)
	sw	$a0 244($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 244($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 240($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 240($fp)
	lw	$a0 16($s0)
	sw	$a0 244($fp)
	lw	$a0 12($s0)
	sw	$a0 248($fp)
	lw	$a0 16($s0)
	sw	$a0 252($fp)
	lw	$a0 12($s0)
	sw	$a0 256($fp)
	lw	$a0 16($s0)
	sw	$a0 260($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 260($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 256($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 256($fp)
	lw	$a0 16($s0)
	sw	$a0 260($fp)
	lw	$a0 12($s0)
	sw	$a0 264($fp)
	lw	$a0 16($s0)
	sw	$a0 268($fp)
	lw	$a0 12($s0)
	sw	$a0 272($fp)
	lw	$a0 16($s0)
	sw	$a0 276($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 276($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 272($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 272($fp)
	lw	$a0 16($s0)
	sw	$a0 276($fp)
	lw	$a0 12($s0)
	sw	$a0 280($fp)
	lw	$a0 16($s0)
	sw	$a0 284($fp)
	lw	$a0 12($s0)
	sw	$a0 288($fp)
	lw	$a0 16($s0)
	sw	$a0 292($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 292($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 288($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 288($fp)
	lw	$a0 16($s0)
	sw	$a0 292($fp)
	lw	$a0 12($s0)
	sw	$a0 296($fp)
	lw	$a0 16($s0)
	sw	$a0 300($fp)
	lw	$a0 12($s0)
	sw	$a0 304($fp)
	lw	$a0 16($s0)
	sw	$a0 308($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 308($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 304($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 304($fp)
	lw	$a0 16($s0)
	sw	$a0 308($fp)
	lw	$a0 12($s0)
	sw	$a0 312($fp)
	lw	$a0 16($s0)
	sw	$a0 316($fp)
	lw	$a0 12($s0)
	sw	$a0 320($fp)
	lw	$a0 16($s0)
	sw	$a0 324($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 324($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 320($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 320($fp)
	lw	$a0 16($s0)
	sw	$a0 324($fp)
	lw	$a0 12($s0)
	sw	$a0 328($fp)
	lw	$a0 16($s0)
	sw	$a0 332($fp)
	lw	$a0 12($s0)
	sw	$a0 336($fp)
	lw	$a0 16($s0)
	sw	$a0 340($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 340($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 336($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 336($fp)
	lw	$a0 16($s0)
	sw	$a0 340($fp)
	lw	$a0 12($s0)
	sw	$a0 344($fp)
	lw	$a0 16($s0)
	sw	$a0 348($fp)
	lw	$a0 12($s0)
	sw	$a0 352($fp)
	lw	$a0 16($s0)
	sw	$a0 356($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 356($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 352($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 352($fp)
	lw	$a0 16($s0)
	sw	$a0 356($fp)
	lw	$a0 12($s0)
	sw	$a0 360($fp)
	lw	$a0 16($s0)
	sw	$a0 364($fp)
	lw	$a0 12($s0)
	sw	$a0 368($fp)
	lw	$a0 16($s0)
	sw	$a0 372($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 372($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 368($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 368($fp)
	lw	$a0 16($s0)
	sw	$a0 372($fp)
	lw	$a0 12($s0)
	sw	$a0 376($fp)
	lw	$a0 16($s0)
	sw	$a0 380($fp)
	lw	$a0 12($s0)
	sw	$a0 384($fp)
	lw	$a0 16($s0)
	sw	$a0 388($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 388($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 384($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 384($fp)
	lw	$a0 16($s0)
	sw	$a0 388($fp)
	lw	$a0 12($s0)
	sw	$a0 392($fp)
	lw	$a0 16($s0)
	sw	$a0 396($fp)
	lw	$a0 12($s0)
	sw	$a0 400($fp)
	lw	$a0 16($s0)
	sw	$a0 404($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 404($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 400($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 400($fp)
	lw	$a0 16($s0)
	sw	$a0 404($fp)
	lw	$a0 12($s0)
	sw	$a0 408($fp)
	lw	$a0 16($s0)
	sw	$a0 412($fp)
	lw	$a0 12($s0)
	sw	$a0 416($fp)
	lw	$a0 16($s0)
	sw	$a0 420($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 420($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 416($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 416($fp)
	lw	$a0 16($s0)
	sw	$a0 420($fp)
	lw	$a0 12($s0)
	sw	$a0 424($fp)
	lw	$a0 16($s0)
	sw	$a0 428($fp)
	lw	$a0 12($s0)
	sw	$a0 432($fp)
	lw	$a0 16($s0)
	sw	$a0 436($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 436($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 432($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 432($fp)
	lw	$a0 16($s0)
	sw	$a0 436($fp)
	lw	$a0 12($s0)
	sw	$a0 440($fp)
	lw	$a0 16($s0)
	sw	$a0 444($fp)
	lw	$a0 12($s0)
	sw	$a0 448($fp)
	lw	$a0 16($s0)
	sw	$a0 452($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 452($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 448($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 448($fp)
	lw	$a0 16($s0)
	sw	$a0 452($fp)
	lw	$a0 12($s0)
	sw	$a0 456($fp)
	lw	$a0 16($s0)
	sw	$a0 460($fp)
	lw	$a0 12($s0)
	sw	$a0 464($fp)
	lw	$a0 16($s0)
	sw	$a0 468($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 468($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 464($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 464($fp)
	lw	$a0 16($s0)
	sw	$a0 468($fp)
	lw	$a0 12($s0)
	sw	$a0 472($fp)
	lw	$a0 16($s0)
	sw	$a0 476($fp)
	lw	$a0 12($s0)
	sw	$a0 480($fp)
	lw	$a0 16($s0)
	sw	$a0 484($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 484($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 480($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 480($fp)
	lw	$a0 16($s0)
	sw	$a0 484($fp)
	lw	$a0 12($s0)
	sw	$a0 488($fp)
	lw	$a0 16($s0)
	sw	$a0 492($fp)
	lw	$a0 12($s0)
	sw	$a0 496($fp)
	lw	$a0 16($s0)
	sw	$a0 500($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 500($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 496($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 496($fp)
	lw	$a0 16($s0)
	sw	$a0 500($fp)
	lw	$a0 12($s0)
	sw	$a0 504($fp)
	lw	$a0 16($s0)
	sw	$a0 508($fp)
	lw	$a0 12($s0)
	sw	$a0 512($fp)
	lw	$a0 16($s0)
	sw	$a0 516($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 516($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 512($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 512($fp)
	lw	$a0 16($s0)
	sw	$a0 516($fp)
	lw	$a0 12($s0)
	sw	$a0 520($fp)
	lw	$a0 16($s0)
	sw	$a0 524($fp)
	lw	$a0 12($s0)
	sw	$a0 528($fp)
	lw	$a0 16($s0)
	sw	$a0 532($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 532($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 528($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 528($fp)
	lw	$a0 16($s0)
	sw	$a0 532($fp)
	lw	$a0 12($s0)
	sw	$a0 536($fp)
	lw	$a0 16($s0)
	sw	$a0 540($fp)
	lw	$a0 12($s0)
	sw	$a0 544($fp)
	lw	$a0 16($s0)
	sw	$a0 548($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 548($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 544($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 544($fp)
	lw	$a0 16($s0)
	sw	$a0 548($fp)
	lw	$a0 12($s0)
	sw	$a0 552($fp)
	lw	$a0 16($s0)
	sw	$a0 556($fp)
	lw	$a0 12($s0)
	sw	$a0 560($fp)
	lw	$a0 16($s0)
	sw	$a0 564($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 564($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 560($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 560($fp)
	lw	$a0 16($s0)
	sw	$a0 564($fp)
	lw	$a0 12($s0)
	sw	$a0 568($fp)
	lw	$a0 16($s0)
	sw	$a0 572($fp)
	lw	$a0 12($s0)
	sw	$a0 576($fp)
	lw	$a0 16($s0)
	sw	$a0 580($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 580($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 576($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 576($fp)
	lw	$a0 16($s0)
	sw	$a0 580($fp)
	lw	$a0 12($s0)
	sw	$a0 584($fp)
	lw	$a0 16($s0)
	sw	$a0 588($fp)
	lw	$a0 12($s0)
	sw	$a0 592($fp)
	lw	$a0 16($s0)
	sw	$a0 596($fp)
	lw	$a0 12($s0)
	sw	$a0 600($fp)
	lw	$a0 16($s0)
	sw	$a0 604($fp)
	lw	$a0 12($s0)
	sw	$a0 608($fp)
	lw	$a0 16($s0)
	sw	$a0 612($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 612($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 608($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 608($fp)
	lw	$a0 16($s0)
	sw	$a0 612($fp)
	lw	$a0 12($s0)
	sw	$a0 616($fp)
	lw	$a0 16($s0)
	sw	$a0 620($fp)
	lw	$a0 12($s0)
	sw	$a0 624($fp)
	lw	$a0 16($s0)
	sw	$a0 628($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 628($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 624($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 624($fp)
	lw	$a0 16($s0)
	sw	$a0 628($fp)
	lw	$a0 12($s0)
	sw	$a0 632($fp)
	lw	$a0 16($s0)
	sw	$a0 636($fp)
	lw	$a0 12($s0)
	sw	$a0 640($fp)
	lw	$a0 16($s0)
	sw	$a0 644($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 644($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 640($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 640($fp)
	lw	$a0 16($s0)
	sw	$a0 644($fp)
	lw	$a0 12($s0)
	sw	$a0 648($fp)
	lw	$a0 16($s0)
	sw	$a0 652($fp)
	lw	$a0 12($s0)
	sw	$a0 656($fp)
	lw	$a0 16($s0)
	sw	$a0 660($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 660($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 656($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 656($fp)
	lw	$a0 16($s0)
	sw	$a0 660($fp)
	lw	$a0 12($s0)
	sw	$a0 664($fp)
	lw	$a0 16($s0)
	sw	$a0 668($fp)
	lw	$a0 12($s0)
	sw	$a0 672($fp)
	lw	$a0 16($s0)
	sw	$a0 676($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 676($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 672($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 672($fp)
	lw	$a0 16($s0)
	sw	$a0 676($fp)
	lw	$a0 12($s0)
	sw	$a0 680($fp)
	lw	$a0 16($s0)
	sw	$a0 684($fp)
	lw	$a0 12($s0)
	sw	$a0 688($fp)
	lw	$a0 16($s0)
	sw	$a0 692($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 692($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 688($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 688($fp)
	lw	$a0 16($s0)
	sw	$a0 692($fp)
	lw	$a0 12($s0)
	sw	$a0 696($fp)
	lw	$a0 16($s0)
	sw	$a0 700($fp)
	lw	$a0 12($s0)
	sw	$a0 704($fp)
	lw	$a0 16($s0)
	sw	$a0 708($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 708($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 704($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 704($fp)
	lw	$a0 16($s0)
	sw	$a0 708($fp)
	lw	$a0 12($s0)
	sw	$a0 712($fp)
	lw	$a0 16($s0)
	sw	$a0 716($fp)
	lw	$a0 12($s0)
	sw	$a0 720($fp)
	lw	$a0 16($s0)
	sw	$a0 724($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 724($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 720($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 720($fp)
	lw	$a0 16($s0)
	sw	$a0 724($fp)
	lw	$a0 12($s0)
	sw	$a0 728($fp)
	lw	$a0 16($s0)
	sw	$a0 732($fp)
	lw	$a0 12($s0)
	sw	$a0 736($fp)
	lw	$a0 16($s0)
	sw	$a0 740($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 740($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 736($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 736($fp)
	lw	$a0 16($s0)
	sw	$a0 740($fp)
	lw	$a0 12($s0)
	sw	$a0 744($fp)
	lw	$a0 16($s0)
	sw	$a0 748($fp)
	lw	$a0 12($s0)
	sw	$a0 752($fp)
	lw	$a0 16($s0)
	sw	$a0 756($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 756($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 752($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 752($fp)
	lw	$a0 16($s0)
	sw	$a0 756($fp)
	lw	$a0 12($s0)
	sw	$a0 760($fp)
	lw	$a0 16($s0)
	sw	$a0 764($fp)
	lw	$a0 12($s0)
	sw	$a0 768($fp)
	lw	$a0 16($s0)
	sw	$a0 772($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 772($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 768($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 768($fp)
	lw	$a0 16($s0)
	sw	$a0 772($fp)
	lw	$a0 12($s0)
	sw	$a0 776($fp)
	lw	$a0 16($s0)
	sw	$a0 780($fp)
	lw	$a0 12($s0)
	sw	$a0 784($fp)
	lw	$a0 16($s0)
	sw	$a0 788($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 788($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 784($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 784($fp)
	lw	$a0 16($s0)
	sw	$a0 788($fp)
	lw	$a0 12($s0)
	sw	$a0 792($fp)
	lw	$a0 16($s0)
	sw	$a0 796($fp)
	lw	$a0 12($s0)
	sw	$a0 800($fp)
	lw	$a0 16($s0)
	sw	$a0 804($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 804($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 800($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 800($fp)
	lw	$a0 16($s0)
	sw	$a0 804($fp)
	lw	$a0 12($s0)
	sw	$a0 808($fp)
	lw	$a0 16($s0)
	sw	$a0 812($fp)
	lw	$a0 12($s0)
	sw	$a0 816($fp)
	lw	$a0 16($s0)
	sw	$a0 820($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 820($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 816($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 816($fp)
	lw	$a0 16($s0)
	sw	$a0 820($fp)
	lw	$a0 12($s0)
	sw	$a0 824($fp)
	lw	$a0 16($s0)
	sw	$a0 828($fp)
	lw	$a0 12($s0)
	sw	$a0 832($fp)
	lw	$a0 16($s0)
	sw	$a0 836($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 836($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 832($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 832($fp)
	lw	$a0 16($s0)
	sw	$a0 836($fp)
	lw	$a0 12($s0)
	sw	$a0 840($fp)
	lw	$a0 16($s0)
	sw	$a0 844($fp)
	lw	$a0 12($s0)
	sw	$a0 848($fp)
	lw	$a0 16($s0)
	sw	$a0 852($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 852($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 848($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 848($fp)
	lw	$a0 16($s0)
	sw	$a0 852($fp)
	lw	$a0 12($s0)
	sw	$a0 856($fp)
	lw	$a0 16($s0)
	sw	$a0 860($fp)
	lw	$a0 12($s0)
	sw	$a0 864($fp)
	lw	$a0 16($s0)
	sw	$a0 868($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 868($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 864($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 864($fp)
	lw	$a0 16($s0)
	sw	$a0 868($fp)
	lw	$a0 12($s0)
	sw	$a0 872($fp)
	lw	$a0 16($s0)
	sw	$a0 876($fp)
	lw	$a0 12($s0)
	sw	$a0 880($fp)
	lw	$a0 16($s0)
	sw	$a0 884($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 884($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 880($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 880($fp)
	lw	$a0 16($s0)
	sw	$a0 884($fp)
	lw	$a0 12($s0)
	sw	$a0 888($fp)
	lw	$a0 16($s0)
	sw	$a0 892($fp)
	lw	$a0 12($s0)
	sw	$a0 896($fp)
	lw	$a0 16($s0)
	sw	$a0 900($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 900($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 896($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 896($fp)
	lw	$a0 16($s0)
	sw	$a0 900($fp)
	lw	$a0 12($s0)
	sw	$a0 904($fp)
	lw	$a0 16($s0)
	sw	$a0 908($fp)
	lw	$a0 12($s0)
	sw	$a0 912($fp)
	lw	$a0 16($s0)
	sw	$a0 916($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 916($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 912($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 912($fp)
	lw	$a0 16($s0)
	sw	$a0 916($fp)
	lw	$a0 12($s0)
	sw	$a0 920($fp)
	lw	$a0 16($s0)
	sw	$a0 924($fp)
	lw	$a0 12($s0)
	sw	$a0 928($fp)
	lw	$a0 16($s0)
	sw	$a0 932($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 932($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 928($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 928($fp)
	lw	$a0 16($s0)
	sw	$a0 932($fp)
	lw	$a0 12($s0)
	sw	$a0 936($fp)
	lw	$a0 16($s0)
	sw	$a0 940($fp)
	lw	$a0 12($s0)
	sw	$a0 944($fp)
	lw	$a0 16($s0)
	sw	$a0 948($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 948($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 944($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 944($fp)
	lw	$a0 16($s0)
	sw	$a0 948($fp)
	lw	$a0 12($s0)
	sw	$a0 952($fp)
	lw	$a0 16($s0)
	sw	$a0 956($fp)
	lw	$a0 12($s0)
	sw	$a0 960($fp)
	lw	$a0 16($s0)
	sw	$a0 964($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 964($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 960($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 960($fp)
	lw	$a0 16($s0)
	sw	$a0 964($fp)
	lw	$a0 12($s0)
	sw	$a0 968($fp)
	lw	$a0 16($s0)
	sw	$a0 972($fp)
	lw	$a0 12($s0)
	sw	$a0 976($fp)
	lw	$a0 16($s0)
	sw	$a0 980($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 980($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 976($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 976($fp)
	lw	$a0 16($s0)
	sw	$a0 980($fp)
	lw	$a0 12($s0)
	sw	$a0 984($fp)
	lw	$a0 16($s0)
	sw	$a0 988($fp)
	lw	$a0 12($s0)
	sw	$a0 992($fp)
	lw	$a0 16($s0)
	sw	$a0 996($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 996($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 992($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 992($fp)
	lw	$a0 16($s0)
	sw	$a0 996($fp)
	lw	$a0 12($s0)
	sw	$a0 1000($fp)
	lw	$a0 16($s0)
	sw	$a0 1004($fp)
	lw	$a0 12($s0)
	sw	$a0 1008($fp)
	lw	$a0 16($s0)
	sw	$a0 1012($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1012($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1008($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1008($fp)
	lw	$a0 16($s0)
	sw	$a0 1012($fp)
	lw	$a0 12($s0)
	sw	$a0 1016($fp)
	lw	$a0 16($s0)
	sw	$a0 1020($fp)
	lw	$a0 12($s0)
	sw	$a0 1024($fp)
	lw	$a0 16($s0)
	sw	$a0 1028($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1028($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1024($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1024($fp)
	lw	$a0 16($s0)
	sw	$a0 1028($fp)
	lw	$a0 12($s0)
	sw	$a0 1032($fp)
	lw	$a0 16($s0)
	sw	$a0 1036($fp)
	lw	$a0 12($s0)
	sw	$a0 1040($fp)
	lw	$a0 16($s0)
	sw	$a0 1044($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1044($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1040($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1040($fp)
	lw	$a0 16($s0)
	sw	$a0 1044($fp)
	lw	$a0 12($s0)
	sw	$a0 1048($fp)
	lw	$a0 16($s0)
	sw	$a0 1052($fp)
	lw	$a0 12($s0)
	sw	$a0 1056($fp)
	lw	$a0 16($s0)
	sw	$a0 1060($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1060($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1056($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1056($fp)
	lw	$a0 16($s0)
	sw	$a0 1060($fp)
	lw	$a0 12($s0)
	sw	$a0 1064($fp)
	lw	$a0 16($s0)
	sw	$a0 1068($fp)
	lw	$a0 12($s0)
	sw	$a0 1072($fp)
	lw	$a0 16($s0)
	sw	$a0 1076($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1076($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1072($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1072($fp)
	lw	$a0 16($s0)
	sw	$a0 1076($fp)
	lw	$a0 12($s0)
	sw	$a0 1080($fp)
	lw	$a0 16($s0)
	sw	$a0 1084($fp)
	lw	$a0 12($s0)
	sw	$a0 1088($fp)
	lw	$a0 16($s0)
	sw	$a0 1092($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1092($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1088($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1088($fp)
	lw	$a0 16($s0)
	sw	$a0 1092($fp)
	lw	$a0 12($s0)
	sw	$a0 1096($fp)
	lw	$a0 16($s0)
	sw	$a0 1100($fp)
	lw	$a0 12($s0)
	sw	$a0 1104($fp)
	lw	$a0 16($s0)
	sw	$a0 1108($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1108($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1104($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1104($fp)
	lw	$a0 16($s0)
	sw	$a0 1108($fp)
	lw	$a0 12($s0)
	sw	$a0 1112($fp)
	lw	$a0 16($s0)
	sw	$a0 1116($fp)
	lw	$a0 12($s0)
	sw	$a0 1120($fp)
	lw	$a0 16($s0)
	sw	$a0 1124($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1124($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1120($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1120($fp)
	lw	$a0 16($s0)
	sw	$a0 1124($fp)
	lw	$a0 12($s0)
	sw	$a0 1128($fp)
	lw	$a0 16($s0)
	sw	$a0 1132($fp)
	lw	$a0 12($s0)
	sw	$a0 1136($fp)
	lw	$a0 16($s0)
	sw	$a0 1140($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1140($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1136($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1136($fp)
	lw	$a0 16($s0)
	sw	$a0 1140($fp)
	lw	$a0 12($s0)
	sw	$a0 1144($fp)
	lw	$a0 16($s0)
	sw	$a0 1148($fp)
	lw	$a0 12($s0)
	sw	$a0 1152($fp)
	lw	$a0 16($s0)
	sw	$a0 1156($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1156($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1152($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1152($fp)
	lw	$a0 16($s0)
	sw	$a0 1156($fp)
	lw	$a0 12($s0)
	sw	$a0 1160($fp)
	lw	$a0 16($s0)
	sw	$a0 1164($fp)
	lw	$a0 12($s0)
	sw	$a0 1168($fp)
	lw	$a0 16($s0)
	sw	$a0 1172($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1172($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1168($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1168($fp)
	lw	$a0 16($s0)
	sw	$a0 1172($fp)
	lw	$a0 12($s0)
	sw	$a0 1176($fp)
	lw	$a0 16($s0)
	sw	$a0 1180($fp)
	lw	$a0 12($s0)
	sw	$a0 1184($fp)
	lw	$a0 16($s0)
	sw	$a0 1188($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1188($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1184($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1184($fp)
	lw	$a0 16($s0)
	sw	$a0 1188($fp)
	lw	$a0 12($s0)
	sw	$a0 1192($fp)
	lw	$a0 16($s0)
	sw	$a0 1196($fp)
	lw	$a0 12($s0)
	sw	$a0 1200($fp)
	lw	$a0 16($s0)
	sw	$a0 1204($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1204($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1200($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1200($fp)
	lw	$a0 16($s0)
	sw	$a0 1204($fp)
	lw	$a0 12($s0)
	sw	$a0 1208($fp)
	lw	$a0 16($s0)
	sw	$a0 1212($fp)
	lw	$a0 12($s0)
	sw	$a0 1216($fp)
	lw	$a0 16($s0)
	sw	$a0 1220($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1220($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1216($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1216($fp)
	lw	$a0 16($s0)
	sw	$a0 1220($fp)
	lw	$a0 12($s0)
	sw	$a0 1224($fp)
	lw	$a0 16($s0)
	sw	$a0 1228($fp)
	lw	$a0 12($s0)
	sw	$a0 1232($fp)
	lw	$a0 16($s0)
	sw	$a0 1236($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1236($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1232($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1232($fp)
	lw	$a0 16($s0)
	sw	$a0 1236($fp)
	lw	$a0 12($s0)
	sw	$a0 1240($fp)
	lw	$a0 16($s0)
	sw	$a0 1244($fp)
	lw	$a0 12($s0)
	sw	$a0 1248($fp)
	lw	$a0 16($s0)
	sw	$a0 1252($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1252($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1248($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1248($fp)
	lw	$a0 16($s0)
	sw	$a0 1252($fp)
	lw	$a0 12($s0)
	sw	$a0 1256($fp)
	lw	$a0 16($s0)
	sw	$a0 1260($fp)
	lw	$a0 12($s0)
	sw	$a0 1264($fp)
	lw	$a0 16($s0)
	sw	$a0 1268($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1268($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1264($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1264($fp)
	lw	$a0 16($s0)
	sw	$a0 1268($fp)
	lw	$a0 12($s0)
	sw	$a0 1272($fp)
	lw	$a0 16($s0)
	sw	$a0 1276($fp)
	lw	$a0 12($s0)
	sw	$a0 1280($fp)
	lw	$a0 16($s0)
	sw	$a0 1284($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1284($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1280($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1280($fp)
	lw	$a0 16($s0)
	sw	$a0 1284($fp)
	lw	$a0 12($s0)
	sw	$a0 1288($fp)
	lw	$a0 16($s0)
	sw	$a0 1292($fp)
	lw	$a0 12($s0)
	sw	$a0 1296($fp)
	lw	$a0 16($s0)
	sw	$a0 1300($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1300($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1296($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1296($fp)
	lw	$a0 16($s0)
	sw	$a0 1300($fp)
	lw	$a0 12($s0)
	sw	$a0 1304($fp)
	lw	$a0 16($s0)
	sw	$a0 1308($fp)
	lw	$a0 12($s0)
	sw	$a0 1312($fp)
	lw	$a0 16($s0)
	sw	$a0 1316($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1316($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1312($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1312($fp)
	lw	$a0 16($s0)
	sw	$a0 1316($fp)
	lw	$a0 12($s0)
	sw	$a0 1320($fp)
	lw	$a0 16($s0)
	sw	$a0 1324($fp)
	lw	$a0 12($s0)
	sw	$a0 1328($fp)
	lw	$a0 16($s0)
	sw	$a0 1332($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1332($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1328($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1328($fp)
	lw	$a0 16($s0)
	sw	$a0 1332($fp)
	lw	$a0 12($s0)
	sw	$a0 1336($fp)
	lw	$a0 16($s0)
	sw	$a0 1340($fp)
	lw	$a0 12($s0)
	sw	$a0 1344($fp)
	lw	$a0 16($s0)
	sw	$a0 1348($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1348($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1344($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1344($fp)
	lw	$a0 16($s0)
	sw	$a0 1348($fp)
	lw	$a0 12($s0)
	sw	$a0 1352($fp)
	lw	$a0 16($s0)
	sw	$a0 1356($fp)
	lw	$a0 12($s0)
	sw	$a0 1360($fp)
	lw	$a0 16($s0)
	sw	$a0 1364($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1364($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1360($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1360($fp)
	lw	$a0 16($s0)
	sw	$a0 1364($fp)
	lw	$a0 12($s0)
	sw	$a0 1368($fp)
	lw	$a0 16($s0)
	sw	$a0 1372($fp)
	lw	$a0 12($s0)
	sw	$a0 1376($fp)
	lw	$a0 16($s0)
	sw	$a0 1380($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1380($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1376($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1376($fp)
	lw	$a0 16($s0)
	sw	$a0 1380($fp)
	lw	$a0 12($s0)
	sw	$a0 1384($fp)
	lw	$a0 16($s0)
	sw	$a0 1388($fp)
	lw	$a0 12($s0)
	sw	$a0 1392($fp)
	lw	$a0 16($s0)
	sw	$a0 1396($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1396($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1392($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1392($fp)
	lw	$a0 16($s0)
	sw	$a0 1396($fp)
	lw	$a0 12($s0)
	sw	$a0 1400($fp)
	lw	$a0 16($s0)
	sw	$a0 1404($fp)
	lw	$a0 12($s0)
	sw	$a0 1408($fp)
	lw	$a0 16($s0)
	sw	$a0 1412($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1412($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1408($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1408($fp)
	lw	$a0 16($s0)
	sw	$a0 1412($fp)
	lw	$a0 12($s0)
	sw	$a0 1416($fp)
	lw	$a0 16($s0)
	sw	$a0 1420($fp)
	lw	$a0 12($s0)
	sw	$a0 1424($fp)
	lw	$a0 16($s0)
	sw	$a0 1428($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1428($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1424($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1424($fp)
	lw	$a0 16($s0)
	sw	$a0 1428($fp)
	lw	$a0 12($s0)
	sw	$a0 1432($fp)
	lw	$a0 16($s0)
	sw	$a0 1436($fp)
	lw	$a0 12($s0)
	sw	$a0 1440($fp)
	lw	$a0 16($s0)
	sw	$a0 1444($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1444($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1440($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1440($fp)
	lw	$a0 16($s0)
	sw	$a0 1444($fp)
	lw	$a0 12($s0)
	sw	$a0 1448($fp)
	lw	$a0 16($s0)
	sw	$a0 1452($fp)
	lw	$a0 12($s0)
	sw	$a0 1456($fp)
	lw	$a0 16($s0)
	sw	$a0 1460($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1460($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1456($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1456($fp)
	lw	$a0 16($s0)
	sw	$a0 1460($fp)
	lw	$a0 12($s0)
	sw	$a0 1464($fp)
	lw	$a0 16($s0)
	sw	$a0 1468($fp)
	lw	$a0 12($s0)
	sw	$a0 1472($fp)
	lw	$a0 16($s0)
	sw	$a0 1476($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1476($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1472($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1472($fp)
	lw	$a0 16($s0)
	sw	$a0 1476($fp)
	lw	$a0 12($s0)
	sw	$a0 1480($fp)
	lw	$a0 16($s0)
	sw	$a0 1484($fp)
	lw	$a0 12($s0)
	sw	$a0 1488($fp)
	lw	$a0 16($s0)
	sw	$a0 1492($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1492($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1488($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1488($fp)
	lw	$a0 16($s0)
	sw	$a0 1492($fp)
	lw	$a0 12($s0)
	sw	$a0 1496($fp)
	lw	$a0 16($s0)
	sw	$a0 1500($fp)
	lw	$a0 12($s0)
	sw	$a0 1504($fp)
	lw	$a0 16($s0)
	sw	$a0 1508($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1508($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1504($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1504($fp)
	lw	$a0 16($s0)
	sw	$a0 1508($fp)
	lw	$a0 12($s0)
	sw	$a0 1512($fp)
	lw	$a0 16($s0)
	sw	$a0 1516($fp)
	lw	$a0 12($s0)
	sw	$a0 1520($fp)
	lw	$a0 16($s0)
	sw	$a0 1524($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1524($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1520($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1520($fp)
	lw	$a0 16($s0)
	sw	$a0 1524($fp)
	lw	$a0 12($s0)
	sw	$a0 1528($fp)
	lw	$a0 16($s0)
	sw	$a0 1532($fp)
	lw	$a0 12($s0)
	sw	$a0 1536($fp)
	lw	$a0 16($s0)
	sw	$a0 1540($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1540($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1536($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1536($fp)
	lw	$a0 16($s0)
	sw	$a0 1540($fp)
	lw	$a0 12($s0)
	sw	$a0 1544($fp)
	lw	$a0 16($s0)
	sw	$a0 1548($fp)
	lw	$a0 12($s0)
	sw	$a0 1552($fp)
	lw	$a0 16($s0)
	sw	$a0 1556($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1556($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1552($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1552($fp)
	lw	$a0 16($s0)
	sw	$a0 1556($fp)
	lw	$a0 12($s0)
	sw	$a0 1560($fp)
	lw	$a0 16($s0)
	sw	$a0 1564($fp)
	lw	$a0 12($s0)
	sw	$a0 1568($fp)
	lw	$a0 16($s0)
	sw	$a0 1572($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1572($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1568($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1568($fp)
	lw	$a0 16($s0)
	sw	$a0 1572($fp)
	lw	$a0 12($s0)
	sw	$a0 1576($fp)
	lw	$a0 16($s0)
	sw	$a0 1580($fp)
	lw	$a0 12($s0)
	sw	$a0 1584($fp)
	lw	$a0 16($s0)
	sw	$a0 1588($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1588($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1584($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1584($fp)
	lw	$a0 16($s0)
	sw	$a0 1588($fp)
	lw	$a0 12($s0)
	sw	$a0 1592($fp)
	lw	$a0 16($s0)
	sw	$a0 1596($fp)
	lw	$a0 12($s0)
	sw	$a0 1600($fp)
	lw	$a0 16($s0)
	sw	$a0 1604($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1604($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1600($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1600($fp)
	lw	$a0 16($s0)
	sw	$a0 1604($fp)
	lw	$a0 12($s0)
	sw	$a0 1608($fp)
	lw	$a0 16($s0)
	sw	$a0 1612($fp)
	lw	$a0 12($s0)
	sw	$a0 1616($fp)
	lw	$a0 16($s0)
	sw	$a0 1620($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1620($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1616($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1616($fp)
	lw	$a0 16($s0)
	sw	$a0 1620($fp)
	lw	$a0 12($s0)
	sw	$a0 1624($fp)
	lw	$a0 16($s0)
	sw	$a0 1628($fp)
	lw	$a0 12($s0)
	sw	$a0 1632($fp)
	lw	$a0 16($s0)
	sw	$a0 1636($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1636($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1632($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1632($fp)
	lw	$a0 16($s0)
	sw	$a0 1636($fp)
	lw	$a0 12($s0)
	sw	$a0 1640($fp)
	lw	$a0 16($s0)
	sw	$a0 1644($fp)
	lw	$a0 12($s0)
	sw	$a0 1648($fp)
	lw	$a0 16($s0)
	sw	$a0 1652($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1652($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1648($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1648($fp)
	lw	$a0 16($s0)
	sw	$a0 1652($fp)
	lw	$a0 12($s0)
	sw	$a0 1656($fp)
	lw	$a0 16($s0)
	sw	$a0 1660($fp)
	lw	$a0 12($s0)
	sw	$a0 1664($fp)
	lw	$a0 16($s0)
	sw	$a0 1668($fp)
	lw	$a0 12($s0)
	sw	$a0 1672($fp)
	lw	$a0 16($s0)
	sw	$a0 1676($fp)
	lw	$a0 12($s0)
	sw	$a0 1680($fp)
	lw	$a0 16($s0)
	sw	$a0 1684($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1684($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1680($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1680($fp)
	lw	$a0 16($s0)
	sw	$a0 1684($fp)
	lw	$a0 12($s0)
	sw	$a0 1688($fp)
	lw	$a0 16($s0)
	sw	$a0 1692($fp)
	lw	$a0 12($s0)
	sw	$a0 1696($fp)
	lw	$a0 16($s0)
	sw	$a0 1700($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1700($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1696($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1696($fp)
	lw	$a0 16($s0)
	sw	$a0 1700($fp)
	lw	$a0 12($s0)
	sw	$a0 1704($fp)
	lw	$a0 16($s0)
	sw	$a0 1708($fp)
	lw	$a0 12($s0)
	sw	$a0 1712($fp)
	lw	$a0 16($s0)
	sw	$a0 1716($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1716($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1712($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1712($fp)
	lw	$a0 16($s0)
	sw	$a0 1716($fp)
	lw	$a0 12($s0)
	sw	$a0 1720($fp)
	lw	$a0 16($s0)
	sw	$a0 1724($fp)
	lw	$a0 12($s0)
	sw	$a0 1728($fp)
	lw	$a0 16($s0)
	sw	$a0 1732($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1732($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1728($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1728($fp)
	lw	$a0 16($s0)
	sw	$a0 1732($fp)
	lw	$a0 12($s0)
	sw	$a0 1736($fp)
	lw	$a0 16($s0)
	sw	$a0 1740($fp)
	lw	$a0 12($s0)
	sw	$a0 1744($fp)
	lw	$a0 16($s0)
	sw	$a0 1748($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1748($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1744($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1744($fp)
	lw	$a0 16($s0)
	sw	$a0 1748($fp)
	lw	$a0 12($s0)
	sw	$a0 1752($fp)
	lw	$a0 16($s0)
	sw	$a0 1756($fp)
	lw	$a0 12($s0)
	sw	$a0 1760($fp)
	lw	$a0 16($s0)
	sw	$a0 1764($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1764($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1760($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1760($fp)
	lw	$a0 16($s0)
	sw	$a0 1764($fp)
	lw	$a0 12($s0)
	sw	$a0 1768($fp)
	lw	$a0 16($s0)
	sw	$a0 1772($fp)
	lw	$a0 12($s0)
	sw	$a0 1776($fp)
	lw	$a0 16($s0)
	sw	$a0 1780($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1780($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1776($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1776($fp)
	lw	$a0 16($s0)
	sw	$a0 1780($fp)
	lw	$a0 12($s0)
	sw	$a0 1784($fp)
	lw	$a0 16($s0)
	sw	$a0 1788($fp)
	lw	$a0 12($s0)
	sw	$a0 1792($fp)
	lw	$a0 16($s0)
	sw	$a0 1796($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1796($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1792($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1792($fp)
	lw	$a0 16($s0)
	sw	$a0 1796($fp)
	lw	$a0 12($s0)
	sw	$a0 1800($fp)
	lw	$a0 16($s0)
	sw	$a0 1804($fp)
	lw	$a0 12($s0)
	sw	$a0 1808($fp)
	lw	$a0 16($s0)
	sw	$a0 1812($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1812($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1808($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1808($fp)
	lw	$a0 16($s0)
	sw	$a0 1812($fp)
	lw	$a0 12($s0)
	sw	$a0 1816($fp)
	lw	$a0 16($s0)
	sw	$a0 1820($fp)
	lw	$a0 12($s0)
	sw	$a0 1824($fp)
	lw	$a0 16($s0)
	sw	$a0 1828($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1828($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1824($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1824($fp)
	lw	$a0 16($s0)
	sw	$a0 1828($fp)
	lw	$a0 12($s0)
	sw	$a0 1832($fp)
	lw	$a0 16($s0)
	sw	$a0 1836($fp)
	lw	$a0 12($s0)
	sw	$a0 1840($fp)
	lw	$a0 16($s0)
	sw	$a0 1844($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1844($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1840($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1840($fp)
	lw	$a0 16($s0)
	sw	$a0 1844($fp)
	lw	$a0 12($s0)
	sw	$a0 1848($fp)
	lw	$a0 16($s0)
	sw	$a0 1852($fp)
	lw	$a0 12($s0)
	sw	$a0 1856($fp)
	lw	$a0 16($s0)
	sw	$a0 1860($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1860($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1856($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1856($fp)
	lw	$a0 16($s0)
	sw	$a0 1860($fp)
	lw	$a0 12($s0)
	sw	$a0 1864($fp)
	lw	$a0 16($s0)
	sw	$a0 1868($fp)
	lw	$a0 12($s0)
	sw	$a0 1872($fp)
	lw	$a0 16($s0)
	sw	$a0 1876($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1876($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1872($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1872($fp)
	lw	$a0 16($s0)
	sw	$a0 1876($fp)
	lw	$a0 12($s0)
	sw	$a0 1880($fp)
	lw	$a0 16($s0)
	sw	$a0 1884($fp)
	lw	$a0 12($s0)
	sw	$a0 1888($fp)
	lw	$a0 16($s0)
	sw	$a0 1892($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1892($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1888($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1888($fp)
	lw	$a0 16($s0)
	sw	$a0 1892($fp)
	lw	$a0 12($s0)
	sw	$a0 1896($fp)
	lw	$a0 16($s0)
	sw	$a0 1900($fp)
	lw	$a0 12($s0)
	sw	$a0 1904($fp)
	lw	$a0 16($s0)
	sw	$a0 1908($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1908($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1904($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1904($fp)
	lw	$a0 16($s0)
	sw	$a0 1908($fp)
	lw	$a0 12($s0)
	sw	$a0 1912($fp)
	lw	$a0 16($s0)
	sw	$a0 1916($fp)
	lw	$a0 12($s0)
	sw	$a0 1920($fp)
	lw	$a0 16($s0)
	sw	$a0 1924($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1924($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1920($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1920($fp)
	lw	$a0 16($s0)
	sw	$a0 1924($fp)
	lw	$a0 12($s0)
	sw	$a0 1928($fp)
	lw	$a0 16($s0)
	sw	$a0 1932($fp)
	lw	$a0 12($s0)
	sw	$a0 1936($fp)
	lw	$a0 16($s0)
	sw	$a0 1940($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1940($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1936($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1936($fp)
	lw	$a0 16($s0)
	sw	$a0 1940($fp)
	lw	$a0 12($s0)
	sw	$a0 1944($fp)
	lw	$a0 16($s0)
	sw	$a0 1948($fp)
	lw	$a0 12($s0)
	sw	$a0 1952($fp)
	lw	$a0 16($s0)
	sw	$a0 1956($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1956($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1952($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1952($fp)
	lw	$a0 16($s0)
	sw	$a0 1956($fp)
	lw	$a0 12($s0)
	sw	$a0 1960($fp)
	lw	$a0 16($s0)
	sw	$a0 1964($fp)
	lw	$a0 12($s0)
	sw	$a0 1968($fp)
	lw	$a0 16($s0)
	sw	$a0 1972($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1972($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1968($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1968($fp)
	lw	$a0 16($s0)
	sw	$a0 1972($fp)
	lw	$a0 12($s0)
	sw	$a0 1976($fp)
	lw	$a0 16($s0)
	sw	$a0 1980($fp)
	lw	$a0 12($s0)
	sw	$a0 1984($fp)
	lw	$a0 16($s0)
	sw	$a0 1988($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 1988($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1984($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 1984($fp)
	lw	$a0 16($s0)
	sw	$a0 1988($fp)
	lw	$a0 12($s0)
	sw	$a0 1992($fp)
	lw	$a0 16($s0)
	sw	$a0 1996($fp)
	lw	$a0 12($s0)
	sw	$a0 2000($fp)
	lw	$a0 16($s0)
	sw	$a0 2004($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2004($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2000($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2000($fp)
	lw	$a0 16($s0)
	sw	$a0 2004($fp)
	lw	$a0 12($s0)
	sw	$a0 2008($fp)
	lw	$a0 16($s0)
	sw	$a0 2012($fp)
	lw	$a0 12($s0)
	sw	$a0 2016($fp)
	lw	$a0 16($s0)
	sw	$a0 2020($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2020($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2016($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2016($fp)
	lw	$a0 16($s0)
	sw	$a0 2020($fp)
	lw	$a0 12($s0)
	sw	$a0 2024($fp)
	lw	$a0 16($s0)
	sw	$a0 2028($fp)
	lw	$a0 12($s0)
	sw	$a0 2032($fp)
	lw	$a0 16($s0)
	sw	$a0 2036($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2036($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2032($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2032($fp)
	lw	$a0 16($s0)
	sw	$a0 2036($fp)
	lw	$a0 12($s0)
	sw	$a0 2040($fp)
	lw	$a0 16($s0)
	sw	$a0 2044($fp)
	lw	$a0 12($s0)
	sw	$a0 2048($fp)
	lw	$a0 16($s0)
	sw	$a0 2052($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2052($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2048($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2048($fp)
	lw	$a0 16($s0)
	sw	$a0 2052($fp)
	lw	$a0 12($s0)
	sw	$a0 2056($fp)
	lw	$a0 16($s0)
	sw	$a0 2060($fp)
	lw	$a0 12($s0)
	sw	$a0 2064($fp)
	lw	$a0 16($s0)
	sw	$a0 2068($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2068($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2064($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2064($fp)
	lw	$a0 16($s0)
	sw	$a0 2068($fp)
	lw	$a0 12($s0)
	sw	$a0 2072($fp)
	lw	$a0 16($s0)
	sw	$a0 2076($fp)
	lw	$a0 12($s0)
	sw	$a0 2080($fp)
	lw	$a0 16($s0)
	sw	$a0 2084($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2084($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2080($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2080($fp)
	lw	$a0 16($s0)
	sw	$a0 2084($fp)
	lw	$a0 12($s0)
	sw	$a0 2088($fp)
	lw	$a0 16($s0)
	sw	$a0 2092($fp)
	lw	$a0 12($s0)
	sw	$a0 2096($fp)
	lw	$a0 16($s0)
	sw	$a0 2100($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 2100($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2096($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 2096($fp)
	lw	$a0 16($s0)
	sw	$a0 2100($fp)
	lw	$a0 12($s0)
	sw	$a0 2104($fp)
	lw	$a0 16($s0)
	sw	$a0 2108($fp)
	lw	$a0 12($s0)
	sw	$a0 2112($fp)
	lw	$a0 16($s0)
	sw	$a0 2116($fp)
	lw	$a0 20($s0)
	jal	Object.copy
	lw	$t1 2116($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2112($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2108($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2104($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2100($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2096($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2092($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2088($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2084($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2080($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2076($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2072($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2068($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2064($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2060($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2056($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2052($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2048($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2044($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2040($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2036($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2032($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2028($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2024($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2020($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2016($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2012($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2008($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2004($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 2000($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1996($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1992($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1988($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1984($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1980($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1976($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1972($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1968($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1964($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1960($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1956($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1952($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1948($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1944($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1940($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1936($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1932($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1928($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1924($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1920($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1916($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1912($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1908($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1904($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1900($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1896($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1892($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1888($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1884($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1880($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1876($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1872($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1868($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1864($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1860($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1856($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1852($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1848($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1844($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1840($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1836($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1832($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1828($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1824($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1820($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1816($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1812($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1808($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1804($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1800($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1796($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1792($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1788($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1784($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1780($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1776($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1772($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1768($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1764($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1760($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1756($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1752($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1748($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1744($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1740($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1736($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1732($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1728($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1724($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1720($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1716($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1712($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1708($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1704($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1700($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1696($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1692($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1688($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1684($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1680($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1676($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1672($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1668($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1664($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1660($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1656($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1652($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1648($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1644($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1640($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1636($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1632($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1628($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1624($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1620($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1616($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1612($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1608($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1604($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1600($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1596($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1592($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1588($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1584($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1580($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1576($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1572($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1568($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1564($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1560($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1556($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1552($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1548($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1544($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1540($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1536($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1532($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1528($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1524($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1520($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1516($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1512($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1508($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1504($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1500($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1496($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1492($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1488($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1484($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1480($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1476($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1472($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1468($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1464($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1460($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1456($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1452($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1448($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1444($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1440($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1436($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1432($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1428($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1424($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1420($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1416($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1412($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1408($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1404($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1400($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1396($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1392($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1388($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1384($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1380($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1376($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1372($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1368($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1364($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1360($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1356($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1352($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1348($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1344($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1340($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1336($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1332($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1328($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1324($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1320($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1316($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1312($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1308($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1304($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1300($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1296($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1292($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1288($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1284($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1280($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1276($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1272($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1268($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1264($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1260($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1256($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1252($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1248($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1244($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1240($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1236($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1232($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1228($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1224($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1220($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1216($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1212($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1208($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1204($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1200($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1196($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1192($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1188($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1184($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1180($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1176($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1172($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1168($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1164($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1160($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1156($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1152($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1148($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1144($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1140($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1136($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1132($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1128($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1124($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1120($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1116($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1112($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1108($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1104($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1100($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1096($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1092($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1088($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1084($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1080($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1076($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1072($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1068($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1064($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1060($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1056($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1052($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1048($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1044($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1040($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1036($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1032($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1028($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1024($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1020($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1016($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1012($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1008($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1004($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 1000($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 996($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 992($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 988($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 984($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 980($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 976($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 972($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 968($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 964($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 960($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 956($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 952($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 948($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 944($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 940($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 936($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 932($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 928($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 924($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 920($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 916($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 912($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 908($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 904($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 900($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 896($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 892($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 888($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 884($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 880($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 876($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 872($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 868($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 864($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 860($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 856($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 852($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 848($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 844($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 840($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 836($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 832($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 828($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 824($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 820($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 816($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 812($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 808($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 804($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 800($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 796($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 792($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 788($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 784($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 780($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 776($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 772($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 768($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 764($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 760($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 756($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 752($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 748($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 744($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 740($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 736($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 732($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 728($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 724($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 720($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 716($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 712($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 708($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 704($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 700($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 696($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 692($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 688($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 684($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 680($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 676($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 672($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 668($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 664($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 660($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 656($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 652($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 648($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 644($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 640($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 636($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 632($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 628($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 624($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 620($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 616($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 612($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 608($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 604($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 600($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 596($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 592($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 588($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 584($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 580($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 576($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 572($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 568($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 564($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 560($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 556($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 552($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 548($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 544($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 540($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 536($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 532($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 528($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 524($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 520($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 516($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 512($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 508($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 504($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 500($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 496($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 492($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 488($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 484($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 480($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 476($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 472($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 468($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 464($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 460($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 456($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 452($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 448($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 444($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 440($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 436($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 432($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 428($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 424($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 420($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 416($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 412($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 408($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 404($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 400($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 396($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 392($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 388($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 384($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 380($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 376($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 372($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 368($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 364($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 360($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 356($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 352($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 348($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 344($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 340($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 336($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 332($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 328($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 324($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 320($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 316($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 312($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 308($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 304($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 300($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 296($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 292($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 288($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 284($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 280($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 276($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 272($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 268($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 264($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 260($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 256($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 252($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 248($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 244($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 240($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 236($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 232($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 228($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 224($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 220($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 216($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 212($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 208($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 204($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 200($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 196($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 192($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 188($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 184($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 180($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 176($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 172($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 168($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 164($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 160($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 156($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 152($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 148($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 144($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 140($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 136($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 132($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 128($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 124($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 120($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 116($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 112($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 108($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 104($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 100($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 96($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 92($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 88($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 84($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 80($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 76($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 72($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 68($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 64($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 60($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 56($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 52($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 48($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 44($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 40($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 36($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 32($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 28($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 24($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 20($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 16($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 12($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 8($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 4($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s3)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 15
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$s1 2140($fp)
	lw	$s2 2136($fp)
	lw	$s3 2132($fp)
	lw	$s4 2128($fp)
	lw	$s5 2124($fp)
	lw	$s6 2120($fp)
	lw	$fp 2156($sp)
	lw	$s0 2152($sp)
	lw	$ra 2148($sp)
	addiu	$sp $sp 2156
	jr	$ra	
