# start of generated code for cool programs
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
	.word	_GenGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_GenGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const9
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const3
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const3
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	17
	.word	String_dispTab
	.word	int_const12
	.ascii	"../../../../admin/tests/past/fa05/PA5/simple-gc.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	50
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
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
	.word	str_const5
	.word	str_const6
	.word	str_const10
	.word	str_const7
	.word	str_const8
	.word	str_const9
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.f
	.word	Main.main
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
	.word	-1
Main_protObj:
	.word	2
	.word	4
	.word	Main_dispTab
	.word	int_const9
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const9
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
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
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
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
Main_init:
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
String_init:
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
Bool_init:
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
Int_init:
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
IO_init:
	addiu	$sp $sp -12 # Move sp down to store fp s0 and ra
	sw	$fp 12($sp) # Putting fp to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack during initializing object
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # Moving fp to point to right location in sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp) # Restoring fp from stack when class ends
	lw	$s0 8($sp) # Restoring s0 from stack when class ends
	lw	$ra 4($sp) # Restoring ra from stack when class ends
	addiu	$sp $sp 12 # At end of class
	jr	$ra	 # At end of class
Main.f:
	addiu	$sp $sp -12 # At top of function f. From class Main
	sw	$fp 12($sp) # Putting fp to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # The fp now points to right location.
	move	$s0 $a0
	lw	$a0 12($fp) # Inside object_class. Found position of temporary x from ObjectScope as 0
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const0
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 12($s0) # Doing assign
# The garbage collector has been turned on by -g so notifying
	lw	$fp 12($sp) # Code at end of function f. From class Main
	lw	$s0 8($sp) # Code at end of function f. From class Main
	lw	$ra 4($sp) # Code at end of function f. From class Main
	addiu	$sp $sp 16 # Code at end of function f. From class Main
	jr	$ra	 # Code at end of function f. From class Main
Main.main:
	addiu	$sp $sp -12 # At top of function main. From class Main
	sw	$fp 12($sp) # Putting fp to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	sw	$s0 8($sp) # Putting s0 to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	sw	$ra 4($sp) # Putting ra to stack at top of function call
# The garbage collector has been turned on by -g so notifying
	addiu	$fp $sp 4 # The fp now points to right location.
	move	$s0 $a0
	la	$a0 int_const4
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const5
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In plus_class Pushing accumalator ontop of stack.
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	la	$a0 int_const8
	sw	$a0 0($sp) # In dispatch_class. Programmer wants: Call f. Compiler does: Pushes parameter of function f onto stack
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	move	$a0 $s0
	bne	$a0 $zero label0 # The type is SELF_TYPE.  Checking that oject whose function we will call is not null
	la	$a0 str_const0
	li	$t1 4
	jal	_dispatch_abort
label0:# In dispatch_class. Marker to call the function f Line number 4
	lw	$t1 8($a0) # In dispatch_class. Getting location of dispatch table which contains f
	lw	$t1 28($t1) # This is position of method f
	jalr		$t1
	jal	Object.copy
	lw	$t2 12($a0) # Fetching int value from inside int object
	lw	$t1 4($sp) # from stack which is in memory get value of first expression to register t1
	addiu	$sp $sp 4 # descrement stack pointer to maintain invariant
	lw	$t3 12($t1) # Fetching int value from inside int object
	add	$t1 $t2 $t3
	sw	$t1 12($a0) # Storing int
# The garbage collector has been turned on by -g so notifying
	sw	$a0 12($s0) # Doing assign
# The garbage collector has been turned on by -g so notifying
	sw	$a0 0($sp) # In dispatch_class. Programmer wants: Call out_int. Compiler does: Pushes parameter of function out_int onto stack
# The garbage collector has been turned on by -g so notifying
	addiu	$sp $sp -4 # Moving sp to maintain invariant.
	move	$a0 $s0
	bne	$a0 $zero label1 # The type is SELF_TYPE.  Checking that oject whose function we will call is not null
	la	$a0 str_const0
	li	$t1 4
	jal	_dispatch_abort
label1:# In dispatch_class. Marker to call the function out_int Line number 4
	lw	$t1 8($a0) # In dispatch_class. Getting location of dispatch table which contains out_int
	lw	$t1 16($t1) # This is position of method out_int
	jalr		$t1
	lw	$fp 12($sp) # Code at end of function main. From class Main
	lw	$s0 8($sp) # Code at end of function main. From class Main
	lw	$ra 4($sp) # Code at end of function main. From class Main
	addiu	$sp $sp 12 # Code at end of function main. From class Main
	jr	$ra	 # Code at end of function main. From class Main

# end of generated code
#ANN(COOLCLASS, "Object", "_no_class")
#ANN(COOLMETHOD, "Object", "abort", "Object")
#ANN(COOLMETHOD, "Object", "type_name", "String")
#ANN(COOLMETHOD, "Object", "copy", "SELF_TYPE")
#ANN(COOLCLASS, "String", "Object", "Int", "_prim_slot")
#ANN(COOLMETHOD, "String", "length", "Int")
#ANN(COOLMETHOD, "String", "concat", "String", "String")
#ANN(COOLMETHOD, "String", "substr", "Int", "Int", "String")
#ANN(COOLCLASS, "Bool", "Object", "_prim_slot")
#ANN(COOLCLASS, "Int", "Object", "_prim_slot")
#ANN(COOLCLASS, "IO", "Object")
#ANN(COOLMETHOD, "IO", "out_string", "String", "SELF_TYPE")
#ANN(COOLMETHOD, "IO", "out_int", "Int", "SELF_TYPE")
#ANN(COOLMETHOD, "IO", "in_string", "String")
#ANN(COOLMETHOD, "IO", "in_int", "Int")
#ANN(COOLCLASS, "Main","IO", "Int")
  #ANN(COOLMETHOD, "Main", "f", "Int", "Int")
  #ANN(COOLMETHOD, "Main", "main", "Object")
