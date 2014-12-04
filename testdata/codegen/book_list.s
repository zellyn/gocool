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
	.word	7
_bool_tag:
	.word	8
_string_tag:
	.word	9
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
str_const24:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Nil"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Cons"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"BookList"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Article"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Book"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const7
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"PC Magazine"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Ulanoff"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	9
	.word	9
	.word	String_dispTab
	.word	int_const9
	.ascii	"The Top 100 CD_ROMs"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	9
	.word	10
	.word	String_dispTab
	.word	int_const10
	.ascii	"Aho, Sethi, and Ullman"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	9
	.word	16
	.word	String_dispTab
	.word	int_const11
	.ascii	"Compilers, Principles, Techniques, and Tools"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	9
	.word	12
	.word	String_dispTab
	.word	int_const12
	.ascii	"- dynamic type was Article -\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	9
	.word	11
	.word	String_dispTab
	.word	int_const13
	.ascii	"- dynamic type was Book -\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const7
	.ascii	"periodical:  "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	9
	.word	16
	.word	String_dispTab
	.word	int_const14
	.ascii	"/usr/class/cs143/admin/tests/PA5/book_list.cl"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const15
	.ascii	"author:     "
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const16
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const15
	.ascii	"title:      "
	.byte	0	
	.align	2
	.word	-1
int_const16:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const15:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const14:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	45
	.word	-1
int_const13:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	26
	.word	-1
int_const12:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const11:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	44
	.word	-1
int_const10:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const9:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const8:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const7:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const6:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const5:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const4:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const3:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const1:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const0:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const13
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
	.word	str_const18
	.word	str_const19
	.word	str_const20
	.word	str_const21
	.word	str_const22
	.word	str_const23
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Book_protObj
	.word	Book_init
	.word	Article_protObj
	.word	Article_init
	.word	BookList_protObj
	.word	BookList_init
	.word	Cons_protObj
	.word	Cons_init
	.word	Nil_protObj
	.word	Nil_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
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
BookList_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	BookList.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	BookList.print_list
Nil_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Nil.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	Nil.print_list
Cons_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Cons.isNil
	.word	BookList.cons
	.word	Cons.car
	.word	Cons.cdr
	.word	Cons.print_list
	.word	Cons.init
Book_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Book.print
Article_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Article.print
	.word	Article.initArticle
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
Main_protObj:
	.word	10
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
String_protObj:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
BookList_protObj:
	.word	4
	.word	3
	.word	BookList_dispTab
	.word	-1
Nil_protObj:
	.word	6
	.word	3
	.word	Nil_dispTab
	.word	-1
Cons_protObj:
	.word	5
	.word	5
	.word	Cons_dispTab
	.word	0
	.word	0
	.word	-1
Book_protObj:
	.word	2
	.word	5
	.word	Book_dispTab
	.word	str_const24
	.word	str_const24
	.word	-1
Article_protObj:
	.word	3
	.word	6
	.word	Article_dispTab
	.word	str_const24
	.word	str_const24
	.word	str_const24
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
Main_init:
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
BookList_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Nil_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	BookList_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Cons_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	BookList_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Book_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Article_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Book_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init
	bne	$a0 $zero label0
	la	$a0 str_const3
	li	$t1 117
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	move	$s2 $a0
	la	$a0 str_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Article_protObj
	jal	Object.copy
	jal	Article_init
	bne	$a0 $zero label1
	la	$a0 str_const3
	li	$t1 121
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s1 $a0
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	la	$a0 Nil_protObj
	jal	Object.copy
	jal	Nil_init
	bne	$a0 $zero label2
	la	$a0 str_const3
	li	$t1 126
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label3
	la	$a0 str_const3
	li	$t1 126
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	bne	$a0 $zero label4
	la	$a0 str_const3
	li	$t1 127
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
BookList.isNil:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label5
	la	$a0 str_const3
	li	$t1 50
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 bool_const1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
BookList.cons:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$a0 Cons_protObj
	jal	Object.copy
	jal	Cons_init
	move	$s1 $a0
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label6
	la	$a0 str_const3
	li	$t1 54
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
BookList.car:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label7
	la	$a0 str_const3
	li	$t1 62
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
BookList.cdr:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label8
	la	$a0 str_const3
	li	$t1 68
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 BookList_protObj
	jal	Object.copy
	jal	BookList_init
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
BookList.print_list:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label9
	la	$a0 str_const3
	li	$t1 70
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Nil.isNil:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 bool_const1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Nil.print_list:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 bool_const1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Cons.isNil:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 bool_const0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Cons.init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 16($fp)
	sw	$a0 12($s0)
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 20
	jr	$ra	
Cons.car:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 12($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Cons.cdr:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 16($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Cons.print_list:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$a0 12($s0)
	bne	$a0 $zero label11
	la	$a0 str_const3
	li	$t1 95
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label12
	la	$a0 str_const3
	li	$t1 95
	jal	_case_abort2
label12:
	lw	$t2 0($a0)
	blt	$t2 3 label13
	bgt	$t2 3 label13
	move	$s1 $a0
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const3
	li	$t1 97
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label10
label13:
	blt	$t2 2 label15
	bgt	$t2 3 label15
	move	$s1 $a0
	la	$a0 str_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const3
	li	$t1 96
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label10
label15:
	jal	_case_abort
label10:
	lw	$a0 16($s0)
	bne	$a0 $zero label17
	la	$a0 str_const3
	li	$t1 99
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Book.initBook:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 16($fp)
	sw	$a0 12($s0)
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 20
	jr	$ra	
Book.print:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label18
	la	$a0 str_const3
	li	$t1 17
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label19
	la	$a0 str_const3
	li	$t1 17
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label20
	la	$a0 str_const3
	li	$t1 17
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label21
	la	$a0 str_const3
	li	$t1 18
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label22
	la	$a0 str_const3
	li	$t1 18
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label23
	la	$a0 str_const3
	li	$t1 18
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Article.initArticle:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label24
	la	$a0 str_const3
	li	$t1 30
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 20($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 24
	jr	$ra	
Article.print:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label25
	la	$a0 str_const3
	li	$t1 38
	jal	_dispatch_abort
label25:
	la	$t1 Book_dispTab
	lw	$t1 32($t1)
	jalr		$t1
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const3
	li	$t1 39
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label27
	la	$a0 str_const3
	li	$t1 39
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	bne	$a0 $zero label28
	la	$a0 str_const3
	li	$t1 39
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
