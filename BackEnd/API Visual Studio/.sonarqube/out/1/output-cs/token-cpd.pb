°
rC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\Abstracao\IRepositorioBase.cs
	namespace 	
Repositorio
 
. 
	Abstracao 
{ 
public 

	interface 
IRepositorioBase %
<% &
T& '
>' (
where) .
T/ 0
:1 2
class3 8
{ 
IEnumerable		 
<		 
T		 
>		 

Selecionar		 !
(		! "
)		" #
;		# $
T

 	
SelecionarPorId


 
(

 
int

 
id

  
)

  !
;

! "
int 
Inserir 
( 
T 
entity 
) 
; 
void 
Alterar 
( 
T 
entity 
) 
; 
void 
Deletar 
( 
int 
id 
) 
; 
} 
} Ú
qC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\Configuracao\dbConnection.cs
	namespace 	
Repositorio
 
. 
Configuracao "
{ 
public 

static 
class 
DbConnection $
{		 
private

 
static

 
string

 

DataSource

 (
=

) *
$str

+ 9
;

9 :
private 
static 
string 
Catalog %
=& '
$str( 0
;0 1
private 
static 
string 
User "
=# $
$str% )
;) *
private 
static 
string 
Password &
=' (
$str) 3
;3 4
private 
static 
string 
Conn1 #
=$ %
$str& 5
+6 7

DataSource8 B
+C D
$strE X
+Y Z
Catalog[ b
+c d
$str	e ã
+
å ç
User
é í
+
ì î
$str
ï °
+
¢ £
Password
§ ¨
+
≠ Æ
$str
Ø ƒ
;
ƒ ≈
private 
static 
string 
Conn2 #
=$ %
$str& 5
+6 7

DataSource8 B
+C D
$strE X
+Y Z
Catalog[ b
+c d
$str	e ì
;
ì î
private 
static 
string 
ConnectionString .
=/ 0
Conn11 6
;6 7
public 
static 
string 
GetConn $
($ %
)% &
{' (
return) /
ConnectionString0 @
;@ A
}B C
} 
} ±N
hC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\LoginRepositorio.cs
	namespace 	
Repositorio
 
{		 
public

 

class

 
LoginRepositorio

 !
{ 
public 
IEnumerable 
< 
Login  
>  !

Selecionar" ,
(, -
)- .
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Login- 2
>2 3
(3 4
$"4 6
	SELECT * 6 ?
"? @
+A B
$"4 6
FROM [TB_LOGIN] 6 F
"F G
)G H
;H I
return 
lista 
; 
} 
} 	
public   
Login   
SelecionarPorId   $
(  $ %
int  % (
id  ) +
)  + ,
{!! 	
using"" 
("" 
var"" 

connection"" !
=""" #
new""$ '
SqlConnection""( 5
(""5 6
DbConnection""6 B
.""B C
GetConn""C J
(""J K
)""K L
)""L M
)""M N
{## 
var$$ 
obj$$ 
=$$ 

connection$$ $
.$$$ %
QueryFirstOrDefault$$% 8
<$$8 9
Login$$9 >
>$$> ?
($$? @
$"$$@ B
	SELECT * $$B K
"$$K L
+$$M N
$"%%@ B
FROM [TB_LOGIN] %%B R
"%%R S
+%%T U
$"&&@ B
WHERE ID = &&B M
{&&M N
id&&N P
}&&P Q
"&&Q R
)&&R S
;&&S T
return'' 
obj'' 
;'' 
}(( 
})) 	
public00 
Login00 
SelecionarPorUser00 &
(00& '
string00' -
user00. 2
)002 3
{11 	
using22 
(22 
var22 

connection22 !
=22" #
new22$ '
SqlConnection22( 5
(225 6
DbConnection226 B
.22B C
GetConn22C J
(22J K
)22K L
)22L M
)22M N
{33 
var44 
obj44 
=44 

connection44 $
.44$ %
QueryFirstOrDefault44% 8
<448 9
Login449 >
>44> ?
(44? @
$"44@ B
	SELECT * 44B K
"44K L
+44M N
$"55@ B
FROM [TB_LOGIN] 55B R
"55R S
+55T U
$"66@ B"
WHERE Username LIKE '%66B X
{66X Y
user66Y ]
}66] ^
' 66^ `
"66` a
+66b c
$"77@ B
OR Username Like '77B T
{77T U
user77U Y
}77Y Z
%' 77Z ]
"77] ^
+77_ `
$"88@ B
OR Username Like '%88B U
{88U V
user88V Z
}88Z [
%'88[ ]
"88] ^
)88^ _
;88_ `
return99 
obj99 
;99 
}:: 
};; 	
publicCC 
LoginCC 
EfetuarLoginUserCC %
(CC% &
stringCC& ,
userCC- 1
,CC1 2
stringCC3 9
senhaCC: ?
)CC? @
{DD 	
usingEE 
(EE 
varEE 

connectionEE !
=EE" #
newEE$ '
SqlConnectionEE( 5
(EE5 6
DbConnectionEE6 B
.EEB C
GetConnEEC J
(EEJ K
)EEK L
)EEL M
)EEM N
{FF 
varGG 
objGG 
=GG 

connectionGG $
.GG$ %
QueryFirstOrDefaultGG% 8
<GG8 9
LoginGG9 >
>GG> ?
(GG? @
$"GG@ B'
DECLARE @HASH VARCHAR(32); GGB ]
"GG] ^
+GG_ `
$"HH@ B!
DECLARE @STATUS INT; HHB W
"HHW X
+HHY Z
$"II@ B)
SET @STATUS = (SELECT Status IIB _
"II_ `
+IIa b
$"JJ@ B
FROM [TB_LOGIN] JJB R
"JJR S
+JJT U
$"KK@ B
WHERE Username = 'KKB T
{KKT U
userKKU Y
}KKY Z
') KKZ ]
"KK] ^
+KK_ `
$"LL@ B
SET @HASH = 'LLB O
{LLO P
senhaLLP U
}LLU V
' LLV X
"LLX Y
+LLZ [
$"MM@ BH
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)MMB ~
"MM~ 
+
MMÄ Å
$"NN@ BH
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)NNB ~
"NN~ 
+
NNÄ Å
$"OO@ B
	SELECT * OOB K
"OOK L
+OOM N
$"PP@ B
FROM [TB_LOGIN] PPB R
"PPR S
+PPT U
$"QQ@ B
WHERE Username = 'QQB T
{QQT U
userQQU Y
}QQY Z/
#' AND Senha = @HASH AND @STATUS = 1QQZ }
"QQ} ~
)QQ~ 
;	QQ Ä
returnRR 
objRR 
;RR 
}SS 
}TT 	
publicZZ 
voidZZ 
AlterarSenhaZZ  
(ZZ  !
LoginZZ! &
entityZZ' -
)ZZ- .
{[[ 	
using\\ 
(\\ 
var\\ 

connection\\ !
=\\" #
new\\$ '
SqlConnection\\( 5
(\\5 6
DbConnection\\6 B
.\\B C
GetConn\\C J
(\\J K
)\\K L
)\\L M
)\\M N
{]] 

connection^^ 
.^^ 
Execute^^ "
(^^" #
$"^^# %'
DECLARE @HASH VARCHAR(32); ^^% @
"^^@ A
+^^B C
$"__# %
SET @HASH = '__% 2
{__2 3
entity__3 9
.__9 :
Senha__: ?
}__? @
' __@ B
"__B C
+__D E
$"``# %H
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)``% a
"``a b
+``c d
$"aa# %H
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)aa% a
"aaa b
+aac d
$"bb# %
UPDATE [TB_LOGIN] bb% 7
"bb7 8
+bb9 :
$"cc# %
SET Senha = @HASH cc% 7
"cc7 8
+cc9 :
$"dd# %
WHERE ID = dd% 0
{dd0 1
entitydd1 7
.dd7 8
IDdd8 :
}dd: ;
"dd; <
)dd< =
;dd= >
}ee 
}ff 	
publicll 
voidll 
AlterarUserll 
(ll  
Loginll  %
entityll& ,
)ll, -
{mm 	
usingnn 
(nn 
varnn 

connectionnn !
=nn" #
newnn$ '
SqlConnectionnn( 5
(nn5 6
DbConnectionnn6 B
.nnB C
GetConnnnC J
(nnJ K
)nnK L
)nnL M
)nnM N
{oo 

connectionpp 
.pp 
Executepp "
(pp" #
$"pp# %
UPDATE [TB_LOGIN] pp% 7
"pp7 8
+pp9 :
$"qq# %
SET Username = 'qq% 5
{qq5 6
entityqq6 <
.qq< =
Usernameqq= E
}qqE F
' qqF H
"qqH I
+qqJ K
$"rr# %
WHERE ID = rr% 0
{rr0 1
entityrr1 7
.rr7 8
IDrr8 :
}rr: ;
"rr; <
)rr< =
;rr= >
}ss 
}tt 	
publiczz 
voidzz 
AlterarAtivoInativozz '
(zz' (
Loginzz( -
entityzz. 4
)zz4 5
{{{ 	
using|| 
(|| 
var|| 

connection|| !
=||" #
new||$ '
SqlConnection||( 5
(||5 6
DbConnection||6 B
.||B C
GetConn||C J
(||J K
)||K L
)||L M
)||M N
{}} 

connection~~ 
.~~ 
Execute~~ "
(~~" #
$"~~# %
UPDATE [TB_LOGIN] ~~% 7
"~~7 8
+~~9 :
$"# %
SET Status = '% 3
{3 4
entity4 :
.: ;
Status; A
}A B
' B D
"D E
+F G
$"
ÄÄ# %
WHERE ID = 
ÄÄ% 0
{
ÄÄ0 1
entity
ÄÄ1 7
.
ÄÄ7 8
ID
ÄÄ8 :
}
ÄÄ: ;
"
ÄÄ; <
+
ÄÄ= >
$"
ÅÅ# %
UPDATE [TB_USER] 
ÅÅ% 6
"
ÅÅ6 7
+
ÅÅ8 9
$"
ÇÇ# %
SET Status = '
ÇÇ% 3
{
ÇÇ3 4
entity
ÇÇ4 :
.
ÇÇ: ;
Status
ÇÇ; A
}
ÇÇA B
' 
ÇÇB D
"
ÇÇD E
+
ÇÇF G
$"
ÉÉ# %
WHERE ID = 
ÉÉ% 0
{
ÉÉ0 1
entity
ÉÉ1 7
.
ÉÉ7 8
ID
ÉÉ8 :
}
ÉÉ: ;
"
ÉÉ; <
)
ÉÉ< =
;
ÉÉ= >
}
ÑÑ 
}
ÖÖ 	
public
åå 
void
åå	 
Deletar
åå 
(
åå 
int
åå 
id
åå 
)
åå 
{
çç 	
using
éé 
(
éé 
var
éé 

connection
éé !
=
éé" #
new
éé$ '
SqlConnection
éé( 5
(
éé5 6
DbConnection
éé6 B
.
ééB C
GetConn
ééC J
(
ééJ K
)
ééK L
)
ééL M
)
ééM N
{
èè 

connection
êê 
.
êê 
Execute
êê "
(
êê" #
$"
êê# %
DELETE 
êê% ,
"
êê, -
+
êê. /
$"
ëë# %
FROM [TB_LOGIN] 
ëë% 5
"
ëë5 6
+
ëë7 8
$"
íí# %
WHERE ID = 
íí% 0
{
íí0 1
id
íí1 3
}
íí3 4
"
íí4 5
)
íí5 6
;
íí6 7
}
ìì 
}
îî 	
}
ïï 
}ññ œ
gC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\MapaRepositorio.cs
	namespace		 	
Repositorio		
 
{

 
public 

class 
MapaRepositorio  
{ 
public 
Mapa 
SelecionarPorId #
(# $
int$ '
id( *
)* +
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
obj 
= 

connection $
.$ %
QueryFirstOrDefault% 8
<8 9
Mapa9 =
>= >
(> ?
$"? A
	SELECT * A J
"J K
+L M
$"? A
FROM [TB_PAPEL] A Q
"Q R
+S T
$"? A
WHERE ID = A L
{L M
idM O
}O P
"P Q
)Q R
;R S
return 
obj 
; 
} 
} 	
public"" 
Mapa"" "
SelecionarPorDescricao"" *
(""* +
string""+ 1
desc""2 6
)""6 7
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
Mapa&&9 =
>&&= >
(&&> ?
$"&&? A
	SELECT * &&A J
"&&J K
+&&L M
$"''? A
FROM [TB_PAPEL] ''A Q
"''Q R
+''S T
$"((? A
WHERE Nome = '((A O
{((O P
desc((P T
}((T U
'((U V
"((V W
)((W X
;((X Y
return)) 
obj)) 
;)) 
}** 
}++ 	
},, 
}-- Î3
nC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\MembroSquadRepositorio.cs
	namespace 	
Repositorio
 
{		 
public

 

class

 "
MembroSquadRepositorio

 '
:

( )
IRepositorioBase

* :
<

: ;
MembroSquad

; F
>

F G
{ 
public 
IEnumerable 
< 
MembroSquad &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
MembroSquad- 8
>8 9
(9 :
$": <
	SELECT * < E
"E F
+G H
$": <"
FROM [TB_MEMBRO_SQUAD]< R
"R S
)S T
;T U
return 
lista 
; 
} 
} 	
public 
MembroSquad 
SelecionarPorId *
(* +
int+ .
id/ 1
)1 2
{   	
using!! 
(!! 
var!! 

connection!! !
=!!" #
new!!$ '
SqlConnection!!( 5
(!!5 6
DbConnection!!6 B
.!!B C
GetConn!!C J
(!!J K
)!!K L
)!!L M
)!!M N
{"" 
var## 
obj## 
=## 

connection## $
.##$ %
QueryFirstOrDefault##% 8
<##8 9
MembroSquad##9 D
>##D E
(##E F
$"##F H
	SELECT * ##H Q
"##Q R
+##S T
$"$$F H#
FROM [TB_MEMBRO_SQUAD] $$H _
"$$_ `
+$$a b
$"%%F H
WHERE ID = %%H S
{%%S T
id%%T V
}%%V W
"%%W X
)%%X Y
;%%Y Z
return&& 
obj&& 
;&& 
}'' 
}(( 	
public// 
MembroSquad// 
SelecionarPorIdUser// .
(//. /
int/// 2
idUser//3 9
)//9 :
{00 	
using11 
(11 
var11 

connection11 !
=11" #
new11$ '
SqlConnection11( 5
(115 6
DbConnection116 B
.11B C
GetConn11C J
(11J K
)11K L
)11L M
)11M N
{22 
var33 
obj33 
=33 

connection33 $
.33$ %
QueryFirstOrDefault33% 8
<338 9
MembroSquad339 D
>33D E
(33E F
$"33F H
	SELECT * 33H Q
"33Q R
+33S T
$"44F H#
FROM [TB_MEMBRO_SQUAD] 44H _
"44_ `
+44a b
$"55F H
WHERE IdUser = 55H W
{55W X
idUser55X ^
}55^ _
"55_ `
)55` a
;55a b
return66 
obj66 
;66 
}77 
}88 	
public?? 
int?? 
Inserir?? 
(?? 
MembroSquad?? &
entity??' -
)??- .
{@@ 	
usingAA 
(AA 
varAA 

connectionAA !
=AA" #
newAA$ '
SqlConnectionAA( 5
(AA5 6
DbConnectionAA6 B
.AAB C
GetConnAAC J
(AAJ K
)AAK L
)AAL M
)AAM N
{BB 
varCC 
objCC 
=CC 

connectionCC $
.CC$ %
QuerySingleCC% 0
<CC0 1
intCC1 4
>CC4 5
(CC5 6
$"CC6 8
DECLARE @ID INT; CC8 I
"CCI J
+CCK L
$"DD6 8*
INSERT INTO [TB_MEMBRO_SQUAD] DD8 V
"DDV W
+DDX Y
$"EE6 8
(IdUser, IdSquad) EE8 J
"EEJ K
+EEL M
$"FF6 8
VALUES (FF8 @
{FF@ A
entityFFA G
.FFG H
IdUserFFH N
}FFN O
, FFO Q
"FFQ R
+FFS T
$"GG6 8
{GG8 9
entityGG9 ?
.GG? @
IdSquadGG@ G
}GGG H
)GGH I
"GGI J
+GGK L
$"HH6 8'
SET @ID = SCOPE_IDENTITY();HH8 S
"HHS T
+HHU V
$"II6 8

SELECT @IDII8 B
"IIB C
)IIC D
;IID E
returnJJ 
objJJ 
;JJ 
}KK 
}LL 	
publicRR 
voidRR 
AlterarRR 
(RR 
MembroSquadRR '
entityRR( .
)RR. /
{SS 	
usingTT 
(TT 
varTT 

connectionTT !
=TT" #
newTT$ '
SqlConnectionTT( 5
(TT5 6
DbConnectionTT6 B
.TTB C
GetConnTTC J
(TTJ K
)TTK L
)TTL M
)TTM N
{UU 

connectionVV 
.VV 
ExecuteVV "
(VV" #
$"VV# %%
UPDATE [TB_MEMBRO_SQUAD] VV% >
"VV> ?
+VV@ A
$"WW# %
SET IdUser = WW% 2
{WW2 3
entityWW3 9
.WW9 :
IdUserWW: @
}WW@ A
, WWA C
"WWC D
+WWE F
$"XX# %

IdSquad = XX% /
{XX/ 0
entityXX0 6
.XX6 7
IdSquadXX7 >
}XX> ?
"XX@ A
+XXB C
$"YY# %
WHERE ID = YY% 0
{YY0 1
entityYY1 7
.YY7 8
IdYY8 :
}YY: ;
"YY; <
)YY< =
;YY= >
}ZZ 
}[[ 	
publicaa 
voidaa 
Deletaraa 
(aa 
intaa 
idaa  "
)aa" #
{bb 	
usingcc 
(cc 
varcc 

connectioncc !
=cc" #
newcc$ '
SqlConnectioncc( 5
(cc5 6
DbConnectioncc6 B
.ccB C
GetConnccC J
(ccJ K
)ccK L
)ccL M
)ccM N
{dd 

connectionee 
.ee 
Executeee "
(ee" #
$"ee# %
DELETE ee% ,
"ee, -
+ee. /
$"ff# %#
FROM [TB_MEMBRO_SQUAD] ff% <
"ff< =
+ff> ?
$"gg# %
WHERE ID = gg% 0
{gg0 1
idgg1 3
}gg3 4
"gg4 5
)gg5 6
;gg6 7
}hh 
}ii 	
}jj 
}kk Î3
nC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\MembroTriboRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class "
MembroTriboRepositorio '
:( )
IRepositorioBase* :
<: ;
MembroTribo; F
>F G
{ 
public 
IEnumerable 
< 
MembroTribo &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
MembroTribo- 8
>8 9
(9 :
$": <
	SELECT * < E
"E F
+G H
$": <"
FROM [TB_MEMBRO_TRIBO]< R
"R S
)S T
;T U
return 
lista 
; 
} 
} 	
public!! 
MembroTribo!! 
SelecionarPorId!! *
(!!* +
int!!+ .
id!!/ 1
)!!1 2
{"" 	
using## 
(## 
var## 

connection## !
=##" #
new##$ '
SqlConnection##( 5
(##5 6
DbConnection##6 B
.##B C
GetConn##C J
(##J K
)##K L
)##L M
)##M N
{$$ 
var%% 
obj%% 
=%% 

connection%% $
.%%$ %
QueryFirstOrDefault%%% 8
<%%8 9
MembroTribo%%9 D
>%%D E
(%%E F
$"%%F H
	SELECT * %%H Q
"%%Q R
+%%S T
$"&&F H#
FROM [TB_MEMBRO_TRIBO] &&H _
"&&_ `
+&&a b
$"''F H
WHERE ID = ''H S
{''S T
id''T V
}''V W
"''W X
)''X Y
;''Y Z
return(( 
obj(( 
;(( 
})) 
}** 	
public11 
MembroTribo11 
SelecionarPorIdUser11 .
(11. /
int11/ 2
idUser113 9
)119 :
{22 	
using33 
(33 
var33 

connection33 !
=33" #
new33$ '
SqlConnection33( 5
(335 6
DbConnection336 B
.33B C
GetConn33C J
(33J K
)33K L
)33L M
)33M N
{44 
var55 
obj55 
=55 

connection55 $
.55$ %
QueryFirstOrDefault55% 8
<558 9
MembroTribo559 D
>55D E
(55E F
$"55F H
	SELECT * 55H Q
"55Q R
+55S T
$"66F H#
FROM [TB_MEMBRO_TRIBO] 66H _
"66_ `
+66a b
$"77F H
WHERE IdUser = 77H W
{77W X
idUser77X ^
}77^ _
"77_ `
)77` a
;77a b
return88 
obj88 
;88 
}99 
}:: 	
publicAA 
intAA 
InserirAA 
(AA 
MembroTriboAA &
entityAA' -
)AA- .
{BB 	
usingCC 
(CC 
varCC 

connectionCC !
=CC" #
newCC$ '
SqlConnectionCC( 5
(CC5 6
DbConnectionCC6 B
.CCB C
GetConnCCC J
(CCJ K
)CCK L
)CCL M
)CCM N
{DD 
varEE 
objEE 
=EE 

connectionEE $
.EE$ %
QuerySingleEE% 0
<EE0 1
intEE1 4
>EE4 5
(EE5 6
$"EE6 8
DECLARE @ID INT; EE8 I
"EEI J
+EEK L
$"FF6 8*
INSERT INTO [TB_MEMBRO_TRIBO] FF8 V
"FFV W
+FFX Y
$"GG6 8
(IdUser, IdSquad) GG8 J
"GGJ K
+GGL M
$"HH6 8
VALUES (HH8 @
{HH@ A
entityHHA G
.HHG H
IdUserHHH N
}HHN O
, HHO Q
"HHQ R
+HHS T
$"II6 8
{II8 9
entityII9 ?
.II? @
IdTriboII@ G
}IIG H
)IIH I
"III J
+IIK L
$"JJ6 8'
SET @ID = SCOPE_IDENTITY();JJ8 S
"JJS T
+JJU V
$"KK6 8

SELECT @IDKK8 B
"KKB C
)KKC D
;KKD E
returnLL 
objLL 
;LL 
}MM 
}NN 	
publicTT 
voidTT 
AlterarTT 
(TT 
MembroTriboTT '
entityTT( .
)TT. /
{UU 	
usingVV 
(VV 
varVV 

connectionVV !
=VV" #
newVV$ '
SqlConnectionVV( 5
(VV5 6
DbConnectionVV6 B
.VVB C
GetConnVVC J
(VVJ K
)VVK L
)VVL M
)VVM N
{WW 

connectionXX 
.XX 
ExecuteXX "
(XX" #
$"XX# %%
UPDATE [TB_MEMBRO_TRIBO] XX% >
"XX> ?
+XX@ A
$"YY# %
SET IdUser = YY% 2
{YY2 3
entityYY3 9
.YY9 :
IdUserYY: @
}YY@ A
, YYA C
"YYC D
+YYE F
$"ZZ# %

IdSquad = ZZ% /
{ZZ/ 0
entityZZ0 6
.ZZ6 7
IdTriboZZ7 >
}ZZ> ?
"ZZ@ A
+ZZB C
$"[[# %
WHERE ID = [[% 0
{[[0 1
entity[[1 7
.[[7 8
Id[[8 :
}[[: ;
"[[; <
)[[< =
;[[= >
}\\ 
}]] 	
publiccc 
voidcc 
Deletarcc 
(cc 
intcc 
idcc  "
)cc" #
{dd 	
usingee 
(ee 
varee 

connectionee !
=ee" #
newee$ '
SqlConnectionee( 5
(ee5 6
DbConnectionee6 B
.eeB C
GetConneeC J
(eeJ K
)eeK L
)eeL M
)eeM N
{ff 

connectiongg 
.gg 
Executegg "
(gg" #
$"gg# %
DELETE gg% ,
"gg, -
+gg. /
$"hh# %#
FROM [TB_MEMBRO_TRIBO] hh% <
"hh< =
+hh> ?
$"ii# %
WHERE ID = ii% 0
{ii0 1
idii1 3
}ii3 4
"ii4 5
)ii5 6
;ii6 7
}jj 
}kk 	
}ll 
}mm  +
nC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\MentorSquadRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class "
MentorSquadRepositorio '
:( )
IRepositorioBase* :
<: ;
MentorSquad; F
>F G
{ 
public 
IEnumerable 
< 
MentorSquad &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
MentorSquad- 8
>8 9
(9 :
$": <
	SELECT * < E
"E F
+G H
$": <"
FROM [TB_MENTOR_SQUAD]< R
"R S
)S T
;T U
return 
lista 
; 
} 
} 	
public"" 
MentorSquad"" 
SelecionarPorId"" *
(""* +
int""+ .
id""/ 1
)""1 2
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
MentorSquad&&9 D
>&&D E
(&&E F
$"&&F H
	SELECT * &&H Q
"&&Q R
+&&S T
$"''F H#
FROM [TB_MENTOR_SQUAD] ''H _
"''_ `
+''a b
$"((F H
WHERE ID = ((H S
{((S T
id((T V
}((V W
"((W X
)((X Y
;((Y Z
return)) 
obj)) 
;)) 
}** 
}++ 	
public22 
int22 
Inserir22 
(22 
MentorSquad22 &
entity22' -
)22- .
{33 	
using44 
(44 
var44 

connection44 !
=44" #
new44$ '
SqlConnection44( 5
(445 6
DbConnection446 B
.44B C
GetConn44C J
(44J K
)44K L
)44L M
)44M N
{55 
var66 
obj66 
=66 

connection66 $
.66$ %
QuerySingle66% 0
<660 1
int661 4
>664 5
(665 6
$"666 8
DECLARE @ID INT; 668 I
"66I J
+66K L
$"776 8*
INSERT INTO [TB_MENTOR_SQUAD] 778 V
"77V W
+77X Y
$"886 8
(IdSquad, IdUser) 888 J
"88J K
+88L M
$"996 8
VALUES (998 @
{99@ A
entity99A G
.99G H
IdSquad99H O
}99O P
, 99P R
{99R S
entity99S Y
.99Y Z
IdUser99Z `
}99` a
)99a b
"99b c
+99d e
$"::6 8'
SET @ID = SCOPE_IDENTITY();::8 S
"::S T
+::U V
$";;6 8

SELECT @ID;;8 B
";;B C
);;C D
;;;D E
return<< 
obj<< 
;<< 
}== 
}>> 	
publicDD 
voidDD 
AlterarDD 
(DD 
MentorSquadDD '
entityDD( .
)DD. /
{EE 	
usingFF 
(FF 
varFF 

connectionFF !
=FF" #
newFF$ '
SqlConnectionFF( 5
(FF5 6
DbConnectionFF6 B
.FFB C
GetConnFFC J
(FFJ K
)FFK L
)FFL M
)FFM N
{GG 

connectionHH 
.HH 
ExecuteHH "
(HH" #
$"HH# %%
UPDATE [TB_MENTOR_SQUAD] HH% >
"HH> ?
+HH@ A
$"II# %
SET IdSquad = II% 3
{II3 4
entityII4 :
.II: ;
IdSquadII; B
}IIB C
, IIC E
"IIE F
+IIG H
$"JJ# %
	IdUser = JJ% .
{JJ. /
entityJJ/ 5
.JJ5 6
IdUserJJ6 <
}JJ< =
"JJ> ?
+JJ@ A
$"KK# %
WHERE ID = KK% 0
{KK0 1
entityKK1 7
.KK7 8
IDKK8 :
}KK: ;
"KK; <
)KK< =
;KK= >
}LL 
}MM 	
publicTT 
voidTT	 
DeletarTT 
(TT 
intTT 
idTT 
)TT 
{UU 	
usingVV 
(VV 
varVV 

connectionVV !
=VV" #
newVV$ '
SqlConnectionVV( 5
(VV5 6
DbConnectionVV6 B
.VVB C
GetConnVVC J
(VVJ K
)VVK L
)VVL M
)VVM N
{WW 

connectionXX 
.XX 
ExecuteXX "
(XX" #
$"XX# %
DELETE XX% ,
"XX, -
+XX. /
$"YY# %#
FROM [TB_MENTOR_SQUAD] YY% <
"YY< =
+YY> ?
$"ZZ# %
WHERE ID = ZZ% 0
{ZZ0 1
idZZ1 3
}ZZ3 4
"ZZ4 5
)ZZ5 6
;ZZ6 7
}[[ 
}\\ 	
}]] 
}^^  +
nC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\MentorTriboRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class "
MentorTriboRepositorio '
:( )
IRepositorioBase* :
<: ;
MentorTribo; F
>F G
{ 
public 
IEnumerable 
< 
MentorTribo &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
MentorTribo- 8
>8 9
(9 :
$": <
	SELECT * < E
"E F
+G H
$": <"
FROM [TB_MENTOR_TRIBO]< R
"R S
)S T
;T U
return 
lista 
; 
} 
} 	
public"" 
MentorTribo"" 
SelecionarPorId"" *
(""* +
int""+ .
id""/ 1
)""1 2
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
MentorTribo&&9 D
>&&D E
(&&E F
$"&&F H
	SELECT * &&H Q
"&&Q R
+&&S T
$"''F H#
FROM [TB_MENTOR_TRIBO] ''H _
"''_ `
+''a b
$"((F H
WHERE ID = ((H S
{((S T
id((T V
}((V W
"((W X
)((X Y
;((Y Z
return)) 
obj)) 
;)) 
}** 
}++ 	
public22 
int22 
Inserir22 
(22 
MentorTribo22 &
entity22' -
)22- .
{33 	
using44 
(44 
var44 

connection44 !
=44" #
new44$ '
SqlConnection44( 5
(445 6
DbConnection446 B
.44B C
GetConn44C J
(44J K
)44K L
)44L M
)44M N
{55 
var66 
obj66 
=66 

connection66 $
.66$ %
QuerySingle66% 0
<660 1
int661 4
>664 5
(665 6
$"666 8
DECLARE @ID INT; 668 I
"66I J
+66K L
$"776 8*
INSERT INTO [TB_MENTOR_TRIBO] 778 V
"77V W
+77X Y
$"886 8
(IdTribo, IdUser) 888 J
"88J K
+88L M
$"996 8
VALUES (998 @
{99@ A
entity99A G
.99G H
IdTribo99H O
}99O P
, 99P R
{99R S
entity99S Y
.99Y Z
IdUser99Z `
}99` a
)99a b
"99b c
+99d e
$"::6 8'
SET @ID = SCOPE_IDENTITY();::8 S
"::S T
+::U V
$";;6 8

SELECT @ID;;8 B
";;B C
);;C D
;;;D E
return<< 
obj<< 
;<< 
}== 
}>> 	
publicDD 
voidDD 
AlterarDD 
(DD 
MentorTriboDD '
entityDD( .
)DD. /
{EE 	
usingFF 
(FF 
varFF 

connectionFF !
=FF" #
newFF$ '
SqlConnectionFF( 5
(FF5 6
DbConnectionFF6 B
.FFB C
GetConnFFC J
(FFJ K
)FFK L
)FFL M
)FFM N
{GG 

connectionHH 
.HH 
ExecuteHH "
(HH" #
$"HH# %%
UPDATE [TB_MENTOR_TRIBO] HH% >
"HH> ?
+HH@ A
$"II# %
SET IdTribo = II% 3
{II3 4
entityII4 :
.II: ;
IdTriboII; B
}IIB C
, IIC E
"IIE F
+IIG H
$"JJ# %
	IdUser = JJ% .
{JJ. /
entityJJ/ 5
.JJ5 6
IdUserJJ6 <
}JJ< =
"JJ> ?
+JJ@ A
$"KK# %
WHERE ID = KK% 0
{KK0 1
entityKK1 7
.KK7 8
IDKK8 :
}KK: ;
"KK; <
)KK< =
;KK= >
}LL 
}MM 	
publicTT 
voidTT	 
DeletarTT 
(TT 
intTT 
idTT 
)TT 
{UU 	
usingVV 
(VV 
varVV 

connectionVV !
=VV" #
newVV$ '
SqlConnectionVV( 5
(VV5 6
DbConnectionVV6 B
.VVB C
GetConnVVC J
(VVJ K
)VVK L
)VVL M
)VVM N
{WW 

connectionXX 
.XX 
ExecuteXX "
(XX" #
$"XX# %
DELETE XX% ,
"XX, -
+XX. /
$"YY# %#
FROM [TB_MENTOR_TRIBO] YY% <
"YY< =
+YY> ?
$"ZZ# %
WHERE ID = ZZ% 0
{ZZ0 1
idZZ1 3
}ZZ3 4
"ZZ4 5
)ZZ5 6
;ZZ6 7
}[[ 
}\\ 	
}]] 
}^^ é3
gC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\PaisRepositorio.cs
	namespace 	
Repositorio
 
{		 
public

 

class

 
PaisRepositorio

  
:

  !
IRepositorioBase

" 2
<

2 3
Pais

3 7
>

7 8
{ 
public 
IEnumerable 
< 
Pais 
>  

Selecionar! +
(+ ,
), -
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Pais- 1
>1 2
(2 3
$"3 5
	SELECT * 5 >
"> ?
+@ A
$"3 5
FROM [TB_PAIS]5 C
"C D
)D E
;E F
return 
lista 
; 
} 
} 	
public 
Pais 
SelecionarPorId #
(# $
int$ '
id( *
)* +
{   	
using!! 
(!! 
var!! 

connection!! !
=!!" #
new!!$ '
SqlConnection!!( 5
(!!5 6
DbConnection!!6 B
.!!B C
GetConn!!C J
(!!J K
)!!K L
)!!L M
)!!M N
{"" 
var## 
obj## 
=## 

connection## $
.##$ %
QueryFirstOrDefault##% 8
<##8 9
Pais##9 =
>##= >
(##> ?
$"##? A
	SELECT * ##A J
"##J K
+##L M
$"$$? A
FROM [TB_PAIS] $$A P
"$$P Q
+$$R S
$"%%? A
WHERE ID = %%A L
{%%L M
id%%M O
}%%O P
"%%P Q
)%%Q R
;%%R S
return&& 
obj&& 
;&& 
}'' 
}(( 	
public// 
Pais// 
SelecionarPorNome// %
(//% &
string//& ,
nome//- 1
)//1 2
{00 	
using11 
(11 
var11 

connection11 !
=11" #
new11$ '
SqlConnection11( 5
(115 6
DbConnection116 B
.11B C
GetConn11C J
(11J K
)11K L
)11L M
)11M N
{22 
var33 
obj33 
=33 

connection33 $
.33$ %
QueryFirstOrDefault33% 8
<338 9
Pais339 =
>33= >
(33> ?
$"33? A
	SELECT * 33A J
"33J K
+33L M
$"44? A
FROM [TB_PAIS] 44A P
"44P Q
+44R S
$"55? A
WHERE Nome = '55A O
{55O P
nome55P T
}55T U
'55U V
"55V W
)55W X
;55X Y
return66 
obj66 
;66 
}77 
}88 	
public?? 
int?? 
Inserir?? 
(?? 
Pais?? 
entity??  &
)??& '
{@@ 	
usingAA 
(AA 
varAA 

connectionAA !
=AA" #
newAA$ '
SqlConnectionAA( 5
(AA5 6
DbConnectionAA6 B
.AAB C
GetConnAAC J
(AAJ K
)AAK L
)AAL M
)AAM N
{BB 
varCC 
objCC 
=CC 

connectionCC $
.CC$ %
QuerySingleCC% 0
<CC0 1
intCC1 4
>CC4 5
(CC5 6
$"CC6 8
DECLARE @ID INT; CC8 I
"CCI J
+CCK L
$"DD6 8"
INSERT INTO [TB_PAIS] DD8 N
"DDN O
+DDP Q
$"EE6 8
(Nome, Sigla) EE8 F
"EEF G
+EEH I
$"FF6 8
	VALUES ('FF8 A
{FFA B
entityFFB H
.FFH I
NomeFFI M
}FFM N
', FFN Q
"FFQ R
+FFS T
$"GG6 8
'GG8 9
{GG9 :
entityGG: @
.GG@ A
SiglaGGA F
}GGF G
')GGG I
"GGI J
+GGK L
$"HH6 8'
SET @ID = SCOPE_IDENTITY();HH8 S
"HHS T
+HHU V
$"II6 8

SELECT @IDII8 B
"IIB C
)IIC D
;IID E
returnJJ 
objJJ 
;JJ 
}KK 
}LL 	
publicRR 
voidRR 
AlterarRR 
(RR 
PaisRR  
entityRR! '
)RR' (
{SS 	
usingTT 
(TT 
varTT 

connectionTT !
=TT" #
newTT$ '
SqlConnectionTT( 5
(TT5 6
DbConnectionTT6 B
.TTB C
GetConnTTC J
(TTJ K
)TTK L
)TTL M
)TTM N
{UU 

connectionVV 
.VV 
ExecuteVV "
(VV" #
$"VV# %
UPDATE [TB_PAIS] VV% 6
"VV6 7
+VV8 9
$"WW# %
SET Nome = 'WW% 1
{WW1 2
entityWW2 8
.WW8 9
NomeWW9 =
}WW= >
', WW> A
"WWA B
+WWC D
$"XX# %
	Sigla = 'XX% .
{XX. /
entityXX/ 5
.XX5 6
SiglaXX6 ;
}XX; <
' XX< >
"XX> ?
+XX@ A
$"YY# %
WHERE ID = YY% 0
{YY0 1
entityYY1 7
.YY7 8
IdYY8 :
}YY: ;
"YY; <
)YY< =
;YY= >
}ZZ 
}[[ 	
publicaa 
voidaa 
Deletaraa 
(aa 
intaa 
idaa  "
)aa" #
{bb 	
usingcc 
(cc 
varcc 

connectioncc !
=cc" #
newcc$ '
SqlConnectioncc( 5
(cc5 6
DbConnectioncc6 B
.ccB C
GetConnccC J
(ccJ K
)ccK L
)ccL M
)ccM N
{dd 

connectionee 
.ee 
Executeee "
(ee" #
$"ee# %
DELETE ee% ,
"ee, -
+ee. /
$"ff# %
FROM [TB_PAIS] ff% 4
"ff4 5
+ff6 7
$"gg# %
WHERE ID = gg% 0
{gg0 1
idgg1 3
}gg3 4
"gg4 5
)gg5 6
;gg6 7
}hh 
}ii 	
}kk 
}ll Æ5
hC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\PapelRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class 
PapelRepositorio !
:" #
IRepositorioBase$ 4
<4 5
Papel5 :
>: ;
{ 
public 
IEnumerable 
< 
Papel  
>  !

Selecionar" ,
(, -
)- .
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Papel- 2
>2 3
(3 4
$"4 6
	SELECT * 6 ?
"? @
+A B
$"4 6
FROM [TB_PAPEL]6 E
"E F
)F G
;G H
return 
lista 
; 
} 
} 	
public"" 
Papel"" 
SelecionarPorId"" $
(""$ %
int""% (
id"") +
)""+ ,
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
Papel&&9 >
>&&> ?
(&&? @
$"&&@ B
	SELECT * &&B K
"&&K L
+&&M N
$"''@ B
FROM [TB_PAPEL] ''B R
"''R S
+''T U
$"((@ B
WHERE ID = ((B M
{((M N
id((N P
}((P Q
"((Q R
)((R S
;((S T
return)) 
obj)) 
;)) 
}** 
}++ 	
public22 
Papel22 "
SelecionarPorDescricao22 +
(22+ ,
string22, 2
desc223 7
)227 8
{33 	
using44 
(44 
var44 

connection44 !
=44" #
new44$ '
SqlConnection44( 5
(445 6
DbConnection446 B
.44B C
GetConn44C J
(44J K
)44K L
)44L M
)44M N
{55 
var66 
obj66 
=66 

connection66 $
.66$ %
QueryFirstOrDefault66% 8
<668 9
Papel669 >
>66> ?
(66? @
$"66@ B
	SELECT * 66B K
"66K L
+66M N
$"77@ B
FROM [TB_PAPEL] 77B R
"77R S
+77T U
$"88@ B
WHERE [Desc] = '88B R
{88R S
desc88S W
}88W X
'88X Y
"88Y Z
)88Z [
;88[ \
return99 
obj99 
;99 
}:: 
};; 	
publicBB 
intBB 
InserirBB 
(BB 
PapelBB  
entityBB! '
)BB' (
{CC 	
usingDD 
(DD 
varDD 

connectionDD !
=DD" #
newDD$ '
SqlConnectionDD( 5
(DD5 6
DbConnectionDD6 B
.DDB C
GetConnDDC J
(DDJ K
)DDK L
)DDL M
)DDM N
{EE 
varFF 
objFF 
=FF 

connectionFF $
.FF$ %
QuerySingleFF% 0
<FF0 1
intFF1 4
>FF4 5
(FF5 6
$"FF6 8
DECLARE @ID INT; FF8 I
"FFI J
+FFK L
$"GG6 8#
INSERT INTO [TB_PAPEL] GG8 O
"GGO P
+GGQ R
$"HH6 8#
([Desc], Sigla, Nivel) HH8 O
"HHO P
+HHQ R
$"II6 8
	VALUES ('II8 A
{IIA B
entityIIB H
.IIH I
DescIII M
}IIM N
', IIN Q
"IIQ R
+IIS T
$"JJ6 8
'JJ8 9
{JJ9 :
entityJJ: @
.JJ@ A
SiglaJJA F
}JJF G
', JJG J
{JJJ K
entityJJK Q
.JJQ R
NivelJJR W
}JJW X
)JJX Y
"JJY Z
+JJ[ \
$"KK6 8'
SET @ID = SCOPE_IDENTITY();KK8 S
"KKS T
+KKU V
$"LL6 8

SELECT @IDLL8 B
"LLB C
)LLC D
;LLD E
returnMM 
objMM 
;MM 
}NN 
}OO 	
publicUU 
voidUU 
AlterarUU 
(UU 
PapelUU !
entityUU" (
)UU( )
{VV 	
usingWW 
(WW 
varWW 

connectionWW !
=WW" #
newWW$ '
SqlConnectionWW( 5
(WW5 6
DbConnectionWW6 B
.WWB C
GetConnWWC J
(WWJ K
)WWK L
)WWL M
)WWM N
{XX 

connectionYY 
.YY 
ExecuteYY "
(YY" #
$"YY# %
UPDATE [TB_PAPEL] YY% 7
"YY7 8
+YY9 :
$"ZZ# %
SET [Desc] = 'ZZ% 3
{ZZ3 4
entityZZ4 :
.ZZ: ;
DescZZ; ?
}ZZ? @
', ZZ@ C
"ZZC D
+ZZE F
$"[[# %
	Sigla = '[[% .
{[[. /
entity[[/ 5
.[[5 6
Sigla[[6 ;
}[[; <
', [[< ?
"[[? @
+[[A B
$"\\# %
Nivel = \\% -
{\\- .
entity\\. 4
.\\4 5
Nivel\\5 :
}\\: ;
"\\< =
+\\> ?
$"]]# %
WHERE ID = ]]% 0
{]]0 1
entity]]1 7
.]]7 8
ID]]8 :
}]]: ;
"]]; <
)]]< =
;]]= >
}^^ 
}__ 	
publicff 
voidff	 
Deletarff 
(ff 
intff 
idff 
)ff 
{gg 	
usinghh 
(hh 
varhh 

connectionhh !
=hh" #
newhh$ '
SqlConnectionhh( 5
(hh5 6
DbConnectionhh6 B
.hhB C
GetConnhhC J
(hhJ K
)hhK L
)hhL M
)hhM N
{ii 

connectionjj 
.jj 
Executejj "
(jj" #
$"jj# %
DELETE jj% ,
"jj, -
+jj. /
$"kk# %
FROM [TB_PAPEL] kk% 5
"kk5 6
+kk7 8
$"ll# %
WHERE ID = ll% 0
{ll0 1
idll1 3
}ll3 4
"ll4 5
)ll5 6
;ll6 7
}mm 
}nn 	
}oo 
}pp ÌF
hC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\SquadRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class 
SquadRepositorio !
:" #
IRepositorioBase$ 4
<4 5
Squad5 :
>: ;
{ 
public 
IEnumerable 
< 
Squad  
>  !

Selecionar" ,
(, -
)- .
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Squad- 2
>2 3
(3 4
$"4 6
	SELECT * 6 ?
"? @
+A B
$"4 6
FROM [TB_SQUAD]6 E
"E F
)F G
;G H
return 
lista 
; 
} 
} 	
public"" 
Squad"" 
SelecionarPorId"" $
(""$ %
int""% (
id"") +
)""+ ,
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
Squad&&9 >
>&&> ?
(&&? @
$"&&@ B
	SELECT * &&B K
"&&K L
+&&M N
$"''@ B
FROM [TB_SQUAD] ''B R
"''R S
+''T U
$"((@ B
WHERE ID = ((B M
{((M N
id((N P
}((P Q
"((Q R
)((R S
;((S T
return)) 
obj)) 
;)) 
}** 
}++ 	
public22 
Squad22 "
SelecionarPorDescricao22 +
(22+ ,
string22, 2
desc223 7
)227 8
{33 	
using44 
(44 
var44 

connection44 !
=44" #
new44$ '
SqlConnection44( 5
(445 6
DbConnection446 B
.44B C
GetConn44C J
(44J K
)44K L
)44L M
)44M N
{55 
var66 
obj66 
=66 

connection66 $
.66$ %
QueryFirstOrDefault66% 8
<668 9
Squad669 >
>66> ?
(66? @
$"66@ B
	SELECT * 66B K
"66K L
+66M N
$"77@ B
FROM [TB_SQUAD] 77B R
"77R S
+77T U
$"88@ B
WHERE Nome = '88B P
{88P Q
desc88Q U
}88U V
'88V W
"88W X
)88X Y
;88Y Z
return99 
obj99 
;99 
}:: 
};; 	
publicBB 
intBB 
InserirBB 
(BB 
SquadBB  
entityBB! '
)BB' (
{CC 	
usingDD 
(DD 
varDD 

connectionDD !
=DD" #
newDD$ '
SqlConnectionDD( 5
(DD5 6
DbConnectionDD6 B
.DDB C
GetConnDDC J
(DDJ K
)DDK L
)DDL M
)DDM N
{EE 
varFF 
objFF 
=FF 

connectionFF $
.FF$ %
QuerySingleFF% 0
<FF0 1
intFF1 4
>FF4 5
(FF5 6
$"FF6 8
DECLARE @ID INT; FF8 I
"FFI J
+FFK L
$"GG6 8#
INSERT INTO [TB_SQUAD] GG8 O
"GGO P
+GGQ R
$"HH6 85
)(IdUnidade, IdTribo, Logo, Nome, Status) HH8 a
"HHa b
+HHc d
$"II6 8
VALUES (II8 @
{II@ A
entityIIA G
.IIG H
	IdUnidadeIIH Q
}IIQ R
, IIR T
{IIT U
entityIIU [
.II[ \
IdTriboII\ c
}IIc d
, IId f
"IIf g
+IIh i
$"JJ6 8
'JJ8 9
{JJ9 :
entityJJ: @
.JJ@ A
LogoJJA E
}JJE F
', 'JJF J
{JJJ K
entityJJK Q
.JJQ R
NomeJJR V
}JJV W
', 1)JJW \
"JJ\ ]
+JJ^ _
$"KK6 8'
SET @ID = SCOPE_IDENTITY();KK8 S
"KKS T
+KKU V
$"LL6 8

SELECT @IDLL8 B
"LLB C
)LLC D
;LLD E
returnMM 
objMM 
;MM 
}NN 
}OO 	
publicUU 
voidUU 
AlterarUU 
(UU 
SquadUU !
entityUU" (
)UU( )
{VV 	
usingWW 
(WW 
varWW 

connectionWW !
=WW" #
newWW$ '
SqlConnectionWW( 5
(WW5 6
DbConnectionWW6 B
.WWB C
GetConnWWC J
(WWJ K
)WWK L
)WWL M
)WWM N
{XX 

connectionYY 
.YY 
ExecuteYY "
(YY" #
$"YY# %
UPDATE [TB_SQUAD] YY% 7
"YY7 8
+YY9 :
$"ZZ# %
SET IdUnidade = ZZ% 5
{ZZ5 6
entityZZ6 <
.ZZ< =
	IdUnidadeZZ= F
}ZZF G
, ZZG I
"ZZI J
+ZZK L
$"[[# %

Idtribo = [[% /
{[[/ 0
entity[[0 6
.[[6 7
IdTribo[[7 >
}[[> ?
, [[? A
"[[A B
+[[C D
$"\\# %
Logo = '\\% -
{\\- .
entity\\. 4
.\\4 5
Logo\\5 9
}\\9 :
', \\: =
"\\= >
+\\? @
$"]]# %
Nome = ']]% -
{]]- .
entity]]. 4
.]]4 5
Nome]]5 9
}]]9 :
' ]]: <
"]]< =
+]]> ?
$"^^# %
WHERE ID = ^^% 0
{^^0 1
entity^^1 7
.^^7 8
ID^^8 :
}^^: ;
"^^; <
)^^< =
;^^= >
}__ 
}`` 	
publicff 
voidff 
SairDaTriboff 
(ff  
Squadff  %
entityff& ,
)ff, -
{gg 	
usinghh 
(hh 
varhh 

connectionhh !
=hh" #
newhh$ '
SqlConnectionhh( 5
(hh5 6
DbConnectionhh6 B
.hhB C
GetConnhhC J
(hhJ K
)hhK L
)hhL M
)hhM N
{ii 

connectionjj 
.jj 
Executejj "
(jj" #
$"jj# %
UPDATE [TB_SQUAD] jj% 7
"jj7 8
+jj9 :
$"kk# %
SET Idtribo = NULL kk% 8
"kk8 9
+kk: ;
$"ll# %
WHERE ID = ll% 0
{ll0 1
entityll1 7
.ll7 8
IDll8 :
}ll: ;
"ll; <
)ll< =
;ll= >
}mm 
}nn 	
publictt 
voidtt 
AlterarAtivoInativott '
(tt' (
Squadtt( -
entitytt. 4
)tt4 5
{uu 	
usingvv 
(vv 
varvv 

connectionvv !
=vv" #
newvv$ '
SqlConnectionvv( 5
(vv5 6
DbConnectionvv6 B
.vvB C
GetConnvvC J
(vvJ K
)vvK L
)vvL M
)vvM N
{ww 

connectionxx 
.xx 
Executexx "
(xx" #
$"xx# %
UPDATE [TB_SQUAD] xx% 7
"xx7 8
+xx9 :
$"yy# %
SET Status = 'yy% 3
{yy3 4
entityyy4 :
.yy: ;
Statusyy; A
}yyA B
' yyB D
"yyD E
+yyF G
$"zz# %
WHERE ID = zz% 0
{zz0 1
entityzz1 7
.zz7 8
IDzz8 :
}zz: ;
"zz; <
)zz< =
;zz= >
}{{ 
}|| 	
public
ÉÉ 
void
ÉÉ	 
Deletar
ÉÉ 
(
ÉÉ 
int
ÉÉ 
id
ÉÉ 
)
ÉÉ 
{
ÑÑ 	
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 

connection
ÖÖ !
=
ÖÖ" #
new
ÖÖ$ '
SqlConnection
ÖÖ( 5
(
ÖÖ5 6
DbConnection
ÖÖ6 B
.
ÖÖB C
GetConn
ÖÖC J
(
ÖÖJ K
)
ÖÖK L
)
ÖÖL M
)
ÖÖM N
{
ÜÜ 

connection
áá 
.
áá 
Execute
áá "
(
áá" #
$"
áá# %
DELETE 
áá% ,
"
áá, -
+
áá. /
$"
àà# %
FROM [TB_SQUAD] 
àà% 5
"
àà5 6
+
àà7 8
$"
ââ# %
WHERE ID = 
ââ% 0
{
ââ0 1
id
ââ1 3
}
ââ3 4
"
ââ4 5
)
ââ5 6
;
ââ6 7
}
ää 
}
ãã 	
}
åå 
}çç Ò:
hC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\TriboRepositorio.cs
	namespace

 	
Repositorio


 
{ 
public 

class 
TriboRepositorio !
:" #
IRepositorioBase$ 4
<4 5
Tribo5 :
>: ;
{ 
public 
IEnumerable 
< 
Tribo  
>  !

Selecionar" ,
(, -
)- .
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Tribo- 2
>2 3
(3 4
$"4 6
	SELECT * 6 ?
"? @
+A B
$"4 6
FROM [TB_TRIBO]6 E
"E F
)F G
;G H
return 
lista 
; 
} 
} 	
public"" 
Tribo"" 
SelecionarPorId"" $
(""$ %
int""% (
id"") +
)""+ ,
{## 	
using$$ 
($$ 
var$$ 

connection$$ !
=$$" #
new$$$ '
SqlConnection$$( 5
($$5 6
DbConnection$$6 B
.$$B C
GetConn$$C J
($$J K
)$$K L
)$$L M
)$$M N
{%% 
var&& 
obj&& 
=&& 

connection&& $
.&&$ %
QueryFirstOrDefault&&% 8
<&&8 9
Tribo&&9 >
>&&> ?
(&&? @
$"&&@ B
	SELECT * &&B K
"&&K L
+&&M N
$"''@ B
FROM [TB_TRIBO] ''B R
"''R S
+''T U
$"((@ B
WHERE ID = ((B M
{((M N
id((N P
}((P Q
"((Q R
)((R S
;((S T
return)) 
obj)) 
;)) 
}** 
}++ 	
public22 
Tribo22 "
SelecionarPorDescricao22 +
(22+ ,
string22, 2
desc223 7
)227 8
{33 	
using44 
(44 
var44 

connection44 !
=44" #
new44$ '
SqlConnection44( 5
(445 6
DbConnection446 B
.44B C
GetConn44C J
(44J K
)44K L
)44L M
)44M N
{55 
var66 
obj66 
=66 

connection66 $
.66$ %
QueryFirstOrDefault66% 8
<668 9
Tribo669 >
>66> ?
(66? @
$"66@ B
	SELECT * 66B K
"66K L
+66M N
$"77@ B
FROM [TB_TRIBO] 77B R
"77R S
+77T U
$"88@ B
WHERE Nome = '88B P
{88P Q
desc88Q U
}88U V
'88V W
"88W X
)88X Y
;88Y Z
return99 
obj99 
;99 
}:: 
};; 	
publicBB 
intBB 
InserirBB 
(BB 
TriboBB  
entityBB! '
)BB' (
{CC 	
usingDD 
(DD 
varDD 

connectionDD !
=DD" #
newDD$ '
SqlConnectionDD( 5
(DD5 6
DbConnectionDD6 B
.DDB C
GetConnDDC J
(DDJ K
)DDK L
)DDL M
)DDM N
{EE 
varFF 
objFF 
=FF 

connectionFF $
.FF$ %
QuerySingleFF% 0
<FF0 1
intFF1 4
>FF4 5
(FF5 6
$"FF6 8
DECLARE @ID INT; FF8 I
"FFI J
+FFK L
$"GG6 8#
INSERT INTO [TB_TRIBO] GG8 O
"GGO P
+GGQ R
$"HH6 8!
(Logo, Nome, Status) HH8 M
"HHM N
+HHO P
$"II6 8
	VALUES ('II8 A
{IIA B
entityIIB H
.IIH I
LogoIII M
}IIM N
', IIN Q
"IIQ R
+IIS T
$"JJ6 8
'JJ8 9
{JJ9 :
entityJJ: @
.JJ@ A
NomeJJA E
}JJE F
', 1)JJF K
"JJK L
+JJM N
$"KK6 8'
SET @ID = SCOPE_IDENTITY();KK8 S
"KKS T
+KKU V
$"LL6 8

SELECT @IDLL8 B
"LLB C
)LLC D
;LLD E
returnMM 
objMM 
;MM 
}NN 
}OO 	
publicUU 
voidUU 
AlterarUU 
(UU 
TriboUU !
entityUU" (
)UU( )
{VV 	
usingWW 
(WW 
varWW 

connectionWW !
=WW" #
newWW$ '
SqlConnectionWW( 5
(WW5 6
DbConnectionWW6 B
.WWB C
GetConnWWC J
(WWJ K
)WWK L
)WWL M
)WWM N
{XX 

connectionYY 
.YY 
ExecuteYY "
(YY" #
$"YY# %
UPDATE [TB_TRIBO] YY% 7
"YY7 8
+YY9 :
$"ZZ# %
SET Logo = 'ZZ% 1
{ZZ1 2
entityZZ2 8
.ZZ8 9
LogoZZ9 =
}ZZ= >
', ZZ> A
"ZZA B
+ZZC D
$"[[# %
Nome = '[[% -
{[[- .
entity[[. 4
.[[4 5
Nome[[5 9
}[[9 :
' [[: <
"[[< =
+[[> ?
$"\\# %
WHERE ID = \\% 0
{\\0 1
entity\\1 7
.\\7 8
ID\\8 :
}\\: ;
"\\; <
)\\< =
;\\= >
}]] 
}^^ 	
publicdd 
voiddd 
AlterarAtivoInativodd '
(dd' (
Tribodd( -
entitydd. 4
)dd4 5
{ee 	
usingff 
(ff 
varff 

connectionff !
=ff" #
newff$ '
SqlConnectionff( 5
(ff5 6
DbConnectionff6 B
.ffB C
GetConnffC J
(ffJ K
)ffK L
)ffL M
)ffM N
{gg 

connectionhh 
.hh 
Executehh "
(hh" #
$"hh# %
UPDATE [TB_TRIBO] hh% 7
"hh7 8
+hh9 :
$"ii# %
SET Status = 'ii% 3
{ii3 4
entityii4 :
.ii: ;
Statusii; A
}iiA B
' iiB D
"iiD E
+iiF G
$"jj# %
WHERE ID = jj% 0
{jj0 1
entityjj1 7
.jj7 8
IDjj8 :
}jj: ;
"jj; <
)jj< =
;jj= >
}kk 
}ll 	
publicss 
voidss	 
Deletarss 
(ss 
intss 
idss 
)ss 
{tt 	
usinguu 
(uu 
varuu 

connectionuu !
=uu" #
newuu$ '
SqlConnectionuu( 5
(uu5 6
DbConnectionuu6 B
.uuB C
GetConnuuC J
(uuJ K
)uuK L
)uuL M
)uuM N
{vv 

connectionww 
.ww 
Executeww "
(ww" #
$"ww# %
DELETE ww% ,
"ww, -
+ww. /
$"xx# %
FROM [TB_TRIBO] xx% 5
"xx5 6
+xx7 8
$"yy# %
WHERE ID = yy% 0
{yy0 1
idyy1 3
}yy3 4
"yy4 5
)yy5 6
;yy6 7
}zz 
}{{ 	
}|| 
}}} ‰5
jC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\UnidadeRepositorio.cs
	namespace 	
Repositorio
 
{		 
public

 

class

 
UnidadeRepositorio

 #
:

# $
IRepositorioBase

% 5
<

5 6
Unidade

6 =
>

= >
{ 
public 
IEnumerable 
< 
Unidade "
>" #

Selecionar$ .
(. /
)/ 0
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
Unidade- 4
>4 5
(5 6
$"6 8
	SELECT * 8 A
"A B
+C D
$"6 8
FROM [TB_UNIDADE]8 I
"I J
)J K
;K L
return 
lista 
; 
} 
} 	
public 
Unidade 
SelecionarPorId &
(& '
int' *
id+ -
)- .
{   	
using!! 
(!! 
var!! 

connection!! !
=!!" #
new!!$ '
SqlConnection!!( 5
(!!5 6
DbConnection!!6 B
.!!B C
GetConn!!C J
(!!J K
)!!K L
)!!L M
)!!M N
{"" 
var## 
obj## 
=## 

connection## $
.##$ %
QueryFirstOrDefault##% 8
<##8 9
Unidade##9 @
>##@ A
(##A B
$"##B D
	SELECT * ##D M
"##M N
+##O P
$"$$B D
FROM [TB_UNIDADE] $$D V
"$$V W
+$$X Y
$"%%B D
WHERE ID = %%D O
{%%O P
id%%P R
}%%R S
"%%S T
)%%T U
;%%U V
return&& 
obj&& 
;&& 
}'' 
}(( 	
public// 
Unidade// 
SelecionarPorNome// (
(//( )
string//) /
nome//0 4
)//4 5
{00 	
using11 
(11 
var11 

connection11 !
=11" #
new11$ '
SqlConnection11( 5
(115 6
DbConnection116 B
.11B C
GetConn11C J
(11J K
)11K L
)11L M
)11M N
{22 
var33 
obj33 
=33 

connection33 $
.33$ %
QueryFirstOrDefault33% 8
<338 9
Unidade339 @
>33@ A
(33A B
$"33B D
	SELECT * 33D M
"33M N
+33O P
$"44B D
FROM [TB_UNIDADE] 44D V
"44V W
+44X Y
$"55B D
WHERE Nome = '55D R
{55R S
nome55S W
}55W X
'55X Y
"55Y Z
)55Z [
;55[ \
return66 
obj66 
;66 
}77 
}88 	
public?? 
int?? 
Inserir?? 
(?? 
Unidade?? "
entity??# )
)??) *
{@@ 	
usingAA 
(AA 
varAA 

connectionAA !
=AA" #
newAA$ '
SqlConnectionAA( 5
(AA5 6
DbConnectionAA6 B
.AAB C
GetConnAAC J
(AAJ K
)AAK L
)AAL M
)AAM N
{BB 
varCC 
objCC 
=CC 

connectionCC $
.CC$ %
QuerySingleCC% 0
<CC0 1
intCC1 4
>CC4 5
(CC5 6
$"CC6 8
DECLARE @ID INT; CC8 I
"CCI J
+CCK L
$"DD6 8%
INSERT INTO [TB_UNIDADE] DD8 Q
"DDQ R
+DDS T
$"EE6 8%
(IdPais, Nome, EstSigla) EE8 Q
"EEQ R
+EES T
$"FF6 8
VALUES (FF8 @
{FF@ A
entityFFA G
.FFG H
IdPaisFFH N
}FFN O
, FFO Q
"FFQ R
+FFS T
$"GG6 8
'GG8 9
{GG9 :
entityGG: @
.GG@ A
NomeGGA E
}GGE F
', 'GGF J
{GGJ K
entityGGK Q
.GGQ R
EstSiglaGGR Z
}GGZ [
')GG[ ]
"GG] ^
+GG_ `
$"HH6 8'
SET @ID = SCOPE_IDENTITY();HH8 S
"HHS T
+HHU V
$"II6 8

SELECT @IDII8 B
"IIB C
)IIC D
;IID E
returnJJ 
objJJ 
;JJ 
}KK 
}LL 	
publicRR 
voidRR 
AlterarRR 
(RR 
UnidadeRR #
entityRR$ *
)RR* +
{SS 	
usingTT 
(TT 
varTT 

connectionTT !
=TT" #
newTT$ '
SqlConnectionTT( 5
(TT5 6
DbConnectionTT6 B
.TTB C
GetConnTTC J
(TTJ K
)TTK L
)TTL M
)TTM N
{UU 

connectionVV 
.VV 
ExecuteVV "
(VV" #
$"VV# % 
UPDATE [TB_UNIDADE] VV% 9
"VV9 :
+VV; <
$"WW# %
SET IdPais = WW% 2
{WW2 3
entityWW3 9
.WW9 :
IdPaisWW: @
}WW@ A
, WWA C
"WWC D
+WWE F
$"XX# %
Nome = 'XX% -
{XX- .
entityXX. 4
.XX4 5
NomeXX5 9
}XX9 :
', XX: =
"XX= >
+XX? @
$"YY# %
EstSigla = 'YY% 1
{YY1 2
entityYY2 8
.YY8 9
EstSiglaYY9 A
}YYA B
' YYB D
"YYD E
+YYF G
$"ZZ# %
WHERE ID = ZZ% 0
{ZZ0 1
entityZZ1 7
.ZZ7 8
IdZZ8 :
}ZZ: ;
"ZZ; <
)ZZ< =
;ZZ= >
}[[ 
}\\ 	
publicbb 
voidbb 
Deletarbb 
(bb 
intbb 
idbb  "
)bb" #
{cc 	
usingdd 
(dd 
vardd 

connectiondd !
=dd" #
newdd$ '
SqlConnectiondd( 5
(dd5 6
DbConnectiondd6 B
.ddB C
GetConnddC J
(ddJ K
)ddK L
)ddL M
)ddM N
{ee 

connectionff 
.ff 
Executeff "
(ff" #
$"ff# %
DELETE ff% ,
"ff, -
+ff. /
$"gg# %
FROM [TB_UNIDADE] gg% 7
"gg7 8
+gg9 :
$"hh# %
WHERE ID = hh% 0
{hh0 1
idhh1 3
}hh3 4
"hh4 5
)hh5 6
;hh6 7
}ii 
}jj 	
}kk 
}ll Ù`
gC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Repositorio\UserRepositorio.cs
	namespace		 	
Repositorio		
 
{

 
public 

class 
UserRepositorio  
{ 
public 
IEnumerable 
< 
User 
>  
SelecionarTodos! 0
(0 1
)1 2
{ 	
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
DbConnection6 B
.B C
GetConnC J
(J K
)K L
)L M
)M N
{ 
var 
lista 
= 

connection &
.& '
Query' ,
<, -
User- 1
>1 2
(2 3
$"3 5
	SELECT * 5 >
"> ?
+@ A
$"2 4
FROM [TB_USER]4 B
"B C
)C D
;D E
return 
lista 
; 
} 
} 	
public   
IEnumerable   
<   
User   
>    
SelecionarAtivos  ! 1
(  1 2
)  2 3
{!! 	
using"" 
("" 
var"" 

connection"" !
=""" #
new""$ '
SqlConnection""( 5
(""5 6
DbConnection""6 B
.""B C
GetConn""C J
(""J K
)""K L
)""L M
)""M N
{## 
var$$ 
lista$$ 
=$$ 

connection$$ &
.$$& '
Query$$' ,
<$$, -
User$$- 1
>$$1 2
($$2 3
$"$$3 5
	SELECT * $$5 >
"$$> ?
+$$@ A
$"%%2 4
FROM [TB_USER] %%4 C
"%%C D
+%%E F
$"&&2 4
WHERE Status = 1&&4 D
"&&D E
)&&E F
;&&F G
return'' 
lista'' 
;'' 
}(( 
})) 	
public00 
User00 
SelecionarPorId00 #
(00# $
int00$ '
id00( *
)00* +
{11 	
using22 
(22 
var22 

connection22 !
=22" #
new22$ '
SqlConnection22( 5
(225 6
DbConnection226 B
.22B C
GetConn22C J
(22J K
)22K L
)22L M
)22M N
{33 
var44 
obj44 
=44 

connection44 $
.44$ %
QueryFirstOrDefault44% 8
<448 9
User449 =
>44= >
(44> ?
$"44? A
	SELECT * 44A J
"44J K
+44L M
$"55? A
FROM [TB_USER] 55A P
"55P Q
+55R S
$"66? A
WHERE ID = 66A L
{66L M
id66M O
}66O P
"66P Q
)66Q R
;66R S
return77 
obj77 
;77 
}88 
}99 	
public@@ 
IEnumerable@@ 
<@@ 
User@@ 
>@@  
SelecionarPorNome@@! 2
(@@2 3
string@@3 9
nome@@: >
)@@> ?
{AA 	
usingBB 
(BB 
varBB 

connectionBB !
=BB" #
newBB$ '
SqlConnectionBB( 5
(BB5 6
DbConnectionBB6 B
.BBB C
GetConnBBC J
(BBJ K
)BBK L
)BBL M
)BBM N
{CC 
varDD 
objDD 
=DD 

connectionDD $
.DD$ %
QueryDD% *
<DD* +
UserDD+ /
>DD/ 0
(DD0 1
$"DD1 3
	SELECT * DD3 <
"DD< =
+DD> ?
$"EE1 3
FROM [TB_USER] EE3 B
"EEB C
+EED E
$"FF1 3
WHERE Nome LIKE '%FF3 E
{FFE F
nomeFFF J
}FFJ K
' FFK M
"FFM N
+FFO P
$"GG1 3
OR Nome Like 'GG3 A
{GGA B
nomeGGB F
}GGF G
%' GGG J
"GGJ K
+GGL M
$"HH1 3
OR Nome Like '%HH3 B
{HHB C
nomeHHC G
}HHG H
%'HHH J
"HHJ K
)HHK L
;HHL M
returnII 
objII 
;II 
}JJ 
}KK 	
publicRR 
IEnumerableRR 
<RR 
UserRR 
>RR  
SelecionarPorPapelRR! 3
(RR3 4
intRR4 7
IdPapelRR8 ?
)RR? @
{SS 	
usingTT 
(TT 
varTT 

connectionTT !
=TT" #
newTT$ '
SqlConnectionTT( 5
(TT5 6
DbConnectionTT6 B
.TTB C
GetConnTTC J
(TTJ K
)TTK L
)TTL M
)TTM N
{UU 
varVV 
objVV 
=VV 

connectionVV $
.VV$ %
QueryVV% *
<VV* +
UserVV+ /
>VV/ 0
(VV0 1
$"VV1 3
	SELECT * VV3 <
"VV< =
+VV> ?
$"WW1 3
FROM [TB_USER] WW3 B
"WWB C
+WWD E
$"XX1 3
WHERE IdPapel = XX3 C
{XXC D
IdPapelXXD K
}XXK L
"XXL M
)XXM N
;XXN O
returnYY 
objYY 
;YY 
}ZZ 
}[[ 	
publicbb 
intbb 
Inserirbb 
(bb 
Userbb 
entitybb  &
)bb& '
{cc 	
usingdd 
(dd 
vardd 

connectiondd !
=dd" #
newdd$ '
SqlConnectiondd( 5
(dd5 6
DbConnectiondd6 B
.ddB C
GetConnddC J
(ddJ K
)ddK L
)ddL M
)ddM N
{ee 
varff 
objff 
=ff 

connectionff $
.ff$ %
QuerySingleff% 0
<ff0 1
intff1 4
>ff4 5
(ff5 6
$"ff6 8!
DECLARE @IDUser INT; ff8 M
"ffM N
+ffO P
$"gg6 8
DECLARE @ID INT; gg8 I
"ggI J
+ggK L
$"hh6 8"
INSERT INTO [TB_USER] hh8 N
"hhN O
+hhP Q
$"ii6 80
$(IdPapel, Nome, Email, Tel, Status) ii8 \
"ii\ ]
+ii^ _
$"jj6 8
VALUES (jj8 @
{jj@ A
entityjjA G
.jjG H
IdPapeljjH O
}jjO P
, jjP R
"jjR S
+jjT U
$"kk6 8
'kk8 9
{kk9 :
entitykk: @
.kk@ A
NomekkA E
}kkE F
', 'kkF J
{kkJ K
entitykkK Q
.kkQ R
EmailkkR W
}kkW X
', kkX [
"kk[ \
+kk] ^
$"ll6 8
'll8 9
{ll9 :
entityll: @
.ll@ A
TelllA D
}llD E
', 1)llE J
"llJ K
+llL M
$"mm6 8+
SET @IDUser = SCOPE_IDENTITY();mm8 W
"mmW X
+mmY Z
$"nn6 8
SELECT @IDUser nn8 G
"nnG H
+nnI J
$"oo6 8'
DECLARE @HASH VARCHAR(32); oo8 S
"ooS T
+ooU V
$"pp6 8
SET @HASH = 'pp8 E
{ppE F
entityppF L
.ppL M
SenhappM R
}ppR S
' ppS U
"ppU V
+ppW X
$"qq6 8H
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)qq8 t
"qqt u
+qqv w
$"rr6 8H
<SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)rr8 t
"rrt u
+rrv w
$"ss6 8#
INSERT INTO [TB_LOGIN] ss8 O
"ssO P
+ssQ R
$"tt6 8&
(IdUser, Username, Senha) tt8 R
"ttR S
+ttT U
$"uu6 8
VALUES (@IDUser, uu8 I
"uuI J
+uuK L
$"vv6 8
'vv8 9
{vv9 :
entityvv: @
.vv@ A
UsernamevvA I
}vvI J
', vvJ M
"vvM N
+vvO P
$"ww6 8
@HASH)ww8 >
"ww> ?
+ww@ A
$"xx6 8'
SET @ID = SCOPE_IDENTITY();xx8 S
"xxS T
+xxU V
$"yy6 8

SELECT @IDyy8 B
"yyB C
)yyC D
;yyD E
returnzz 
objzz 
;zz 
}{{ 
}|| 	
public
ÇÇ 
void
ÇÇ "
AlterarPerfilUsuario
ÇÇ (
(
ÇÇ( )
User
ÇÇ) -
entity
ÇÇ. 4
)
ÇÇ4 5
{
ÉÉ 	
using
ÑÑ 
(
ÑÑ 
var
ÑÑ 

connection
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '
SqlConnection
ÑÑ( 5
(
ÑÑ5 6
DbConnection
ÑÑ6 B
.
ÑÑB C
GetConn
ÑÑC J
(
ÑÑJ K
)
ÑÑK L
)
ÑÑL M
)
ÑÑM N
{
ÖÖ 

connection
ÜÜ 
.
ÜÜ 
Execute
ÜÜ "
(
ÜÜ" #
$"
ÜÜ# %
UPDATE [TB_USER] 
ÜÜ% 6
"
ÜÜ6 7
+
ÜÜ8 9
$"
áá# %
SET IdPapel = 
áá% 3
{
áá3 4
entity
áá4 :
.
áá: ;
IdPapel
áá; B
}
ááB C
, 
ááC E
"
ááE F
+
ááG H
$"
àà# %
Nome = '
àà% -
{
àà- .
entity
àà. 4
.
àà4 5
Nome
àà5 9
}
àà9 :
', 
àà: =
"
àà= >
+
àà? @
$"
ââ# %
	Email = '
ââ% .
{
ââ. /
entity
ââ/ 5
.
ââ5 6
Email
ââ6 ;
}
ââ; <
', 
ââ< ?
"
ââ? @
+
ââA B
$"
ää# %
Tel = '
ää% ,
{
ää, -
entity
ää- 3
.
ää3 4
Tel
ää4 7
}
ää7 8
' 
ää8 :
"
ää: ;
+
ää< =
$"
ãã# %
WHERE ID = 
ãã% 0
{
ãã0 1
entity
ãã1 7
.
ãã7 8
ID
ãã8 :
}
ãã: ;
"
ãã; <
)
ãã< =
;
ãã= >
}
åå 
}
çç 	
public
ìì 
void
ìì !
AlterarAtivoInativo
ìì '
(
ìì' (
User
ìì( ,
entity
ìì- 3
)
ìì3 4
{
îî 	
using
ïï 
(
ïï 
var
ïï 

connection
ïï !
=
ïï" #
new
ïï$ '
SqlConnection
ïï( 5
(
ïï5 6
DbConnection
ïï6 B
.
ïïB C
GetConn
ïïC J
(
ïïJ K
)
ïïK L
)
ïïL M
)
ïïM N
{
ññ 

connection
óó 
.
óó 
Execute
óó "
(
óó" #
$"
óó# % 
UPDATE [TB_LOGIN] 
óó% 7
"
óó7 8
+
óó9 :
$"
òò# %
SET Status = '
òò% 3
{
òò3 4
entity
òò4 :
.
òò: ;
Status
òò; A
}
òòA B
' 
òòB D
"
òòD E
+
òòF G
$"
ôô# %
WHERE ID = 
ôô% 0
{
ôô0 1
entity
ôô1 7
.
ôô7 8
ID
ôô8 :
}
ôô: ;
"
ôô; <
+
ôô= >
$"
öö# %
UPDATE [TB_USER] 
öö% 6
"
öö6 7
+
öö8 9
$"
õõ# %
SET Status = '
õõ% 3
{
õõ3 4
entity
õõ4 :
.
õõ: ;
Status
õõ; A
}
õõA B
' 
õõB D
"
õõD E
+
õõF G
$"
úú# %
WHERE ID = 
úú% 0
{
úú0 1
entity
úú1 7
.
úú7 8
ID
úú8 :
}
úú: ;
"
úú; <
)
úú< =
;
úú= >
}
ùù 
}
ûû 	
public
•• 
void
••	 
Deletar
•• 
(
•• 
int
•• 
id
•• 
)
•• 
{
¶¶ 	
using
ßß 
(
ßß 
var
ßß 

connection
ßß !
=
ßß" #
new
ßß$ '
SqlConnection
ßß( 5
(
ßß5 6
DbConnection
ßß6 B
.
ßßB C
GetConn
ßßC J
(
ßßJ K
)
ßßK L
)
ßßL M
)
ßßM N
{
®® 

connection
©© 
.
©© 
Execute
©© "
(
©©" #
$"
©©# %
DELETE 
©©% ,
"
©©, -
+
©©. /
$"
™™# %
FROM [TB_USER] 
™™% 4
"
™™4 5
+
™™6 7
$"
´´# %
WHERE ID = 
´´% 0
{
´´0 1
id
´´1 3
}
´´3 4
"
´´4 5
)
´´5 6
;
´´6 7
}
¨¨ 
}
≠≠ 	
}
ÆÆ 
}ØØ 