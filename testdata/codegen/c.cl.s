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
	.word	22
_bool_tag:
	.word	23
_string_tag:
	.word	24
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
str_const46:
	.word	24
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const45:
	.word	24
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const44:
	.word	24
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const43:
	.word	24
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const42:
	.word	24
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const41:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure0"
	.byte	0	
	.align	2
	.word	-1
str_const40:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure17"
	.byte	0	
	.align	2
	.word	-1
str_const39:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure1"
	.byte	0	
	.align	2
	.word	-1
str_const38:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure16"
	.byte	0	
	.align	2
	.word	-1
str_const37:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure15"
	.byte	0	
	.align	2
	.word	-1
str_const36:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure2"
	.byte	0	
	.align	2
	.word	-1
str_const35:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure14"
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure13"
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure3"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure12"
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure4"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure11"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"Closure10"
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure5"
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure6"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure9"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure7"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"Closure8"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	24
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Closure"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	24
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"EvalObject"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	24
	.word	5
	.word	String_dispTab
	.word	int_const8
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	24
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	24
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 0\n"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 17\n"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 1\n"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 16\n"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 15\n"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 2\n"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 14\n"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 13\n"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 3\n"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 12\n"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 4\n"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 11\n"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	24
	.word	10
	.word	String_dispTab
	.word	int_const11
	.ascii	"Applying closure 10\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 5\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 6\n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 9\n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 7\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	24
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Applying closure 8\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	24
	.word	14
	.word	String_dispTab
	.word	int_const12
	.ascii	"/usr/class/cs143/tests/fa05/PA5/c.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	36
	.word	-1
int_const11:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const10:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const9:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const7:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const5:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const4:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const3:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const1:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const0:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	23
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	23
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const20
	.word	str_const21
	.word	str_const22
	.word	str_const23
	.word	str_const24
	.word	str_const25
	.word	str_const26
	.word	str_const27
	.word	str_const28
	.word	str_const29
	.word	str_const30
	.word	str_const31
	.word	str_const32
	.word	str_const33
	.word	str_const34
	.word	str_const35
	.word	str_const36
	.word	str_const37
	.word	str_const38
	.word	str_const39
	.word	str_const40
	.word	str_const41
	.word	str_const42
	.word	str_const43
	.word	str_const44
	.word	str_const45
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	EvalObject_protObj
	.word	EvalObject_init
	.word	Closure_protObj
	.word	Closure_init
	.word	Closure8_protObj
	.word	Closure8_init
	.word	Closure7_protObj
	.word	Closure7_init
	.word	Closure9_protObj
	.word	Closure9_init
	.word	Closure6_protObj
	.word	Closure6_init
	.word	Closure5_protObj
	.word	Closure5_init
	.word	Closure10_protObj
	.word	Closure10_init
	.word	Closure11_protObj
	.word	Closure11_init
	.word	Closure4_protObj
	.word	Closure4_init
	.word	Closure12_protObj
	.word	Closure12_init
	.word	Closure3_protObj
	.word	Closure3_init
	.word	Closure13_protObj
	.word	Closure13_init
	.word	Closure14_protObj
	.word	Closure14_init
	.word	Closure2_protObj
	.word	Closure2_init
	.word	Closure15_protObj
	.word	Closure15_init
	.word	Closure16_protObj
	.word	Closure16_init
	.word	Closure1_protObj
	.word	Closure1_init
	.word	Closure17_protObj
	.word	Closure17_init
	.word	Closure0_protObj
	.word	Closure0_init
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
EvalObject_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
Closure_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure.apply
Closure0_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure0.apply
Closure17_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure17.apply
Closure1_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure1.apply
Closure16_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure16.apply
Closure15_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure15.apply
Closure2_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure2.apply
Closure14_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure14.apply
Closure13_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure13.apply
Closure3_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure3.apply
Closure12_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure12.apply
Closure4_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure4.apply
Closure11_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure11.apply
Closure10_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure10.apply
Closure5_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure5.apply
Closure6_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure6.apply
Closure9_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure9.apply
Closure7_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure7.apply
Closure8_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EvalObject.eval
	.word	Closure.get_parent
	.word	Closure.get_x
	.word	Closure.init
	.word	Closure8.apply
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
Main_protObj:
	.word	25
	.word	3
	.word	Main_dispTab
	.word	-1
String_protObj:
	.word	24
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	23
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	22
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
EvalObject_protObj:
	.word	2
	.word	3
	.word	EvalObject_dispTab
	.word	-1
Closure_protObj:
	.word	3
	.word	5
	.word	Closure_dispTab
	.word	0
	.word	0
	.word	-1
Closure0_protObj:
	.word	21
	.word	5
	.word	Closure0_dispTab
	.word	0
	.word	0
	.word	-1
Closure17_protObj:
	.word	20
	.word	5
	.word	Closure17_dispTab
	.word	0
	.word	0
	.word	-1
Closure1_protObj:
	.word	19
	.word	5
	.word	Closure1_dispTab
	.word	0
	.word	0
	.word	-1
Closure16_protObj:
	.word	18
	.word	5
	.word	Closure16_dispTab
	.word	0
	.word	0
	.word	-1
Closure15_protObj:
	.word	17
	.word	5
	.word	Closure15_dispTab
	.word	0
	.word	0
	.word	-1
Closure2_protObj:
	.word	16
	.word	5
	.word	Closure2_dispTab
	.word	0
	.word	0
	.word	-1
Closure14_protObj:
	.word	15
	.word	5
	.word	Closure14_dispTab
	.word	0
	.word	0
	.word	-1
Closure13_protObj:
	.word	14
	.word	5
	.word	Closure13_dispTab
	.word	0
	.word	0
	.word	-1
Closure3_protObj:
	.word	13
	.word	5
	.word	Closure3_dispTab
	.word	0
	.word	0
	.word	-1
Closure12_protObj:
	.word	12
	.word	5
	.word	Closure12_dispTab
	.word	0
	.word	0
	.word	-1
Closure4_protObj:
	.word	11
	.word	5
	.word	Closure4_dispTab
	.word	0
	.word	0
	.word	-1
Closure11_protObj:
	.word	10
	.word	5
	.word	Closure11_dispTab
	.word	0
	.word	0
	.word	-1
Closure10_protObj:
	.word	9
	.word	5
	.word	Closure10_dispTab
	.word	0
	.word	0
	.word	-1
Closure5_protObj:
	.word	8
	.word	5
	.word	Closure5_dispTab
	.word	0
	.word	0
	.word	-1
Closure6_protObj:
	.word	7
	.word	5
	.word	Closure6_dispTab
	.word	0
	.word	0
	.word	-1
Closure9_protObj:
	.word	6
	.word	5
	.word	Closure9_dispTab
	.word	0
	.word	0
	.word	-1
Closure7_protObj:
	.word	5
	.word	5
	.word	Closure7_dispTab
	.word	0
	.word	0
	.word	-1
Closure8_protObj:
	.word	4
	.word	5
	.word	Closure8_dispTab
	.word	0
	.word	0
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
EvalObject_init:
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
Closure_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	EvalObject_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure0_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure17_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure1_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure16_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure15_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure2_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure14_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure13_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure3_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure12_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure4_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure11_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure10_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure5_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure6_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure9_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure7_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure8_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Closure_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	addiu	$sp $sp -24
	sw	$fp 24($sp)
	sw	$s0 20($sp)
	sw	$ra 16($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 8($fp)
	sw	$s2 4($fp)
	sw	$s3 0($fp)
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure0_protObj
	jal	Object.copy
	jal	Closure0_init
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 15
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure1_protObj
	jal	Object.copy
	jal	Closure1_init
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label3
	la	$a0 str_const0
	li	$t1 20
	jal	_case_abort2
label3:
	lw	$t2 0($s3)
	blt	$t2 3 label4
	bgt	$t2 21 label4
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label2
label4:
	blt	$t2 0 label6
	bgt	$t2 25 label6
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label2
label6:
	jal	_case_abort
label2:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure2_protObj
	jal	Object.copy
	jal	Closure2_init
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label10
	la	$a0 str_const0
	li	$t1 25
	jal	_case_abort2
label10:
	lw	$t2 0($s3)
	blt	$t2 3 label11
	bgt	$t2 21 label11
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label9
label11:
	blt	$t2 0 label13
	bgt	$t2 25 label13
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label9
label13:
	jal	_case_abort
label9:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure3_protObj
	jal	Object.copy
	jal	Closure3_init
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label17
	la	$a0 str_const0
	li	$t1 30
	jal	_case_abort2
label17:
	lw	$t2 0($s3)
	blt	$t2 3 label18
	bgt	$t2 21 label18
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label16
label18:
	blt	$t2 0 label20
	bgt	$t2 25 label20
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label16
label20:
	jal	_case_abort
label16:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure4_protObj
	jal	Object.copy
	jal	Closure4_init
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label24
	la	$a0 str_const0
	li	$t1 35
	jal	_case_abort2
label24:
	lw	$t2 0($s3)
	blt	$t2 3 label25
	bgt	$t2 21 label25
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label23
label25:
	blt	$t2 0 label27
	bgt	$t2 25 label27
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label23
label27:
	jal	_case_abort
label23:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure5_protObj
	jal	Object.copy
	jal	Closure5_init
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label31
	la	$a0 str_const0
	li	$t1 40
	jal	_case_abort2
label31:
	lw	$t2 0($s3)
	blt	$t2 3 label32
	bgt	$t2 21 label32
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label30
label32:
	blt	$t2 0 label34
	bgt	$t2 25 label34
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label35:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label30
label34:
	jal	_case_abort
label30:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure6_protObj
	jal	Object.copy
	jal	Closure6_init
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 41
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label38
	la	$a0 str_const0
	li	$t1 45
	jal	_case_abort2
label38:
	lw	$t2 0($s3)
	blt	$t2 3 label39
	bgt	$t2 21 label39
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 43
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label37
label39:
	blt	$t2 0 label41
	bgt	$t2 25 label41
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label42:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label37
label41:
	jal	_case_abort
label37:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure7_protObj
	jal	Object.copy
	jal	Closure7_init
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label45
	la	$a0 str_const0
	li	$t1 50
	jal	_case_abort2
label45:
	lw	$t2 0($s3)
	blt	$t2 3 label46
	bgt	$t2 21 label46
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label47
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label47:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label44
label46:
	blt	$t2 0 label48
	bgt	$t2 25 label48
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label49:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label44
label48:
	jal	_case_abort
label44:
	move	$s3 $a0
	la	$a0 Closure_protObj
	jal	Object.copy
	jal	Closure_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure8_protObj
	jal	Object.copy
	jal	Closure8_init
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label50:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label52
	la	$a0 str_const0
	li	$t1 55
	jal	_case_abort2
label52:
	lw	$t2 0($s3)
	blt	$t2 3 label53
	bgt	$t2 21 label53
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 53
	jal	_dispatch_abort
label54:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label51
label53:
	blt	$t2 0 label55
	bgt	$t2 25 label55
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label56
	la	$a0 str_const0
	li	$t1 54
	jal	_dispatch_abort
label56:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label51
label55:
	jal	_case_abort
label51:
	lw	$s1 8($fp)
	lw	$s2 4($fp)
	lw	$s3 0($fp)
	lw	$fp 24($sp)
	lw	$s0 20($sp)
	lw	$ra 16($sp)
	addiu	$sp $sp 24
	jr	$ra	
EvalObject.eval:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 3
	jal	_dispatch_abort
label57:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Closure.get_parent:
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
Closure.get_x:
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
Closure.init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 12($fp)
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label58:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure0.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label59
	la	$a0 str_const0
	li	$t1 207
	jal	_dispatch_abort
label59:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label60
	la	$a0 str_const0
	li	$t1 209
	jal	_dispatch_abort
label60:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure17.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label61
	la	$a0 str_const0
	li	$t1 201
	jal	_dispatch_abort
label61:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 203
	jal	_dispatch_abort
label62:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 203
	jal	_dispatch_abort
label63:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure1.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label64
	la	$a0 str_const0
	li	$t1 195
	jal	_dispatch_abort
label64:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure17_protObj
	jal	Object.copy
	jal	Closure17_init
	bne	$a0 $zero label65
	la	$a0 str_const0
	li	$t1 197
	jal	_dispatch_abort
label65:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure16.apply:
	addiu	$sp $sp -28
	sw	$fp 28($sp)
	sw	$s0 24($sp)
	sw	$ra 20($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 12($fp)
	sw	$s2 8($fp)
	sw	$s3 4($fp)
	sw	$s4 0($fp)
	la	$a0 str_const15
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 174
	jal	_dispatch_abort
label66:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 28($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label67
	la	$a0 str_const0
	li	$t1 176
	jal	_dispatch_abort
label67:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label68
	la	$a0 str_const0
	li	$t1 176
	jal	_dispatch_abort
label68:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 176
	jal	_dispatch_abort
label69:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 177
	jal	_dispatch_abort
label70:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	bne	$s4 $zero label72
	la	$a0 str_const0
	li	$t1 181
	jal	_case_abort2
label72:
	lw	$t2 0($s4)
	blt	$t2 3 label73
	bgt	$t2 21 label73
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 179
	jal	_dispatch_abort
label74:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label71
label73:
	blt	$t2 0 label75
	bgt	$t2 25 label75
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label76
	la	$a0 str_const0
	li	$t1 180
	jal	_dispatch_abort
label76:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label71
label75:
	jal	_case_abort
label71:
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 182
	jal	_dispatch_abort
label77:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 182
	jal	_dispatch_abort
label78:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	move	$a0 $s0
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 183
	jal	_dispatch_abort
label79:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label81
	la	$a0 str_const0
	li	$t1 187
	jal	_case_abort2
label81:
	lw	$t2 0($s3)
	blt	$t2 3 label82
	bgt	$t2 21 label82
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 185
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label80
label82:
	blt	$t2 0 label84
	bgt	$t2 25 label84
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label85
	la	$a0 str_const0
	li	$t1 186
	jal	_dispatch_abort
label85:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label80
label84:
	jal	_case_abort
label80:
	move	$s3 $a0
	bne	$s4 $zero label87
	la	$a0 str_const0
	li	$t1 191
	jal	_case_abort2
label87:
	lw	$t2 0($s4)
	blt	$t2 3 label88
	bgt	$t2 21 label88
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label89
	la	$a0 str_const0
	li	$t1 189
	jal	_dispatch_abort
label89:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label86
label88:
	blt	$t2 0 label90
	bgt	$t2 25 label90
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label91
	la	$a0 str_const0
	li	$t1 190
	jal	_dispatch_abort
label91:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label86
label90:
	jal	_case_abort
label86:
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 32
	jr	$ra	
Closure15.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const14
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label92
	la	$a0 str_const0
	li	$t1 168
	jal	_dispatch_abort
label92:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure16_protObj
	jal	Object.copy
	jal	Closure16_init
	bne	$a0 $zero label93
	la	$a0 str_const0
	li	$t1 170
	jal	_dispatch_abort
label93:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure2.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label94
	la	$a0 str_const0
	li	$t1 162
	jal	_dispatch_abort
label94:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure15_protObj
	jal	Object.copy
	jal	Closure15_init
	bne	$a0 $zero label95
	la	$a0 str_const0
	li	$t1 164
	jal	_dispatch_abort
label95:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure14.apply:
	addiu	$sp $sp -28
	sw	$fp 28($sp)
	sw	$s0 24($sp)
	sw	$ra 20($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 12($fp)
	sw	$s2 8($fp)
	sw	$s3 4($fp)
	sw	$s4 0($fp)
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label96
	la	$a0 str_const0
	li	$t1 141
	jal	_dispatch_abort
label96:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 28($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label97
	la	$a0 str_const0
	li	$t1 143
	jal	_dispatch_abort
label97:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label98
	la	$a0 str_const0
	li	$t1 143
	jal	_dispatch_abort
label98:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label99
	la	$a0 str_const0
	li	$t1 143
	jal	_dispatch_abort
label99:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label100
	la	$a0 str_const0
	li	$t1 144
	jal	_dispatch_abort
label100:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	bne	$s4 $zero label102
	la	$a0 str_const0
	li	$t1 148
	jal	_case_abort2
label102:
	lw	$t2 0($s4)
	blt	$t2 3 label103
	bgt	$t2 21 label103
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label104
	la	$a0 str_const0
	li	$t1 146
	jal	_dispatch_abort
label104:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label101
label103:
	blt	$t2 0 label105
	bgt	$t2 25 label105
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label106
	la	$a0 str_const0
	li	$t1 147
	jal	_dispatch_abort
label106:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label101
label105:
	jal	_case_abort
label101:
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label107
	la	$a0 str_const0
	li	$t1 149
	jal	_dispatch_abort
label107:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label108
	la	$a0 str_const0
	li	$t1 149
	jal	_dispatch_abort
label108:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	move	$a0 $s0
	bne	$a0 $zero label109
	la	$a0 str_const0
	li	$t1 150
	jal	_dispatch_abort
label109:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label111
	la	$a0 str_const0
	li	$t1 154
	jal	_case_abort2
label111:
	lw	$t2 0($s3)
	blt	$t2 3 label112
	bgt	$t2 21 label112
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label113
	la	$a0 str_const0
	li	$t1 152
	jal	_dispatch_abort
label113:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label110
label112:
	blt	$t2 0 label114
	bgt	$t2 25 label114
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label115
	la	$a0 str_const0
	li	$t1 153
	jal	_dispatch_abort
label115:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label110
label114:
	jal	_case_abort
label110:
	move	$s3 $a0
	bne	$s4 $zero label117
	la	$a0 str_const0
	li	$t1 158
	jal	_case_abort2
label117:
	lw	$t2 0($s4)
	blt	$t2 3 label118
	bgt	$t2 21 label118
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label119
	la	$a0 str_const0
	li	$t1 156
	jal	_dispatch_abort
label119:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label116
label118:
	blt	$t2 0 label120
	bgt	$t2 25 label120
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label121
	la	$a0 str_const0
	li	$t1 157
	jal	_dispatch_abort
label121:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label116
label120:
	jal	_case_abort
label116:
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 32
	jr	$ra	
Closure13.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label122
	la	$a0 str_const0
	li	$t1 135
	jal	_dispatch_abort
label122:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure14_protObj
	jal	Object.copy
	jal	Closure14_init
	bne	$a0 $zero label123
	la	$a0 str_const0
	li	$t1 137
	jal	_dispatch_abort
label123:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure3.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label124
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label124:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure13_protObj
	jal	Object.copy
	jal	Closure13_init
	bne	$a0 $zero label125
	la	$a0 str_const0
	li	$t1 131
	jal	_dispatch_abort
label125:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure12.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label126
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label126:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label127
	la	$a0 str_const0
	li	$t1 125
	jal	_dispatch_abort
label127:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label128
	la	$a0 str_const0
	li	$t1 125
	jal	_dispatch_abort
label128:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure4.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label129
	la	$a0 str_const0
	li	$t1 117
	jal	_dispatch_abort
label129:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure12_protObj
	jal	Object.copy
	jal	Closure12_init
	bne	$a0 $zero label130
	la	$a0 str_const0
	li	$t1 119
	jal	_dispatch_abort
label130:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure11.apply:
	addiu	$sp $sp -28
	sw	$fp 28($sp)
	sw	$s0 24($sp)
	sw	$ra 20($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 12($fp)
	sw	$s2 8($fp)
	sw	$s3 4($fp)
	sw	$s4 0($fp)
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label131
	la	$a0 str_const0
	li	$t1 96
	jal	_dispatch_abort
label131:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 28($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label132
	la	$a0 str_const0
	li	$t1 98
	jal	_dispatch_abort
label132:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 98
	jal	_dispatch_abort
label133:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label134
	la	$a0 str_const0
	li	$t1 98
	jal	_dispatch_abort
label134:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label135
	la	$a0 str_const0
	li	$t1 99
	jal	_dispatch_abort
label135:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	bne	$s4 $zero label137
	la	$a0 str_const0
	li	$t1 103
	jal	_case_abort2
label137:
	lw	$t2 0($s4)
	blt	$t2 3 label138
	bgt	$t2 21 label138
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label139
	la	$a0 str_const0
	li	$t1 101
	jal	_dispatch_abort
label139:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label136
label138:
	blt	$t2 0 label140
	bgt	$t2 25 label140
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label141
	la	$a0 str_const0
	li	$t1 102
	jal	_dispatch_abort
label141:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label136
label140:
	jal	_case_abort
label136:
	move	$s4 $a0
	move	$a0 $s0
	bne	$a0 $zero label142
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label142:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label143
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label143:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s3 $a0
	move	$a0 $s0
	bne	$a0 $zero label144
	la	$a0 str_const0
	li	$t1 105
	jal	_dispatch_abort
label144:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$s2 $a0
	bne	$s3 $zero label146
	la	$a0 str_const0
	li	$t1 109
	jal	_case_abort2
label146:
	lw	$t2 0($s3)
	blt	$t2 3 label147
	bgt	$t2 21 label147
	move	$s1 $s3
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s1
	bne	$a0 $zero label148
	la	$a0 str_const0
	li	$t1 107
	jal	_dispatch_abort
label148:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label145
label147:
	blt	$t2 0 label149
	bgt	$t2 25 label149
	move	$s1 $s3
	move	$a0 $s0
	bne	$a0 $zero label150
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label150:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label145
label149:
	jal	_case_abort
label145:
	move	$s3 $a0
	bne	$s4 $zero label152
	la	$a0 str_const0
	li	$t1 113
	jal	_case_abort2
label152:
	lw	$t2 0($s4)
	blt	$t2 3 label153
	bgt	$t2 21 label153
	move	$s2 $s4
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label154
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label154:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	b	label151
label153:
	blt	$t2 0 label155
	bgt	$t2 25 label155
	move	$s2 $s4
	move	$a0 $s0
	bne	$a0 $zero label156
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label156:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	la	$a0 EvalObject_protObj
	jal	Object.copy
	jal	EvalObject_init
	b	label151
label155:
	jal	_case_abort
label151:
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 32
	jr	$ra	
Closure10.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 90
	jal	_dispatch_abort
label157:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure11_protObj
	jal	Object.copy
	jal	Closure11_init
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 92
	jal	_dispatch_abort
label158:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure5.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label159
	la	$a0 str_const0
	li	$t1 84
	jal	_dispatch_abort
label159:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure10_protObj
	jal	Object.copy
	jal	Closure10_init
	bne	$a0 $zero label160
	la	$a0 str_const0
	li	$t1 86
	jal	_dispatch_abort
label160:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure6.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label161
	la	$a0 str_const0
	li	$t1 78
	jal	_dispatch_abort
label161:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label162
	la	$a0 str_const0
	li	$t1 80
	jal	_dispatch_abort
label162:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure9.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label163
	la	$a0 str_const0
	li	$t1 72
	jal	_dispatch_abort
label163:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label164
	la	$a0 str_const0
	li	$t1 74
	jal	_dispatch_abort
label164:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	bne	$a0 $zero label165
	la	$a0 str_const0
	li	$t1 74
	jal	_dispatch_abort
label165:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure7.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label166
	la	$a0 str_const0
	li	$t1 66
	jal	_dispatch_abort
label166:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Closure9_protObj
	jal	Object.copy
	jal	Closure9_init
	bne	$a0 $zero label167
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
label167:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Closure8.apply:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label168
	la	$a0 str_const0
	li	$t1 60
	jal	_dispatch_abort
label168:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 16($s0)
	move	$a0 $s0
	bne	$a0 $zero label169
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label169:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
