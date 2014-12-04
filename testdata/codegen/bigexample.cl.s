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
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
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
str_const44:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const43:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const42:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Child"
	.byte	0	
	.align	2
	.word	-1
str_const41:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Parent"
	.byte	0	
	.align	2
	.word	-1
str_const40:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const19
	.ascii	"Grandparent"
	.byte	0	
	.align	2
	.word	-1
str_const39:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Base"
	.byte	0	
	.align	2
	.word	-1
str_const38:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"C"
	.byte	0	
	.align	2
	.word	-1
str_const37:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const36:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const35:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Blah"
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"C2"
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"C1"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"P"
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const6
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"looks ok!\n"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	4
	.word	10
	.word	String_dispTab
	.word	int_const82
	.ascii	"gonna call doThemAll\n"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const83
	.ascii	"gonna make a Blah\n"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"an int: "
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	14
	.word	String_dispTab
	.word	int_const84
	.ascii	"tested static dispatch and 'new IO'\n"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	12
	.word	String_dispTab
	.word	int_const85
	.ascii	"printed via dynamic dispatch\n"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const6
	.ascii	"hello, world\n"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const22
	.ascii	"bigAttrAccess\n"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigCase\n"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const22
	.ascii	"bigStrCompare\n"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"foobar"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"bar"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"foo"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigSelf\n"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"bigAssign\n"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const83
	.ascii	"assertion failed: "
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigMath\n"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"failed: "
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"bigWhile\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"bigIf\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const24
	.ascii	"more advanced:\n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"basics:\n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Hi"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"whassup?!"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	16
	.word	String_dispTab
	.word	int_const21
	.ascii	"/usr/class/cs143/tests/fa05/PA5/bigexample.cl"
	.byte	0	
	.align	2
	.word	-1
int_const85:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const84:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	36
	.word	-1
int_const83:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	18
	.word	-1
int_const82:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	21
	.word	-1
int_const81:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	498
	.word	-1
int_const80:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	496
	.word	-1
int_const79:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	468
	.word	-1
int_const78:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	459
	.word	-1
int_const77:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	453
	.word	-1
int_const76:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	444
	.word	-1
int_const75:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	438
	.word	-1
int_const74:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	426
	.word	-1
int_const73:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	417
	.word	-1
int_const72:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	408
	.word	-1
int_const71:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	399
	.word	-1
int_const70:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	390
	.word	-1
int_const69:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	381
	.word	-1
int_const68:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	355
	.word	-1
int_const67:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	353
	.word	-1
int_const66:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	352
	.word	-1
int_const65:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	351
	.word	-1
int_const64:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	350
	.word	-1
int_const63:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	346
	.word	-1
int_const62:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	342
	.word	-1
int_const61:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	341
	.word	-1
int_const60:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	340
	.word	-1
int_const59:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	339
	.word	-1
int_const58:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	327
	.word	-1
int_const57:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	314
	.word	-1
int_const56:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	320
	.word	-1
int_const55:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	313
	.word	-1
int_const54:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	312
	.word	-1
int_const53:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	311
	.word	-1
int_const52:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	310
	.word	-1
int_const51:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	106
	.word	-1
int_const50:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	105
	.word	-1
int_const49:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	104
	.word	-1
int_const48:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	92
	.word	-1
int_const47:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	103
	.word	-1
int_const46:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	102
	.word	-1
int_const45:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	101
	.word	-1
int_const44:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2116
	.word	-1
int_const43:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	84
	.word	-1
int_const42:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3114
	.word	-1
int_const41:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2114
	.word	-1
int_const40:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	116
	.word	-1
int_const39:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	115
	.word	-1
int_const38:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	114
	.word	-1
int_const37:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	16
	.word	-1
int_const36:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	259
	.word	-1
int_const35:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	258
	.word	-1
int_const34:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	257
	.word	-1
int_const33:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	255
	.word	-1
int_const32:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	66
	.word	-1
int_const31:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	65
	.word	-1
int_const30:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	254
	.word	-1
int_const29:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	253
	.word	-1
int_const28:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	251
	.word	-1
int_const27:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	250
	.word	-1
int_const26:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const25:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const24:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
int_const23:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	75
	.word	-1
int_const22:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	14
	.word	-1
int_const21:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	45
	.word	-1
int_const20:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const19:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const18:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	55
	.word	-1
int_const17:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1234
	.word	-1
int_const16:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1000
	.word	-1
int_const15:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	123
	.word	-1
int_const14:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	100
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	24
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	34
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	99
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
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
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	P_protObj
	.word	P_init
	.word	C1_protObj
	.word	C1_init
	.word	C2_protObj
	.word	C2_init
	.word	Blah_protObj
	.word	Blah_init
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
	.word	C_protObj
	.word	C_init
	.word	Base_protObj
	.word	Base_init
	.word	Grandparent_protObj
	.word	Grandparent_init
	.word	Parent_protObj
	.word	Parent_init
	.word	Child_protObj
	.word	Child_init
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
Base_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Grandparent_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Parent_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Child_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.e
	.word	A.f
	.word	A.g
	.word	A.i
	.word	A.j
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	B.e
	.word	A.f
	.word	B.g
	.word	A.i
	.word	A.j
	.word	B.h
	.word	B.k
C_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C.e
	.word	A.f
	.word	B.g
	.word	C.i
	.word	A.j
	.word	C.h
	.word	B.k
	.word	C.ell
Blah_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Blah.tiny
	.word	Blah.add
	.word	Blah.compare
	.word	Blah.compareEq
	.word	Blah.isv
	.word	Blah.divByZero
	.word	Blah.cmp
	.word	Blah.ng
	.word	Blah.caller
	.word	Blah.callee
	.word	Blah.get_t
	.word	Blah.useLet
	.word	Blah.useIf
	.word	Blah.useWhile
	.word	Blah.useCase
	.word	Blah.useNew
	.word	Blah.doThemAll
	.word	Blah.bigIf
	.word	Blah.bigWhile
	.word	Blah.bail
	.word	Blah.bigMath
	.word	Blah.assert
	.word	Blah.bigAssign
	.word	Blah.setI
	.word	Blah.getI
	.word	Blah.bigSelf
	.word	Blah.bigStrCompare
	.word	Blah.bigCase
	.word	Blah.bigAttrAccess
P_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
C2_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C2.getX
	.word	C2.setX
C1_dispTab:
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
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
Main_protObj:
	.word	16
	.word	3
	.word	Main_dispTab
	.word	-1
Base_protObj:
	.word	12
	.word	6
	.word	Base_dispTab
	.word	int_const2
	.word	str_const44
	.word	bool_const0
	.word	-1
Grandparent_protObj:
	.word	13
	.word	9
	.word	Grandparent_dispTab
	.word	int_const2
	.word	str_const44
	.word	bool_const0
	.word	0
	.word	int_const2
	.word	0
	.word	-1
Parent_protObj:
	.word	14
	.word	12
	.word	Parent_dispTab
	.word	int_const2
	.word	str_const44
	.word	bool_const0
	.word	0
	.word	int_const2
	.word	0
	.word	0
	.word	int_const2
	.word	bool_const0
	.word	-1
Child_protObj:
	.word	15
	.word	16
	.word	Child_dispTab
	.word	int_const2
	.word	str_const44
	.word	bool_const0
	.word	0
	.word	int_const2
	.word	0
	.word	0
	.word	int_const2
	.word	bool_const0
	.word	0
	.word	0
	.word	0
	.word	str_const44
	.word	-1
A_protObj:
	.word	9
	.word	3
	.word	A_dispTab
	.word	-1
B_protObj:
	.word	10
	.word	3
	.word	B_dispTab
	.word	-1
C_protObj:
	.word	11
	.word	3
	.word	C_dispTab
	.word	-1
Blah_protObj:
	.word	8
	.word	11
	.word	Blah_dispTab
	.word	int_const2
	.word	bool_const0
	.word	str_const44
	.word	int_const2
	.word	bool_const0
	.word	str_const44
	.word	0
	.word	0
	.word	-1
P_protObj:
	.word	5
	.word	4
	.word	P_dispTab
	.word	int_const2
	.word	-1
C2_protObj:
	.word	7
	.word	4
	.word	C2_dispTab
	.word	int_const2
	.word	-1
C1_protObj:
	.word	6
	.word	4
	.word	C1_dispTab
	.word	int_const2
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
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
Base_init:
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
Grandparent_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Base_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Parent_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Grandparent_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Child_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Parent_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A_init:
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
B_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	A_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	B_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$a0 24($s0)
	la	$a0 bool_const1
	sw	$a0 28($s0)
	move	$a0 $s0
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label1:
	la	$t1 Blah_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const1
	sw	$a0 32($s0)
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 36($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
P_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const0
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C2_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	P_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C1_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	P_init
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
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	move	$s3 $a0
	move	$s2 $zero
	la	$a0 str_const19
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 560
	jal	_dispatch_abort
label2:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const20
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 562
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const21
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 564
	jal	_dispatch_abort
label4:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	la	$s1 int_const0
	la	$a0 str_const22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 569
	jal	_dispatch_abort
label5:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 570
	jal	_dispatch_abort
label6:
	la	$t1 IO_dispTab
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 571
	jal	_dispatch_abort
label7:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 574
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 Blah_protObj
	jal	Object.copy
	jal	Blah_init
	move	$s2 $a0
	la	$a0 str_const24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 577
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s2
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 578
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 76($t1)
	jalr		$t1
	la	$a0 str_const25
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 580
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$s1 8($fp)
	lw	$s2 4($fp)
	lw	$s3 0($fp)
	lw	$fp 24($sp)
	lw	$s0 20($sp)
	lw	$ra 16($sp)
	addiu	$sp $sp 24
	jr	$ra	
A.e:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A.f:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A.g:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A.i:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A.j:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
B.e:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
B.g:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
B.h:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
B.k:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C.e:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C.h:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C.i:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
C.ell:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.tiny:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const2
	la	$a0 bool_const0
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.add:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$s1 int_const1
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.compare:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$s1 int_const1
	la	$a0 int_const3
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label12
	la	$a0 bool_const0
label12:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.compareEq:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$s1 int_const1
	la	$t2 int_const3
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label13
	la	$a1 bool_const0
	jal	equality_test
label13:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.isv:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const1
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label14
	la	$a0 bool_const0
label14:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.divByZero:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$s1 int_const1
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.cmp:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 bool_const1
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label15
	la	$a0 bool_const0
label15:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.ng:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.caller:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$a0 int_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 43
	jal	_dispatch_abort
label16:
	la	$t1 Blah_dispTab
	lw	$t1 48($t1)
	jalr		$t1
	move	$s1 $a0
	la	$a0 int_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 43
	jal	_dispatch_abort
label17:
	la	$t1 Blah_dispTab
	lw	$t1 48($t1)
	jalr		$t1
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.callee:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$s1 20($fp)
	lw	$a0 16($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 24
	jr	$ra	
Blah.get_t:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 32($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.useLet:
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
	la	$s4 int_const2
	la	$s3 int_const8
	lw	$s2 24($s0)
	move	$s1 $s4
	move	$a0 $s3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	move	$a0 $s2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 28
	jr	$ra	
Blah.useIf:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 58
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$t1 12($a0)
	beqz	$t1 label18
	move	$a0 $s0
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 59
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	b	label19
label18:
	move	$a0 $s0
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 61
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label19:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.useWhile:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
label23:
	move	$a0 $s0
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 66
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	lw	$t1 12($a0)
	beq	$t1 $zero label24
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
	b	label23
label24:
	move	$a0 $zero
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.useCase:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 76
	jal	_case_abort2
label28:
	lw	$t2 0($a0)
	blt	$t2 11 label29
	bgt	$t2 11 label29
	move	$s1 $a0
	la	$a0 int_const9
	b	label27
label29:
	blt	$t2 8 label30
	bgt	$t2 8 label30
	move	$s1 $a0
	la	$a0 int_const4
	b	label27
label30:
	blt	$t2 5 label31
	bgt	$t2 7 label31
	move	$s1 $a0
	la	$a0 int_const0
	b	label27
label31:
	jal	_case_abort
label27:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.useNew:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	la	$a0 Bool_protObj
	jal	Object.copy
	jal	Bool_init
	la	$a0 C_protObj
	jal	Object.copy
	jal	C_init
	la	$a0 Main_protObj
	jal	Object.copy
	jal	Main_init
	la	$t1 class_objTab
	lw	$t2 0($s0)
	sll	$t2 $t2 3
	addu	$t1 $t1 $t2
	move	$s1 $t1
	lw	$a0 0($t1)
	jal	Object.copy
	lw	$t1 4($s1)
	jalr		$t1
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.doThemAll:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 88
	jal	_dispatch_abort
label32:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 89
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 90
	jal	_dispatch_abort
label34:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 91
	jal	_dispatch_abort
label35:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 92
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 93
	jal	_dispatch_abort
label37:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 95
	jal	_dispatch_abort
label38:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 96
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 97
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 98
	jal	_dispatch_abort
label41:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 99
	jal	_dispatch_abort
label42:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 100
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 101
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 60($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 102
	jal	_dispatch_abort
label45:
	lw	$t1 8($a0)
	lw	$t1 64($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label46
	la	$a0 str_const0
	li	$t1 103
	jal	_dispatch_abort
label46:
	lw	$t1 8($a0)
	lw	$t1 68($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label47
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label47:
	lw	$t1 8($a0)
	lw	$t1 72($t1)
	jalr		$t1
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 106
	jal	_dispatch_abort
label48:
	la	$t1 IO_dispTab
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 107
	jal	_dispatch_abort
label49:
	lw	$t1 8($a0)
	lw	$t1 80($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label50:
	lw	$t1 8($a0)
	lw	$t1 92($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label51
	la	$a0 str_const0
	li	$t1 109
	jal	_dispatch_abort
label51:
	lw	$t1 8($a0)
	lw	$t1 100($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label52
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label52:
	lw	$t1 8($a0)
	lw	$t1 84($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label53
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label53:
	lw	$t1 8($a0)
	lw	$t1 112($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label54:
	lw	$t1 8($a0)
	lw	$t1 116($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label55
	la	$a0 str_const0
	li	$t1 113
	jal	_dispatch_abort
label55:
	lw	$t1 8($a0)
	lw	$t1 120($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label56
	la	$a0 str_const0
	li	$t1 114
	jal	_dispatch_abort
label56:
	lw	$t1 8($a0)
	lw	$t1 124($t1)
	jalr		$t1
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.bigIf:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 120
	jal	_dispatch_abort
label57:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label58
	la	$a0 bool_const0
	lw	$t1 12($a0)
	beqz	$t1 label60
	move	$a0 $s0
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 124
	jal	_dispatch_abort
label62:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
	b	label61
label60:
	la	$a0 int_const2
label61:
	b	label59
label58:
	move	$a0 $s0
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label63:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
label59:
	la	$a0 bool_const0
	lw	$t1 12($a0)
	beqz	$t1 label64
	move	$a0 $s0
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 133
	jal	_dispatch_abort
label66:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
	b	label65
label64:
	la	$a0 bool_const0
	lw	$t1 12($a0)
	beqz	$t1 label67
	move	$a0 $s0
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 136
	jal	_dispatch_abort
label69:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
	b	label68
label67:
	la	$a0 int_const2
label68:
label65:
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label70
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label72
	la	$a0 int_const2
	b	label73
label72:
	move	$a0 $s0
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 146
	jal	_dispatch_abort
label74:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
label73:
	b	label71
label70:
	move	$a0 $s0
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 149
	jal	_dispatch_abort
label75:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
label71:
	la	$a0 bool_const0
	lw	$t1 12($a0)
	beqz	$t1 label76
	move	$a0 $s0
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 153
	jal	_dispatch_abort
label78:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
	b	label77
label76:
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label79
	la	$a0 int_const2
	b	label80
label79:
	move	$a0 $s0
	bne	$a0 $zero label81
	la	$a0 str_const0
	li	$t1 158
	jal	_dispatch_abort
label81:
	la	$t1 Object_dispTab
	lw	$t1 0($t1)
	jalr		$t1
label80:
label77:
	la	$a0 int_const2
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Blah.bigWhile:
	addiu	$sp $sp -40
	sw	$fp 40($sp)
	sw	$s0 36($sp)
	sw	$ra 32($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 24($fp)
	sw	$s2 20($fp)
	sw	$s3 16($fp)
	sw	$s4 12($fp)
	sw	$s5 8($fp)
	sw	$s6 4($fp)
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label82
	la	$a0 str_const0
	li	$t1 166
	jal	_dispatch_abort
label82:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s6 int_const10
	la	$s5 int_const2
label83:
	move	$s4 $s6
	la	$a0 int_const11
	lw	$t1 12($s4)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label86
	la	$a0 bool_const0
label86:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label85
	la	$a0 bool_const0
label85:
	lw	$t1 12($a0)
	beq	$t1 $zero label84
	move	$s4 $s6
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	move	$s4 $s5
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s5 $a0
	b	label83
label84:
	move	$a0 $zero
	move	$s4 $s6
	la	$t2 int_const11
	move	$t1 $s4
	la	$a0 bool_const1
	beq	$t1 $t2 label90
	la	$a1 bool_const0
	jal	equality_test
label90:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label89
	la	$a0 bool_const0
label89:
	lw	$t1 12($a0)
	beqz	$t1 label87
	move	$a0 $s0
	bne	$a0 $zero label91
	la	$a0 str_const0
	li	$t1 178
	jal	_dispatch_abort
label91:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	b	label88
label87:
	move	$s4 $s5
	la	$t2 int_const12
	move	$t1 $s4
	la	$a0 bool_const1
	beq	$t1 $t2 label95
	la	$a1 bool_const0
	jal	equality_test
label95:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label94
	la	$a0 bool_const0
label94:
	lw	$t1 12($a0)
	beqz	$t1 label92
	move	$a0 $s0
	bne	$a0 $zero label96
	la	$a0 str_const0
	li	$t1 179
	jal	_dispatch_abort
label96:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	b	label93
label92:
	move	$a0 $s0
label93:
label88:
	la	$s6 int_const2
	la	$s5 int_const2
	la	$s4 int_const2
	la	$s3 int_const2
	la	$s2 int_const2
	la	$s1 int_const2
	la	$s6 int_const2
label97:
	sw	$s6 0($fp)
	la	$a0 int_const11
	lw	$t1 0($fp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label99
	la	$a0 bool_const0
label99:
	lw	$t1 12($a0)
	beq	$t1 $zero label98
	la	$s5 int_const2
label100:
	sw	$s5 0($fp)
	la	$a0 int_const11
	lw	$t1 0($fp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label102
	la	$a0 bool_const0
label102:
	lw	$t1 12($a0)
	beq	$t1 $zero label101
	la	$s4 int_const2
label103:
	sw	$s4 0($fp)
	la	$a0 int_const11
	lw	$t1 0($fp)
	lw	$t1 12($t1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label105
	la	$a0 bool_const0
label105:
	lw	$t1 12($a0)
	beq	$t1 $zero label104
	sw	$s4 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s4 $a0
	sw	$s1 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	b	label103
label104:
	move	$a0 $zero
	sw	$s5 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s5 $a0
	sw	$s2 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	b	label100
label101:
	move	$a0 $zero
	sw	$s6 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	sw	$s3 0($fp)
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s3 $a0
	b	label97
label98:
	move	$a0 $zero
	sw	$s3 0($fp)
	la	$t2 int_const11
	lw	$t1 0($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label106
	la	$a1 bool_const0
	jal	equality_test
label106:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label107
	la	$a0 str_const0
	li	$t1 209
	jal	_dispatch_abort
label107:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s2 0($fp)
	la	$t2 int_const14
	lw	$t1 0($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label108
	la	$a1 bool_const0
	jal	equality_test
label108:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const15
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label109
	la	$a0 str_const0
	li	$t1 210
	jal	_dispatch_abort
label109:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s1 0($fp)
	la	$t2 int_const16
	lw	$t1 0($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label110
	la	$a1 bool_const0
	jal	equality_test
label110:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label111
	la	$a0 str_const0
	li	$t1 211
	jal	_dispatch_abort
label111:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 24($fp)
	lw	$s2 20($fp)
	lw	$s3 16($fp)
	lw	$s4 12($fp)
	lw	$s5 8($fp)
	lw	$s6 4($fp)
	lw	$fp 40($sp)
	lw	$s0 36($sp)
	lw	$ra 32($sp)
	addiu	$sp $sp 40
	jr	$ra	
Blah.bail:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label112
	la	$a0 str_const0
	li	$t1 218
	jal	_dispatch_abort
label112:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label113
	la	$a0 str_const0
	li	$t1 219
	jal	_dispatch_abort
label113:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label114
	la	$a0 str_const0
	li	$t1 220
	jal	_dispatch_abort
label114:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label115
	la	$a0 str_const0
	li	$t1 221
	jal	_dispatch_abort
label115:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.bigMath:
	addiu	$sp $sp -48
	sw	$fp 48($sp)
	sw	$s0 44($sp)
	sw	$ra 40($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 32($fp)
	sw	$s2 28($fp)
	sw	$s3 24($fp)
	sw	$s4 20($fp)
	sw	$s5 16($fp)
	sw	$s6 12($fp)
	la	$s6 int_const1
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const0
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label118
	la	$a1 bool_const0
	jal	equality_test
label118:
	lw	$t1 12($a0)
	beqz	$t1 label116
	la	$a0 int_const2
	b	label117
label116:
	la	$a0 int_const18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label119
	la	$a0 str_const0
	li	$t1 228
	jal	_dispatch_abort
label119:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label117:
	la	$a0 str_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label120
	la	$a0 str_const0
	li	$t1 231
	jal	_dispatch_abort
label120:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s6 int_const1
	la	$t2 int_const1
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label123
	la	$a1 bool_const0
	jal	equality_test
label123:
	lw	$t1 12($a0)
	beqz	$t1 label121
	la	$s6 int_const1
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const0
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label126
	la	$a1 bool_const0
	jal	equality_test
label126:
	lw	$t1 12($a0)
	beqz	$t1 label124
	la	$s6 int_const4
	la	$a0 int_const0
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const3
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label129
	la	$a1 bool_const0
	jal	equality_test
label129:
	lw	$t1 12($a0)
	beqz	$t1 label127
	la	$s6 int_const19
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const20
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label132
	la	$a1 bool_const0
	jal	equality_test
label132:
	lw	$t1 12($a0)
	beqz	$t1 label130
	la	$s6 int_const8
	la	$a0 int_const19
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const7
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label135
	la	$a1 bool_const0
	jal	equality_test
label135:
	lw	$t1 12($a0)
	beqz	$t1 label133
	la	$s6 int_const21
	la	$a0 int_const22
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$s5 int_const23
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const14
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const7
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label138
	la	$a1 bool_const0
	jal	equality_test
label138:
	lw	$t1 12($a0)
	beqz	$t1 label136
	la	$s6 int_const14
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const0
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label141
	la	$a1 bool_const0
	jal	equality_test
label141:
	lw	$t1 12($a0)
	beqz	$t1 label139
	la	$s6 int_const1
	la	$s5 int_const3
	la	$a0 int_const0
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const5
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label144
	la	$a1 bool_const0
	jal	equality_test
label144:
	lw	$t1 12($a0)
	beqz	$t1 label142
	la	$s6 int_const1
	la	$s5 int_const3
	la	$s4 int_const0
	la	$s3 int_const9
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s3)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const24
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label147
	la	$a1 bool_const0
	jal	equality_test
label147:
	lw	$t1 12($a0)
	beqz	$t1 label145
	la	$s6 int_const1
	la	$s5 int_const3
	la	$s4 int_const0
	la	$s3 int_const9
	la	$s2 int_const4
	la	$s1 int_const5
	la	$a0 int_const25
	sw	$a0 0($fp)
	la	$a0 int_const26
	sw	$a0 4($fp)
	la	$a0 int_const7
	sw	$a0 8($fp)
	la	$a0 int_const11
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
	add	$t1 $t1 $t2
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
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s3)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s6)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const18
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label150
	la	$a1 bool_const0
	jal	equality_test
label150:
	lw	$t1 12($a0)
	beqz	$t1 label148
	la	$a0 bool_const1
	b	label149
label148:
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label151
	la	$a0 str_const0
	li	$t1 244
	jal	_dispatch_abort
label151:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label149:
	b	label146
label145:
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label152
	la	$a0 str_const0
	li	$t1 245
	jal	_dispatch_abort
label152:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label146:
	b	label143
label142:
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 246
	jal	_dispatch_abort
label153:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label143:
	b	label140
label139:
	la	$a0 int_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label154
	la	$a0 str_const0
	li	$t1 247
	jal	_dispatch_abort
label154:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label140:
	b	label137
label136:
	la	$a0 int_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label155
	la	$a0 str_const0
	li	$t1 248
	jal	_dispatch_abort
label155:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label137:
	b	label134
label133:
	la	$a0 int_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label156
	la	$a0 str_const0
	li	$t1 249
	jal	_dispatch_abort
label156:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label134:
	b	label131
label130:
	la	$a0 int_const25
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 250
	jal	_dispatch_abort
label157:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label131:
	b	label128
label127:
	la	$a0 int_const26
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 251
	jal	_dispatch_abort
label158:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label128:
	b	label125
label124:
	la	$a0 int_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label159
	la	$a0 str_const0
	li	$t1 252
	jal	_dispatch_abort
label159:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label125:
	b	label122
label121:
	la	$a0 int_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label160
	la	$a0 str_const0
	li	$t1 253
	jal	_dispatch_abort
label160:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
label122:
	la	$a0 bool_const0
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label161
	la	$a0 bool_const0
label161:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const27
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label162
	la	$a0 str_const0
	li	$t1 256
	jal	_dispatch_abort
label162:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 bool_const1
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label164
	la	$a0 bool_const0
label164:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label163
	la	$a0 bool_const0
label163:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const28
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label165
	la	$a0 str_const0
	li	$t1 257
	jal	_dispatch_abort
label165:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s6 int_const0
	la	$a0 int_const9
	lw	$t1 12($s6)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label166
	la	$a0 bool_const0
label166:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const29
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label167
	la	$a0 str_const0
	li	$t1 259
	jal	_dispatch_abort
label167:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s6 int_const0
	la	$a0 int_const0
	lw	$t1 12($s6)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label169
	la	$a0 bool_const0
label169:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label168
	la	$a0 bool_const0
label168:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const30
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label170
	la	$a0 str_const0
	li	$t1 260
	jal	_dispatch_abort
label170:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s6 int_const31
	la	$a0 int_const32
	lw	$t1 12($s6)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label171
	la	$a0 bool_const0
label171:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const33
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label172
	la	$a0 str_const0
	li	$t1 261
	jal	_dispatch_abort
label172:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s6 int_const31
	la	$a0 int_const31
	lw	$t1 12($s6)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label173
	la	$a0 bool_const0
label173:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const33
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label174
	la	$a0 str_const0
	li	$t1 262
	jal	_dispatch_abort
label174:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const3
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$s5 int_const2
	la	$a0 int_const3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s5)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$t1 $s6
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label175
	la	$a1 bool_const0
	jal	equality_test
label175:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const34
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label176
	la	$a0 str_const0
	li	$t1 264
	jal	_dispatch_abort
label176:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const3
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$a0 int_const3
	lw	$t1 12($s6)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label177
	la	$a0 bool_const0
label177:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const35
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label178
	la	$a0 str_const0
	li	$t1 265
	jal	_dispatch_abort
label178:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s6 $a0
	la	$t2 int_const2
	move	$t1 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label179
	la	$a1 bool_const0
	jal	equality_test
label179:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const36
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label180
	la	$a0 str_const0
	li	$t1 266
	jal	_dispatch_abort
label180:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 32($fp)
	lw	$s2 28($fp)
	lw	$s3 24($fp)
	lw	$s4 20($fp)
	lw	$s5 16($fp)
	lw	$s6 12($fp)
	lw	$fp 48($sp)
	lw	$s0 44($sp)
	lw	$ra 40($sp)
	addiu	$sp $sp 48
	jr	$ra	
Blah.assert:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 16($fp)
	lw	$t1 12($a0)
	beqz	$t1 label181
	la	$a0 bool_const1
	b	label182
label181:
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label183
	la	$a0 str_const0
	li	$t1 271
	jal	_dispatch_abort
label183:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label184
	la	$a0 str_const0
	li	$t1 272
	jal	_dispatch_abort
label184:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label185
	la	$a0 str_const0
	li	$t1 273
	jal	_dispatch_abort
label185:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label186
	la	$a0 str_const0
	li	$t1 274
	jal	_dispatch_abort
label186:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
label182:
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 20
	jr	$ra	
Blah.bigAssign:
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
	la	$s4 int_const2
	la	$s3 int_const2
	la	$s2 int_const2
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label187
	la	$a0 str_const0
	li	$t1 284
	jal	_dispatch_abort
label187:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$s1 $s4
	la	$t2 int_const2
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label188
	la	$a1 bool_const0
	jal	equality_test
label188:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label189
	la	$a0 str_const0
	li	$t1 286
	jal	_dispatch_abort
label189:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const2
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label190
	la	$a1 bool_const0
	jal	equality_test
label190:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label191
	la	$a0 str_const0
	li	$t1 287
	jal	_dispatch_abort
label191:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	la	$t2 int_const2
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label192
	la	$a1 bool_const0
	jal	equality_test
label192:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label193
	la	$a0 str_const0
	li	$t1 288
	jal	_dispatch_abort
label193:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s4 int_const1
	la	$s3 int_const3
	la	$s2 int_const0
	move	$s1 $s4
	la	$t2 int_const1
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label194
	la	$a1 bool_const0
	jal	equality_test
label194:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label195
	la	$a0 str_const0
	li	$t1 293
	jal	_dispatch_abort
label195:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const3
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label196
	la	$a1 bool_const0
	jal	equality_test
label196:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label197
	la	$a0 str_const0
	li	$t1 294
	jal	_dispatch_abort
label197:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	la	$t2 int_const0
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label198
	la	$a1 bool_const0
	jal	equality_test
label198:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label199
	la	$a0 str_const0
	li	$t1 295
	jal	_dispatch_abort
label199:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s2 int_const1
	la	$s3 int_const3
	la	$s4 int_const0
	move	$s1 $s2
	la	$t2 int_const1
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label200
	la	$a1 bool_const0
	jal	equality_test
label200:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label201
	la	$a0 str_const0
	li	$t1 300
	jal	_dispatch_abort
label201:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const3
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label202
	la	$a1 bool_const0
	jal	equality_test
label202:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label203
	la	$a0 str_const0
	li	$t1 301
	jal	_dispatch_abort
label203:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s4
	la	$t2 int_const0
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label204
	la	$a1 bool_const0
	jal	equality_test
label204:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const37
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label205
	la	$a0 str_const0
	li	$t1 302
	jal	_dispatch_abort
label205:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$s3 int_const5
	move	$s4 $s3
	move	$s1 $s4
	la	$t2 int_const5
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label206
	la	$a1 bool_const0
	jal	equality_test
label206:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const38
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label207
	la	$a0 str_const0
	li	$t1 305
	jal	_dispatch_abort
label207:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const5
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label208
	la	$a1 bool_const0
	jal	equality_test
label208:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const39
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label209
	la	$a0 str_const0
	li	$t1 306
	jal	_dispatch_abort
label209:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	la	$t2 int_const1
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label210
	la	$a1 bool_const0
	jal	equality_test
label210:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const40
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label211
	la	$a0 str_const0
	li	$t1 307
	jal	_dispatch_abort
label211:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$a0 int_const9
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s4 $a0
	move	$s1 $s4
	la	$a0 int_const0
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s3 $a0
	move	$s1 $s4
	move	$a0 $s3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const22
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	move	$s1 $s3
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s3 $a0
	move	$s1 $s4
	la	$t2 int_const11
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label212
	la	$a1 bool_const0
	jal	equality_test
label212:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const41
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label213
	la	$a0 str_const0
	li	$t1 313
	jal	_dispatch_abort
label213:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const26
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label214
	la	$a1 bool_const0
	jal	equality_test
label214:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const42
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label215
	la	$a0 str_const0
	li	$t1 314
	jal	_dispatch_abort
label215:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	la	$t2 int_const43
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label216
	la	$a1 bool_const0
	jal	equality_test
label216:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const44
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label217
	la	$a0 str_const0
	li	$t1 315
	jal	_dispatch_abort
label217:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s4 $s3
	move	$s3 $s2
	move	$s2 $s4
	move	$s1 $s4
	la	$t2 int_const26
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label218
	la	$a1 bool_const0
	jal	equality_test
label218:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const45
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label219
	la	$a0 str_const0
	li	$t1 320
	jal	_dispatch_abort
label219:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const43
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label220
	la	$a1 bool_const0
	jal	equality_test
label220:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const46
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label221
	la	$a0 str_const0
	li	$t1 321
	jal	_dispatch_abort
label221:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	la	$t2 int_const26
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label222
	la	$a1 bool_const0
	jal	equality_test
label222:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const47
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label223
	la	$a0 str_const0
	li	$t1 322
	jal	_dispatch_abort
label223:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s4
	move	$a0 $s3
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$t2 int_const48
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label224
	la	$a1 bool_const0
	jal	equality_test
label224:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const49
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label225
	la	$a0 str_const0
	li	$t1 324
	jal	_dispatch_abort
label225:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s4
	la	$t2 int_const26
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label226
	la	$a1 bool_const0
	jal	equality_test
label226:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const50
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label227
	la	$a0 str_const0
	li	$t1 325
	jal	_dispatch_abort
label227:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	la	$t2 int_const43
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label228
	la	$a1 bool_const0
	jal	equality_test
label228:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const51
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label229
	la	$a0 str_const0
	li	$t1 326
	jal	_dispatch_abort
label229:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 28
	jr	$ra	
Blah.setI:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 12($fp)
	sw	$a0 12($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Blah.getI:
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
Blah.bigSelf:
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
	move	$s4 $zero
	move	$s3 $s0
	la	$a0 Blah_protObj
	jal	Object.copy
	jal	Blah_init
	move	$s2 $a0
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label230
	la	$a0 str_const0
	li	$t1 339
	jal	_dispatch_abort
label230:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 bool_const1
	beqz	$s4 label231
	la	$a0 bool_const0
label231:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const52
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label232
	la	$a0 str_const0
	li	$t1 341
	jal	_dispatch_abort
label232:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s4
	move	$t1 $s1
	move	$t2 $s3
	la	$a0 bool_const1
	beq	$t1 $t2 label234
	la	$a1 bool_const0
	jal	equality_test
label234:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label233
	la	$a0 bool_const0
label233:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const53
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label235
	la	$a0 str_const0
	li	$t1 342
	jal	_dispatch_abort
label235:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s2
	la	$a0 bool_const1
	beq	$t1 $t2 label237
	la	$a1 bool_const0
	jal	equality_test
label237:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label236
	la	$a0 bool_const0
label236:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const54
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label238
	la	$a0 str_const0
	li	$t1 343
	jal	_dispatch_abort
label238:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s4
	move	$t1 $s1
	move	$t2 $s2
	la	$a0 bool_const1
	beq	$t1 $t2 label240
	la	$a1 bool_const0
	jal	equality_test
label240:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label239
	la	$a0 bool_const0
label239:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const55
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label241
	la	$a0 str_const0
	li	$t1 344
	jal	_dispatch_abort
label241:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label242
	la	$a0 str_const0
	li	$t1 346
	jal	_dispatch_abort
label242:
	lw	$t1 8($a0)
	lw	$t1 104($t1)
	jalr		$t1
	la	$a0 int_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label243
	la	$a0 str_const0
	li	$t1 347
	jal	_dispatch_abort
label243:
	lw	$t1 8($a0)
	lw	$t1 104($t1)
	jalr		$t1
	move	$a0 $s3
	bne	$a0 $zero label246
	la	$a0 str_const0
	li	$t1 348
	jal	_dispatch_abort
label246:
	lw	$t1 8($a0)
	lw	$t1 108($t1)
	jalr		$t1
	move	$s1 $a0
	move	$a0 $s2
	bne	$a0 $zero label247
	la	$a0 str_const0
	li	$t1 348
	jal	_dispatch_abort
label247:
	lw	$t1 8($a0)
	lw	$t1 108($t1)
	jalr		$t1
	move	$t1 $s1
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label245
	la	$a1 bool_const0
	jal	equality_test
label245:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label244
	la	$a0 bool_const0
label244:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const56
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label248
	la	$a0 str_const0
	li	$t1 348
	jal	_dispatch_abort
label248:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s2 $s0
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s2
	la	$a0 bool_const1
	beq	$t1 $t2 label249
	la	$a1 bool_const0
	jal	equality_test
label249:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const57
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label250
	la	$a0 str_const0
	li	$t1 351
	jal	_dispatch_abort
label250:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s3
	bne	$a0 $zero label251
	la	$a0 str_const0
	li	$t1 353
	jal	_dispatch_abort
label251:
	lw	$t1 8($a0)
	lw	$t1 104($t1)
	jalr		$t1
	la	$a0 int_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label252
	la	$a0 str_const0
	li	$t1 354
	jal	_dispatch_abort
label252:
	lw	$t1 8($a0)
	lw	$t1 104($t1)
	jalr		$t1
	move	$a0 $s3
	bne	$a0 $zero label254
	la	$a0 str_const0
	li	$t1 355
	jal	_dispatch_abort
label254:
	lw	$t1 8($a0)
	lw	$t1 108($t1)
	jalr		$t1
	move	$s1 $a0
	move	$a0 $s2
	bne	$a0 $zero label255
	la	$a0 str_const0
	li	$t1 355
	jal	_dispatch_abort
label255:
	lw	$t1 8($a0)
	lw	$t1 108($t1)
	jalr		$t1
	move	$t1 $s1
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label253
	la	$a1 bool_const0
	jal	equality_test
label253:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const58
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label256
	la	$a0 str_const0
	li	$t1 355
	jal	_dispatch_abort
label256:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 28
	jr	$ra	
Blah.bigStrCompare:
	addiu	$sp $sp -36
	sw	$fp 36($sp)
	sw	$s0 32($sp)
	sw	$ra 28($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 20($fp)
	sw	$s2 16($fp)
	sw	$s3 12($fp)
	sw	$s4 8($fp)
	sw	$s5 4($fp)
	sw	$s6 0($fp)
	la	$s6 str_const13
	la	$s5 str_const14
	la	$s4 str_const15
	la	$s3 str_const44
	la	$s2 str_const44
	la	$a0 str_const16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label257
	la	$a0 str_const0
	li	$t1 367
	jal	_dispatch_abort
label257:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$s1 $s6
	move	$t1 $s1
	move	$t2 $s5
	la	$a0 bool_const1
	beq	$t1 $t2 label259
	la	$a1 bool_const0
	jal	equality_test
label259:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label258
	la	$a0 bool_const0
label258:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const59
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label260
	la	$a0 str_const0
	li	$t1 369
	jal	_dispatch_abort
label260:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s6
	la	$t2 str_const13
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label261
	la	$a1 bool_const0
	jal	equality_test
label261:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const60
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label262
	la	$a0 str_const0
	li	$t1 370
	jal	_dispatch_abort
label262:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s5
	la	$t2 str_const14
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label263
	la	$a1 bool_const0
	jal	equality_test
label263:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const61
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label264
	la	$a0 str_const0
	li	$t1 371
	jal	_dispatch_abort
label264:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s2
	la	$a0 bool_const1
	beq	$t1 $t2 label265
	la	$a1 bool_const0
	jal	equality_test
label265:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const62
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label266
	la	$a0 str_const0
	li	$t1 372
	jal	_dispatch_abort
label266:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s4
	la	$a0 bool_const1
	beq	$t1 $t2 label268
	la	$a1 bool_const0
	jal	equality_test
label268:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label267
	la	$a0 bool_const0
label267:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const63
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label269
	la	$a0 str_const0
	li	$t1 373
	jal	_dispatch_abort
label269:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s4
	bne	$a0 $zero label270
	la	$a0 str_const0
	li	$t1 375
	jal	_dispatch_abort
label270:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	move	$s3 $a0
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s4
	bne	$a0 $zero label271
	la	$a0 str_const0
	li	$t1 376
	jal	_dispatch_abort
label271:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	move	$s2 $a0
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s2
	la	$a0 bool_const1
	beq	$t1 $t2 label273
	la	$a1 bool_const0
	jal	equality_test
label273:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label272
	la	$a0 bool_const0
label272:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const64
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label274
	la	$a0 str_const0
	li	$t1 377
	jal	_dispatch_abort
label274:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s6
	la	$a0 bool_const1
	beq	$t1 $t2 label275
	la	$a1 bool_const0
	jal	equality_test
label275:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const65
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label276
	la	$a0 str_const0
	li	$t1 378
	jal	_dispatch_abort
label276:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s2
	move	$t1 $s1
	move	$t2 $s5
	la	$a0 bool_const1
	beq	$t1 $t2 label277
	la	$a1 bool_const0
	jal	equality_test
label277:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const66
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label278
	la	$a0 str_const0
	li	$t1 379
	jal	_dispatch_abort
label278:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	move	$s1 $s3
	move	$t1 $s1
	move	$t2 $s5
	la	$a0 bool_const1
	beq	$t1 $t2 label280
	la	$a1 bool_const0
	jal	equality_test
label280:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label279
	la	$a0 bool_const0
label279:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const67
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label281
	la	$a0 str_const0
	li	$t1 380
	jal	_dispatch_abort
label281:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s6
	bne	$a0 $zero label283
	la	$a0 str_const0
	li	$t1 382
	jal	_dispatch_abort
label283:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	move	$s1 $a0
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s6
	bne	$a0 $zero label284
	la	$a0 str_const0
	li	$t1 382
	jal	_dispatch_abort
label284:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	move	$t1 $s1
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label282
	la	$a1 bool_const0
	jal	equality_test
label282:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const68
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label285
	la	$a0 str_const0
	li	$t1 382
	jal	_dispatch_abort
label285:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 20($fp)
	lw	$s2 16($fp)
	lw	$s3 12($fp)
	lw	$s4 8($fp)
	lw	$s5 4($fp)
	lw	$s6 0($fp)
	lw	$fp 36($sp)
	lw	$s0 32($sp)
	lw	$ra 28($sp)
	addiu	$sp $sp 36
	jr	$ra	
Blah.bigCase:
	addiu	$sp $sp -48
	sw	$fp 48($sp)
	sw	$s0 44($sp)
	sw	$ra 40($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 32($fp)
	sw	$s2 28($fp)
	sw	$s3 24($fp)
	sw	$s4 20($fp)
	sw	$s5 16($fp)
	sw	$s6 12($fp)
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	move	$s6 $a0
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	move	$s5 $a0
	la	$a0 C_protObj
	jal	Object.copy
	jal	C_init
	move	$s4 $a0
	la	$a0 P_protObj
	jal	Object.copy
	jal	P_init
	move	$s3 $a0
	la	$a0 C1_protObj
	jal	Object.copy
	jal	C1_init
	move	$s2 $a0
	la	$a0 C2_protObj
	jal	Object.copy
	jal	C2_init
	move	$s1 $a0
	la	$a0 int_const2
	sw	$a0 0($fp)
	sw	$zero 4($fp)
	la	$a0 str_const17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label286
	la	$a0 str_const0
	li	$t1 397
	jal	_dispatch_abort
label286:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s2 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label288
	la	$a0 str_const0
	li	$t1 405
	jal	_case_abort2
label288:
	lw	$t2 0($a0)
	blt	$t2 9 label289
	bgt	$t2 11 label289
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label287
label289:
	blt	$t2 7 label290
	bgt	$t2 7 label290
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label287
label290:
	blt	$t2 6 label291
	bgt	$t2 6 label291
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label287
label291:
	blt	$t2 0 label292
	bgt	$t2 16 label292
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label287
label292:
	jal	_case_abort
label287:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const3
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label293
	la	$a1 bool_const0
	jal	equality_test
label293:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const69
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label294
	la	$a0 str_const0
	li	$t1 406
	jal	_dispatch_abort
label294:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s2 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label296
	la	$a0 str_const0
	li	$t1 414
	jal	_case_abort2
label296:
	lw	$t2 0($a0)
	blt	$t2 9 label297
	bgt	$t2 11 label297
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label295
label297:
	blt	$t2 7 label298
	bgt	$t2 7 label298
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label295
label298:
	blt	$t2 5 label299
	bgt	$t2 7 label299
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label295
label299:
	blt	$t2 0 label300
	bgt	$t2 16 label300
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label295
label300:
	jal	_case_abort
label295:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const3
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label301
	la	$a1 bool_const0
	jal	equality_test
label301:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const70
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label302
	la	$a0 str_const0
	li	$t1 415
	jal	_dispatch_abort
label302:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s1 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label304
	la	$a0 str_const0
	li	$t1 423
	jal	_case_abort2
label304:
	lw	$t2 0($a0)
	blt	$t2 9 label305
	bgt	$t2 11 label305
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label303
label305:
	blt	$t2 7 label306
	bgt	$t2 7 label306
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label303
label306:
	blt	$t2 5 label307
	bgt	$t2 7 label307
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label303
label307:
	blt	$t2 0 label308
	bgt	$t2 16 label308
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label303
label308:
	jal	_case_abort
label303:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const0
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label309
	la	$a1 bool_const0
	jal	equality_test
label309:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const71
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label310
	la	$a0 str_const0
	li	$t1 424
	jal	_dispatch_abort
label310:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s2 4($fp)
	bne	$s5 $zero label312
	la	$a0 str_const0
	li	$t1 432
	jal	_case_abort2
label312:
	lw	$t2 0($s5)
	blt	$t2 9 label313
	bgt	$t2 11 label313
	sw	$s5 8($fp)
	la	$a0 int_const1
	b	label311
label313:
	blt	$t2 7 label314
	bgt	$t2 7 label314
	sw	$s5 8($fp)
	la	$a0 int_const0
	b	label311
label314:
	blt	$t2 6 label315
	bgt	$t2 6 label315
	sw	$s5 8($fp)
	la	$a0 int_const3
	b	label311
label315:
	blt	$t2 0 label316
	bgt	$t2 16 label316
	sw	$s5 8($fp)
	la	$a0 int_const9
	b	label311
label316:
	jal	_case_abort
label311:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const1
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label317
	la	$a1 bool_const0
	jal	equality_test
label317:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const72
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label318
	la	$a0 str_const0
	li	$t1 433
	jal	_dispatch_abort
label318:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s5 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label320
	la	$a0 str_const0
	li	$t1 440
	jal	_case_abort2
label320:
	lw	$t2 0($a0)
	blt	$t2 11 label321
	bgt	$t2 11 label321
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label319
label321:
	blt	$t2 10 label322
	bgt	$t2 11 label322
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label319
label322:
	blt	$t2 9 label323
	bgt	$t2 11 label323
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label319
label323:
	jal	_case_abort
label319:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const3
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label324
	la	$a1 bool_const0
	jal	equality_test
label324:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const73
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label325
	la	$a0 str_const0
	li	$t1 441
	jal	_dispatch_abort
label325:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s4 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label327
	la	$a0 str_const0
	li	$t1 449
	jal	_case_abort2
label327:
	lw	$t2 0($a0)
	blt	$t2 11 label328
	bgt	$t2 11 label328
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label326
label328:
	blt	$t2 10 label329
	bgt	$t2 11 label329
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label326
label329:
	blt	$t2 9 label330
	bgt	$t2 11 label330
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label326
label330:
	blt	$t2 0 label331
	bgt	$t2 16 label331
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label326
label331:
	jal	_case_abort
label326:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const0
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label332
	la	$a1 bool_const0
	jal	equality_test
label332:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const74
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label333
	la	$a0 str_const0
	li	$t1 450
	jal	_dispatch_abort
label333:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s2 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label335
	la	$a0 str_const0
	li	$t1 458
	jal	_case_abort2
label335:
	lw	$t2 0($a0)
	blt	$t2 11 label336
	bgt	$t2 11 label336
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label334
label336:
	blt	$t2 10 label337
	bgt	$t2 11 label337
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label334
label337:
	blt	$t2 9 label338
	bgt	$t2 11 label338
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label334
label338:
	blt	$t2 0 label339
	bgt	$t2 16 label339
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label334
label339:
	jal	_case_abort
label334:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const9
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label340
	la	$a1 bool_const0
	jal	equality_test
label340:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const75
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label341
	la	$a0 str_const0
	li	$t1 459
	jal	_dispatch_abort
label341:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	sw	$s5 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label343
	la	$a0 str_const0
	li	$t1 464
	jal	_case_abort2
label343:
	lw	$t2 0($a0)
	blt	$t2 0 label344
	bgt	$t2 16 label344
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label342
label344:
	jal	_case_abort
label342:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const9
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label345
	la	$a1 bool_const0
	jal	equality_test
label345:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const76
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label346
	la	$a0 str_const0
	li	$t1 465
	jal	_dispatch_abort
label346:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 bool_const1
	sw	$a0 4($fp)
	lw	$a0 4($fp)
	bne	$a0 $zero label348
	la	$a0 str_const0
	li	$t1 472
	jal	_case_abort2
label348:
	lw	$t2 0($a0)
	blt	$t2 11 label349
	bgt	$t2 11 label349
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label347
label349:
	blt	$t2 10 label350
	bgt	$t2 11 label350
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label347
label350:
	blt	$t2 3 label351
	bgt	$t2 3 label351
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label347
label351:
	jal	_case_abort
label347:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const1
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label352
	la	$a1 bool_const0
	jal	equality_test
label352:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const77
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label353
	la	$a0 str_const0
	li	$t1 473
	jal	_dispatch_abort
label353:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const3
	sw	$a0 4($fp)
	la	$a0 int_const0
	bne	$a0 $zero label355
	la	$a0 str_const0
	li	$t1 478
	jal	_case_abort2
label355:
	lw	$t2 0($a0)
	blt	$t2 0 label356
	bgt	$t2 16 label356
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label354
label356:
	jal	_case_abort
label354:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const9
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label357
	la	$a1 bool_const0
	jal	equality_test
label357:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const78
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label358
	la	$a0 str_const0
	li	$t1 479
	jal	_dispatch_abort
label358:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 str_const15
	sw	$a0 4($fp)
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const15
	bne	$a0 $zero label360
	la	$a0 str_const0
	li	$t1 482
	jal	_dispatch_abort
label360:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	bne	$a0 $zero label361
	la	$a0 str_const0
	li	$t1 487
	jal	_case_abort2
label361:
	lw	$t2 0($a0)
	blt	$t2 11 label362
	bgt	$t2 11 label362
	sw	$a0 8($fp)
	la	$a0 int_const0
	b	label359
label362:
	blt	$t2 4 label363
	bgt	$t2 4 label363
	sw	$a0 8($fp)
	la	$a0 int_const3
	b	label359
label363:
	blt	$t2 3 label364
	bgt	$t2 3 label364
	sw	$a0 8($fp)
	la	$a0 int_const1
	b	label359
label364:
	blt	$t2 0 label365
	bgt	$t2 16 label365
	sw	$a0 8($fp)
	la	$a0 int_const9
	b	label359
label365:
	jal	_case_abort
label359:
	sw	$a0 0($fp)
	lw	$a0 0($fp)
	sw	$a0 8($fp)
	la	$t2 int_const3
	lw	$t1 8($fp)
	la	$a0 bool_const1
	beq	$t1 $t2 label366
	la	$a1 bool_const0
	jal	equality_test
label366:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const79
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label367
	la	$a0 str_const0
	li	$t1 488
	jal	_dispatch_abort
label367:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 32($fp)
	lw	$s2 28($fp)
	lw	$s3 24($fp)
	lw	$s4 20($fp)
	lw	$s5 16($fp)
	lw	$s6 12($fp)
	lw	$fp 48($sp)
	lw	$s0 44($sp)
	lw	$ra 40($sp)
	addiu	$sp $sp 48
	jr	$ra	
Blah.bigAttrAccess:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	la	$a0 C2_protObj
	jal	Object.copy
	jal	C2_init
	move	$s2 $a0
	la	$a0 str_const18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 36($s0)
	bne	$a0 $zero label368
	la	$a0 str_const0
	li	$t1 497
	jal	_dispatch_abort
label368:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s2
	bne	$a0 $zero label370
	la	$a0 str_const0
	li	$t1 498
	jal	_dispatch_abort
label370:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$s1 $a0
	la	$t2 int_const0
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label369
	la	$a1 bool_const0
	jal	equality_test
label369:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const80
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label371
	la	$a0 str_const0
	li	$t1 498
	jal	_dispatch_abort
label371:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	la	$a0 int_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s2
	bne	$a0 $zero label372
	la	$a0 str_const0
	li	$t1 499
	jal	_dispatch_abort
label372:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	move	$a0 $s2
	bne	$a0 $zero label374
	la	$a0 str_const0
	li	$t1 500
	jal	_dispatch_abort
label374:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$s1 $a0
	la	$t2 int_const4
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label373
	la	$a1 bool_const0
	jal	equality_test
label373:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const81
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label375
	la	$a0 str_const0
	li	$t1 500
	jal	_dispatch_abort
label375:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
C2.getX:
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
C2.setX:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 12($fp)
	sw	$a0 12($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
