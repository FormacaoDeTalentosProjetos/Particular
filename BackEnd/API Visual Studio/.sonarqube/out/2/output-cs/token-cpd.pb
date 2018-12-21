æ
jC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\Abstracao\INegocioBase.cs
	namespace 	
Negocio
 
. 
	Abstracao 
{ 
public 

	interface 
INegocioBase !
<! "
T" #
># $
where% *
T+ ,
:- .
class/ 4
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
; 
T 	
Alterar
 
( 
int 
id 
, 
T 
entity "
)" #
;# $
void 
Deletar 
( 
int 
id 
) 
; 
} 
} ì,
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\LoginNegocio.cs
	namespace 	
Negocio
 
{ 
public		 

class		 
LoginNegocio		 
{

 
private 
readonly 
LoginRepositorio )
_loginRepositorio* ;
;; <
public 
LoginNegocio 
( 
) 
{ 	
_loginRepositorio 
= 
new  #
LoginRepositorio$ 4
(4 5
)5 6
;6 7
} 	
public 
IEnumerable 
< 
Login  
>  !

Selecionar" ,
(, -
)- .
{ 	
var 
lista 
= 
_loginRepositorio )
.) *

Selecionar* 4
(4 5
)5 6
;6 7
if   
(   
lista   
==   
null   
)   
throw!! 
new!! "
NaoEncontradoException!! 0
(!!0 1
)!!1 2
;!!2 3
return## 
lista## 
;## 
}$$ 	
public++ 
Login++ 
SelecionarPorId++ $
(++$ %
int++% (
id++) +
)+++ ,
{,, 	
var-- 
obj-- 
=-- 
_loginRepositorio-- '
.--' (
SelecionarPorId--( 7
(--7 8
id--8 :
)--: ;
;--; <
if// 
(// 
obj// 
==// 
null// 
)// 
throw00 
new00 "
NaoEncontradoException00 0
(000 1
)001 2
;002 3
return22 
obj22 
;22 
}33 	
public:: 
Login:: 
SelecionarPorUser:: &
(::& '
string::' -
user::. 2
)::2 3
{;; 	
var<< 
obj<< 
=<< 
_loginRepositorio<< '
.<<' (
SelecionarPorUser<<( 9
(<<9 :
user<<: >
)<<> ?
;<<? @
if>> 
(>> 
obj>> 
==>> 
null>> 
)>> 
throw?? 
new?? "
NaoEncontradoException?? 0
(??0 1
)??1 2
;??2 3
returnAA 
objAA 
;AA 
}BB 	
publicJJ 
LoginJJ 
EfetuarLoginUserJJ %
(JJ% &
stringJJ& ,
loginJJ- 2
,JJ2 3
stringJJ4 :
senhaJJ; @
)JJ@ A
{KK 	
varLL 
objUserLL 
=LL 
_loginRepositorioLL +
.LL+ ,
EfetuarLoginUserLL, <
(LL< =
loginLL= B
,LLB C
senhaLLD I
)LLI J
;LLJ K
ifNN 
(NN 
objUserNN 
!=NN 
nullNN 
)NN  
{OO 
returnPP 
objUserPP 
;PP 
}QQ 
elseRR 
{SS 
throwTT 
newTT "
NaoEncontradoExceptionTT 0
(TT0 1
)TT1 2
;TT2 3
}UU 
}VV 	
public^^ 
Login^^ 
AlterarSenha^^ !
(^^! "
int^^" %
id^^& (
,^^( )
Login^^* /
entity^^0 6
)^^6 7
{__ 	
entity`` 
.`` 
ID`` 
=`` 
id`` 
;`` 
_loginRepositorioaa 
.aa 
AlterarSenhaaa *
(aa* +
entityaa+ 1
)aa1 2
;aa2 3
returncc 
_loginRepositoriocc $
.cc$ %
SelecionarPorIdcc% 4
(cc4 5
idcc5 7
)cc7 8
;cc8 9
}dd 	
publicll 
Loginll 
AlterarUserll  
(ll  !
intll! $
idll% '
,ll' (
Loginll) .
entityll/ 5
)ll5 6
{mm 	
entitynn 
.nn 
IDnn 
=nn 
idnn 
;nn 
_loginRepositoriooo 
.oo 
AlterarUseroo )
(oo) *
entityoo* 0
)oo0 1
;oo1 2
returnqq 
_loginRepositorioqq $
.qq$ %
SelecionarPorIdqq% 4
(qq4 5
idqq5 7
)qq7 8
;qq8 9
}rr 	
publiczz 
Loginzz 
AlterarAtivoInativozz (
(zz( )
intzz) ,
idzz- /
,zz/ 0
Loginzz1 6
entityzz7 =
)zz= >
{{{ 	
entity|| 
.|| 
ID|| 
=|| 
id|| 
;|| 
_loginRepositorio}} 
.}} 
AlterarAtivoInativo}} 1
(}}1 2
entity}}2 8
)}}8 9
;}}9 :
return 
_loginRepositorio $
.$ %
SelecionarPorId% 4
(4 5
id5 7
)7 8
;8 9
}
ÄÄ 	
public
ÜÜ 
void
ÜÜ	 
Deletar
ÜÜ 
(
ÜÜ 
int
ÜÜ 
id
ÜÜ 
)
ÜÜ 
{
áá 	
var
àà 
obj
àà 
=
àà 
_loginRepositorio
àà '
.
àà' (
SelecionarPorId
àà( 7
(
àà7 8
id
àà8 :
)
àà: ;
;
àà; <
_loginRepositorio
ää 
.
ää 
Deletar
ää %
(
ää% &
obj
ää& )
.
ää) *
ID
ää* ,
)
ää, -
;
ää- .
}
ãã 	
}
åå 
}çç ‡	
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\MapaNegocio.cs
	namespace 	
Negocio
 
{		 
public

 

class

 
MapaNegocio

 
{ 
private 
readonly 
MapaRepositorio (
_mapaRepositorio) 9
;9 :
public 
MapaNegocio 
( 
) 
{ 	
_mapaRepositorio 
= 
new "
MapaRepositorio# 2
(2 3
)3 4
;4 5
} 	
public 
Mapa "
SelecionarPorDescricao *
(* +
string+ 1
desc2 6
)6 7
{ 	
var   
obj   
=   
_mapaRepositorio   &
.  & '"
SelecionarPorDescricao  ' =
(  = >
desc  > B
)  B C
;  C D
if"" 
("" 
obj"" 
=="" 
null"" 
)"" 
throw## 
new## "
NaoEncontradoException## 0
(##0 1
)##1 2
;##2 3
return%% 
obj%% 
;%% 
}&& 	
}'' 
}(( ‘7
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\MembroSquadNegocio.cs
	namespace 	
Negocio
 
{		 
public

 

class

 
MembroSquadNegocio

 #
:

$ %
INegocioBase

& 2
<

2 3
MembroSquad

3 >
>

> ?
{ 
private 
readonly "
MembroSquadRepositorio /#
_membroSquadRepositorio0 G
;G H
public 
MembroSquadNegocio !
(! "
)" #
{ 	#
_membroSquadRepositorio #
=$ %
new& )"
MembroSquadRepositorio* @
(@ A
)A B
;B C
} 	
public 
IEnumerable 
< 
MembroSquad &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
return #
_membroSquadRepositorio *
.* +

Selecionar+ 5
(5 6
)6 7
;7 8
}   	
public'' 
MembroSquad'' 
SelecionarPorId'' *
(''* +
int''+ .
id''/ 1
)''1 2
{(( 	
var)) 
obj)) 
=)) #
_membroSquadRepositorio)) -
.))- .
SelecionarPorId)). =
())= >
id))> @
)))@ A
;))A B
if++ 
(++ 
obj++ 
==++ 
null++ 
)++ 
throw,, 
new,, "
NaoEncontradoException,, 0
(,,0 1
$",,1 3;
/N√£o foi encontrado nenhum membro com este ID: ,,3 a
{,,a b
id,,c e
},,f g
",,g h
),,h i
;,,i j
return.. 
obj.. 
;.. 
}// 	
public77 
int77 
Inserir77 
(77 
MembroSquad77 &
entity77' -
)77- .
{88 	!
ValidacoesMembroSquad99 !
(99! "
entity99" (
)99( )
;99) *
if<< 
(<< #
_membroSquadRepositorio<< '
.<<' (
SelecionarPorIdUser<<( ;
(<<; <
entity<<< B
.<<B C
IdUser<<C I
)<<I J
!=<<K M
null<<N R
)<<R S
{== 
throw>> 
new>> 
ConflitoException>> +
(>>+ ,
$">>, .
O usu√°rio com ID: >>. @
{>>@ A
entity>>A G
.>>G H
IdUser>>H N
}>>N O
, >>O Q
">>Q R
+>>S T
$"??, .+
j√° est√° vinculado a uma Squad??. K
"??K L
)??L M
;??M N
}@@ 
returnCC #
_membroSquadRepositorioCC *
.CC* +
InserirCC+ 2
(CC2 3
entityCC3 9
)CC9 :
;CC: ;
}DD 	
publicLL 
MembroSquadLL 
AlterarLL "
(LL" #
intLL# &
idLL' )
,LL) *
MembroSquadLL+ 6
entityLL7 =
)LL= >
{MM 	!
ValidacoesMembroSquadNN !
(NN! "
entityNN" (
)NN( )
;NN) *
ifQQ 
(QQ #
_membroSquadRepositorioQQ '
.QQ' (
SelecionarPorIdQQ( 7
(QQ7 8
idQQ8 :
)QQ: ;
==QQ< >
nullQQ? C
)QQC D
{RR 
throwSS 
newSS "
NaoEncontradoExceptionSS 0
(SS0 1
$"SS1 30
$N√£o foi encontrado nenhum usu√°rio SS3 U
"SSU V
+SSW X
$"TT1 3

com o ID: TT3 =
{TT= >
idTT> @
}TT@ A
"TTA B
)TTB C
;TTC D
}UU 
entityWW 
.WW 
IdWW 
=WW 
idWW 
;WW #
_membroSquadRepositorioXX #
.XX# $
AlterarXX$ +
(XX+ ,
entityXX, 2
)XX2 3
;XX3 4
returnZZ #
_membroSquadRepositorioZZ *
.ZZ* +
SelecionarPorIdZZ+ :
(ZZ: ;
idZZ; =
)ZZ= >
;ZZ> ?
}[[ 	
publicaa 
voidaa 
Deletaraa 
(aa 
intaa 
idaa  "
)aa" #
{bb 	
varcc 
objcc 
=cc 
SelecionarPorIdcc %
(cc% &
idcc& (
)cc( )
;cc) *
ifee 
(ee 
objee 
==ee 
nullee 
)ee 
{ff 
throwgg 
newgg "
NaoEncontradoExceptiongg 0
(gg0 1
$"gg1 3;
/N√£o foi encontrado nenhum membro com este ID: gg3 a
{gga b
idggc e
}ggf g
"ggg h
)ggh i
;ggi j
}hh #
_membroSquadRepositorioii #
.ii# $
Deletarii$ +
(ii+ ,
objii, /
.ii/ 0
Idii0 2
)ii2 3
;ii3 4
}jj 	
publicll 
voidll !
ValidacoesMembroSquadll )
(ll) *
MembroSquadll* 5
entityll6 <
)ll< =
{mm 	
ifoo 
(oo 
CamposVaziosoo 
.oo 
	Verificaroo &
(oo& '
entityoo' -
)oo- .
)oo. /
{pp 
throwqq 
newqq !
DadoInvalidoExceptionqq /
(qq/ 0
$strqq0 h
)qqh i
;qqi j
}rr 
varuu 
_squadRepositoriouu !
=uu" #
newuu$ '
SquadRepositoriouu( 8
(uu8 9
)uu9 :
;uu: ;
ifvv 
(vv 
_squadRepositoriovv !
.vv! "
SelecionarPorIdvv" 1
(vv1 2
entityvv2 8
.vv8 9
IdSquadvv9 @
)vv@ A
==vvB D
nullvvE I
)vvI J
{ww 
throwxx 
newxx "
NaoEncontradoExceptionxx 0
(xx0 1
$"xx1 3.
"N√£o foi encontrado nenhuma Squad xx3 T
"xxT U
+xxV W
$"yy1 3

com o ID: yy3 =
{yy= >
entityyy> D
.yyD E
IdSquadyyE L
}yyL M
"yyM N
)yyN O
;yyO P
}zz 
var}} 
_userRepositorio}}  
=}}! "
new}}# &
UserRepositorio}}' 6
(}}6 7
)}}7 8
;}}8 9
if~~ 
(~~ 
_userRepositorio~~  
.~~  !
SelecionarPorId~~! 0
(~~0 1
entity~~1 7
.~~7 8
IdSquad~~8 ?
)~~? @
==~~A C
null~~D H
)~~H I
{ 
throw
ÄÄ 
new
ÄÄ $
NaoEncontradoException
ÄÄ 0
(
ÄÄ0 1
$"
ÄÄ1 32
$N√£o foi encontrado nenhum usu√°rio 
ÄÄ3 U
"
ÄÄU V
+
ÄÄW X
$"
ÅÅ1 3

com o ID: 
ÅÅ3 =
{
ÅÅ= >
entity
ÅÅ> D
.
ÅÅD E
IdUser
ÅÅE K
}
ÅÅK L
"
ÅÅL M
)
ÅÅM N
;
ÅÅN O
}
ÇÇ 
}
ÑÑ 	
}
ÖÖ 
}ÜÜ †2
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\MembroTriboNegocio.cs
	namespace 	
Negocio
 
{		 
public

 

class

 
MembroTriboNegocio

 #
:

$ %
INegocioBase

& 2
<

2 3
MembroTribo

3 >
>

> ?
{ 
private 
readonly "
MembroTriboRepositorio /#
_membroTriboRepositorio0 G
;G H
public 
MembroTriboNegocio !
(! "
)" #
{ 	#
_membroTriboRepositorio #
=$ %
new& )"
MembroTriboRepositorio* @
(@ A
)A B
;B C
} 	
public 
IEnumerable 
< 
MembroTribo &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
return #
_membroTriboRepositorio *
.* +

Selecionar+ 5
(5 6
)6 7
;7 8
}   	
public'' 
MembroTribo'' 
SelecionarPorId'' *
(''* +
int''+ .
id''/ 1
)''1 2
{(( 	
var)) 
obj)) 
=)) #
_membroTriboRepositorio)) -
.))- .
SelecionarPorId)). =
())= >
id))> @
)))@ A
;))A B
if++ 
(++ 
obj++ 
==++ 
null++ 
)++ 
throw,, 
new,, "
NaoEncontradoException,, 0
(,,0 1
$",,1 3;
/N√£o foi encontrado nenhum membro com este ID: ,,3 a
{,,a b
id,,c e
},,f g
",,g h
),,h i
;,,i j
return.. 
obj.. 
;.. 
}// 	
public77 
int77 
Inserir77 
(77 
MembroTribo77 &
entity77' -
)77- .
{88 	!
ValidacoesMembroTribo99 !
(99! "
entity99" (
)99( )
;99) *
return;; #
_membroTriboRepositorio;; *
.;;* +
Inserir;;+ 2
(;;2 3
entity;;3 9
);;9 :
;;;: ;
}<< 	
publicDD 
MembroTriboDD 
AlterarDD "
(DD" #
intDD# &
idDD' )
,DD) *
MembroTriboDD+ 6
entityDD7 =
)DD= >
{EE 	!
ValidacoesMembroTriboFF !
(FF! "
entityFF" (
)FF( )
;FF) *
ifII 
(II #
_membroTriboRepositorioII '
.II' (
SelecionarPorIdII( 7
(II7 8
idII8 :
)II: ;
==II< >
nullII? C
)IIC D
{JJ 
throwKK 
newKK "
NaoEncontradoExceptionKK 0
(KK0 1
$"KK1 30
$N√£o foi encontrado nenhum usu√°rio KK3 U
"KKU V
+KKW X
$"LL1 3

com o ID: LL3 =
{LL= >
idLL> @
}LL@ A
"LLA B
)LLB C
;LLC D
}MM 
entityOO 
.OO 
IdOO 
=OO 
idOO 
;OO #
_membroTriboRepositorioPP #
.PP# $
AlterarPP$ +
(PP+ ,
entityPP, 2
)PP2 3
;PP3 4
returnRR #
_membroTriboRepositorioRR *
.RR* +
SelecionarPorIdRR+ :
(RR: ;
idRR; =
)RR= >
;RR> ?
}SS 	
publicYY 
voidYY 
DeletarYY 
(YY 
intYY 
idYY  "
)YY" #
{ZZ 	
var[[ 
obj[[ 
=[[ 
SelecionarPorId[[ %
([[% &
id[[& (
)[[( )
;[[) *
if]] 
(]] 
obj]] 
==]] 
null]] 
)]] 
{^^ 
throw__ 
new__ "
NaoEncontradoException__ 0
(__0 1
$"__1 3;
/N√£o foi encontrado nenhum membro com este ID: __3 a
{__a b
id__c e
}__f g
"__g h
)__h i
;__i j
}`` #
_membroTriboRepositorioaa #
.aa# $
Deletaraa$ +
(aa+ ,
objaa, /
.aa/ 0
Idaa0 2
)aa2 3
;aa3 4
}bb 	
publicdd 
voiddd !
ValidacoesMembroTribodd )
(dd) *
MembroTribodd* 5
entitydd6 <
)dd< =
{ee 	
ifgg 
(gg 
CamposVaziosgg 
.gg 
	Verificargg &
(gg& '
entitygg' -
)gg- .
)gg. /
{hh 
throwii 
newii !
DadoInvalidoExceptionii /
(ii/ 0
$strii0 h
)iih i
;iii j
}jj 
varmm 
_triboRepositoriomm !
=mm" #
newmm$ '
TriboRepositoriomm( 8
(mm8 9
)mm9 :
;mm: ;
ifnn 
(nn 
_triboRepositorionn !
.nn! "
SelecionarPorIdnn" 1
(nn1 2
entitynn2 8
.nn8 9
IdTribonn9 @
)nn@ A
==nnB D
nullnnE I
)nnI J
{oo 
throwpp 
newpp "
NaoEncontradoExceptionpp 0
(pp0 1
$"pp1 3.
"N√£o foi encontrado nenhuma Tribo pp3 T
"ppT U
+ppV W
$"qq1 3

com o ID: qq3 =
{qq= >
entityqq> D
.qqD E
IdTriboqqE L
}qqL M
"qqM N
)qqN O
;qqO P
}rr 
varuu 
_userRepositoriouu  
=uu! "
newuu# &
UserRepositoriouu' 6
(uu6 7
)uu7 8
;uu8 9
ifvv 
(vv 
_userRepositoriovv  
.vv  !
SelecionarPorIdvv! 0
(vv0 1
entityvv1 7
.vv7 8
IdTribovv8 ?
)vv? @
==vvA C
nullvvD H
)vvH I
{ww 
throwxx 
newxx "
NaoEncontradoExceptionxx 0
(xx0 1
$"xx1 30
$N√£o foi encontrado nenhum usu√°rio xx3 U
"xxU V
+xxW X
$"yy1 3

com o ID: yy3 =
{yy= >
entityyy> D
.yyD E
IdUseryyE K
}yyK L
"yyL M
)yyM N
;yyN O
}zz 
}{{ 	
}|| 
}}} Ç
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\MentorSquadNegocio.cs
	namespace		 	
Negocio		
 
{

 
public 

class 
MentorSquadNegocio #
:$ %
INegocioBase& 2
<2 3
MentorSquad3 >
>> ?
{ 
private 
readonly "
MentorSquadRepositorio /#
_mentorSquadRepositorio0 G
;G H
public 
MentorSquadNegocio !
(! "
)" #
{ 	#
_mentorSquadRepositorio #
=$ %
new& )"
MentorSquadRepositorio* @
(@ A
)A B
;B C
} 	
public 
IEnumerable 
< 
MentorSquad &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
var   
lista   
=   #
_mentorSquadRepositorio   /
.  / 0

Selecionar  0 :
(  : ;
)  ; <
;  < =
if"" 
("" 
lista"" 
=="" 
null"" 
)"" 
throw## 
new## "
NaoEncontradoException## 0
(##0 1
)##1 2
;##2 3
return%% 
lista%% 
;%% 
}&& 	
public-- 
MentorSquad-- 
SelecionarPorId-- *
(--* +
int--+ .
id--/ 1
)--1 2
{.. 	
var// 
obj// 
=// #
_mentorSquadRepositorio// -
.//- .
SelecionarPorId//. =
(//= >
id//> @
)//@ A
;//A B
if11 
(11 
obj11 
==11 
null11 
)11 
throw22 
new22 "
NaoEncontradoException22 0
(220 1
)221 2
;222 3
return44 
obj44 
;44 
}55 	
public<< 
int<< 
Inserir<< 
(<< 
MentorSquad<< &
entity<<' -
)<<- .
{== 	
return>> #
_mentorSquadRepositorio>> *
.>>* +
Inserir>>+ 2
(>>2 3
entity>>3 9
)>>9 :
;>>: ;
}?? 	
publicGG 
MentorSquadGG 
AlterarGG "
(GG" #
intGG# &
idGG' )
,GG) *
MentorSquadGG+ 6
entityGG7 =
)GG= >
{HH 	
entityII 
.II 
IDII 
=II 
idII 
;II #
_mentorSquadRepositorioJJ #
.JJ# $
AlterarJJ$ +
(JJ+ ,
entityJJ, 2
)JJ2 3
;JJ3 4
returnLL #
_mentorSquadRepositorioLL *
.LL* +
SelecionarPorIdLL+ :
(LL: ;
idLL; =
)LL= >
;LL> ?
}MM 	
publicSS 
voidSS	 
DeletarSS 
(SS 
intSS 
idSS 
)SS 
{TT 	
varUU 
objUU 
=UU #
_mentorSquadRepositorioUU -
.UU- .
SelecionarPorIdUU. =
(UU= >
idUU> @
)UU@ A
;UUA B#
_mentorSquadRepositorioWW #
.WW# $
DeletarWW$ +
(WW+ ,
objWW, /
.WW/ 0
IDWW0 2
)WW2 3
;WW3 4
}XX 	
}YY 
}ZZ Ç
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\MentorTriboNegocio.cs
	namespace		 	
Negocio		
 
{

 
public 

class 
MentorTriboNegocio #
:$ %
INegocioBase& 2
<2 3
MentorTribo3 >
>> ?
{ 
private 
readonly "
MentorTriboRepositorio /#
_mentorTriboRepositorio0 G
;G H
public 
MentorTriboNegocio !
(! "
)" #
{ 	#
_mentorTriboRepositorio #
=$ %
new& )"
MentorTriboRepositorio* @
(@ A
)A B
;B C
} 	
public 
IEnumerable 
< 
MentorTribo &
>& '

Selecionar( 2
(2 3
)3 4
{ 	
var   
lista   
=   #
_mentorTriboRepositorio   /
.  / 0

Selecionar  0 :
(  : ;
)  ; <
;  < =
if"" 
("" 
lista"" 
=="" 
null"" 
)"" 
throw## 
new## "
NaoEncontradoException## 0
(##0 1
)##1 2
;##2 3
return%% 
lista%% 
;%% 
}&& 	
public-- 
MentorTribo-- 
SelecionarPorId-- *
(--* +
int--+ .
id--/ 1
)--1 2
{.. 	
var// 
obj// 
=// #
_mentorTriboRepositorio// -
.//- .
SelecionarPorId//. =
(//= >
id//> @
)//@ A
;//A B
if11 
(11 
obj11 
==11 
null11 
)11 
throw22 
new22 "
NaoEncontradoException22 0
(220 1
)221 2
;222 3
return44 
obj44 
;44 
}55 	
public<< 
int<< 
Inserir<< 
(<< 
MentorTribo<< &
entity<<' -
)<<- .
{== 	
return>> #
_mentorTriboRepositorio>> *
.>>* +
Inserir>>+ 2
(>>2 3
entity>>3 9
)>>9 :
;>>: ;
}?? 	
publicGG 
MentorTriboGG 
AlterarGG "
(GG" #
intGG# &
idGG' )
,GG) *
MentorTriboGG+ 6
entityGG7 =
)GG= >
{HH 	
entityII 
.II 
IDII 
=II 
idII 
;II #
_mentorTriboRepositorioJJ #
.JJ# $
AlterarJJ$ +
(JJ+ ,
entityJJ, 2
)JJ2 3
;JJ3 4
returnLL #
_mentorTriboRepositorioLL *
.LL* +
SelecionarPorIdLL+ :
(LL: ;
idLL; =
)LL= >
;LL> ?
}MM 	
publicSS 
voidSS	 
DeletarSS 
(SS 
intSS 
idSS 
)SS 
{TT 	
varUU 
objUU 
=UU #
_mentorTriboRepositorioUU -
.UU- .
SelecionarPorIdUU. =
(UU= >
idUU> @
)UU@ A
;UUA B#
_mentorTriboRepositorioWW #
.WW# $
DeletarWW$ +
(WW+ ,
objWW, /
.WW/ 0
IDWW0 2
)WW2 3
;WW3 4
}XX 	
}YY 
}ZZ —0
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\PaisNegocio.cs
	namespace 	
Negocio
 
{		 
public

 

class

 
PaisNegocio

 
:

 
INegocioBase

 *
<

* +
Pais

+ /
>

/ 0
{ 
private 
readonly 
PaisRepositorio (
_paisRepositorio) 9
;9 :
public 
PaisNegocio 
( 
) 
{ 	
_paisRepositorio 
= 
new "
PaisRepositorio# 2
(2 3
)3 4
;4 5
} 	
public 
IEnumerable 
< 
Pais 
>  

Selecionar! +
(+ ,
), -
{ 	
return 
_paisRepositorio #
.# $

Selecionar$ .
(. /
)/ 0
;0 1
}   	
public'' 
Pais'' 
SelecionarPorId'' #
(''# $
int''$ '
id''( *
)''* +
{(( 	
var)) 
obj)) 
=)) 
_paisRepositorio)) &
.))& '
SelecionarPorId))' 6
())6 7
id))7 9
)))9 :
;)): ;
if++ 
(++ 
obj++ 
==++ 
null++ 
)++ 
throw,, 
new,, "
NaoEncontradoException,, 0
(,,0 1
$",,1 3:
.N√£o foi encontrado nenhum pa√≠s com este ID: ,,3 _
{,,_ `
id,,a c
},,d e
",,e f
),,f g
;,,g h
return.. 
obj.. 
;.. 
}// 	
public66 
Pais66 
SelecionarPorNome66 %
(66% &
string66& ,
nome66- 1
)661 2
{77 	
var88 
obj88 
=88 
_paisRepositorio88 &
.88& '
SelecionarPorNome88' 8
(888 9
nome889 =
)88= >
;88> ?
if:: 
(:: 
obj:: 
==:: 
null:: 
):: 
throw;; 
new;; "
NaoEncontradoException;; 0
(;;0 1
$";;1 3<
0N√£o foi encontrado nenhum pa√≠s com este Nome: ;;3 a
{;;a b
nome;;c g
};;h i
";;i j
);;j k
;;;k l
return== 
obj== 
;== 
}>> 	
publicFF 
intFF 
InserirFF 
(FF 
PaisFF 
entityFF  &
)FF& '
{GG 	
ifII 
(II 
CamposVaziosII 
.II 
	VerificarII &
(II& '
entityII' -
)II- .
)II. /
{JJ 
throwKK 
newKK !
DadoInvalidoExceptionKK /
(KK/ 0
$strKK0 h
)KKh i
;KKi j
}LL 
ifOO 
(OO $
ExcedeLimiteDeCaracteresOO (
.OO( )
	VerificarOO) 2
(OO2 3
entityOO3 9
)OO9 :
)OO: ;
{PP 
throwQQ 
newQQ !
DadoInvalidoExceptionQQ /
(QQ/ 0
$strQQ0 o
)QQo p
;QQp q
}RR 
ifUU 
(UU 
_paisRepositorioUU  
.UU  !
SelecionarPorNomeUU! 2
(UU2 3
entityUU3 9
.UU9 :
NomeUU: >
)UU> ?
!=UU@ B
nullUUC G
)UUG H
{VV 
throwWW 
newWW 
ConflitoExceptionWW +
(WW+ ,
$"WW, .
O pa√≠s: \"WW. 8
{WW8 9
entityWW9 ?
.WW? @
NomeWW@ D
}WWD E#
\", j√° foi cadastrado!WWE [
"WW[ \
)WW\ ]
;WW] ^
}XX 
returnZZ 
_paisRepositorioZZ #
.ZZ# $
InserirZZ$ +
(ZZ+ ,
entityZZ, 2
)ZZ2 3
;ZZ3 4
}[[ 	
publiccc 
Paiscc 
Alterarcc 
(cc 
intcc 
idcc  "
,cc" #
Paiscc$ (
entitycc) /
)cc/ 0
{dd 	
ifff 
(ff 
CamposVaziosff 
.ff 
	Verificarff &
(ff& '
entityff' -
)ff- .
)ff. /
{gg 
throwhh 
newhh !
DadoInvalidoExceptionhh /
(hh/ 0
$strhh0 h
)hhh i
;hhi j
}ii 
ifll 
(ll $
ExcedeLimiteDeCaracteresll (
.ll( )
	Verificarll) 2
(ll2 3
entityll3 9
)ll9 :
)ll: ;
{mm 
thrownn 
newnn !
DadoInvalidoExceptionnn /
(nn/ 0
$strnn0 o
)nno p
;nnp q
}oo 
entityww 
.ww 
Idww 
=ww 
idww 
;ww 
_paisRepositorioxx 
.xx 
Alterarxx $
(xx$ %
entityxx% +
)xx+ ,
;xx, -
returnzz 
_paisRepositoriozz #
.zz# $
SelecionarPorIdzz$ 3
(zz3 4
idzz4 6
)zz6 7
;zz7 8
}{{ 	
public
ÅÅ 
void
ÅÅ 
Deletar
ÅÅ 
(
ÅÅ 
int
ÅÅ 
id
ÅÅ  "
)
ÅÅ" #
{
ÇÇ 	
var
ÉÉ 
obj
ÉÉ 
=
ÉÉ 
SelecionarPorId
ÉÉ %
(
ÉÉ% &
id
ÉÉ& (
)
ÉÉ( )
;
ÉÉ) *
if
ÖÖ 
(
ÖÖ 
obj
ÖÖ 
==
ÖÖ 
null
ÖÖ 
)
ÖÖ 
{
ÜÜ 
throw
áá 
new
áá $
NaoEncontradoException
áá 0
(
áá0 1
$"
áá1 3<
.N√£o foi encontrado nenhum pa√≠s com este ID: 
áá3 _
{
áá_ `
id
ááa c
}
áád e
"
ááe f
)
ááf g
;
áág h
}
àà 
_paisRepositorio
ââ 
.
ââ 
Deletar
ââ $
(
ââ$ %
obj
ââ% (
.
ââ( )
Id
ââ) +
)
ââ+ ,
;
ââ, -
}
ää 	
}
ãã 
}åå ´$
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\PapelNegocio.cs
	namespace

 	
Negocio


 
{ 
public 

class 
PapelNegocio 
: 
INegocioBase  ,
<, -
Papel- 2
>2 3
{ 
private 
readonly 
PapelRepositorio )
_papelRepositorio* ;
;; <
public 
PapelNegocio 
( 
) 
{ 	
_papelRepositorio 
= 
new  #
PapelRepositorio$ 4
(4 5
)5 6
;6 7
} 	
public 
IEnumerable 
< 
Papel  
>  !

Selecionar" ,
(, -
)- .
{   	
var!! 
lista!! 
=!! 
_papelRepositorio!! )
.!!) *

Selecionar!!* 4
(!!4 5
)!!5 6
;!!6 7
if## 
(## 
lista## 
==## 
null## 
)## 
throw$$ 
new$$ "
NaoEncontradoException$$ 0
($$0 1
)$$1 2
;$$2 3
return&& 
lista&& 
;&& 
}'' 	
public.. 
Papel.. 
SelecionarPorId.. $
(..$ %
int..% (
id..) +
)..+ ,
{// 	
var00 
obj00 
=00 
_papelRepositorio00 '
.00' (
SelecionarPorId00( 7
(007 8
id008 :
)00: ;
;00; <
if22 
(22 
obj22 
==22 
null22 
)22 
throw33 
new33 "
NaoEncontradoException33 0
(330 1
)331 2
;332 3
return55 
obj55 
;55 
}66 	
public== 
Papel== "
SelecionarPorDescricao== +
(==+ ,
string==, 2
desc==3 7
)==7 8
{>> 	
var?? 
obj?? 
=?? 
_papelRepositorio?? '
.??' ("
SelecionarPorDescricao??( >
(??> ?
desc??? C
)??C D
;??D E
ifAA 
(AA 
objAA 
==AA 
nullAA 
)AA 
throwBB 
newBB "
NaoEncontradoExceptionBB 0
(BB0 1
)BB1 2
;BB2 3
returnDD 
objDD 
;DD 
}EE 	
publicLL 
intLL 
InserirLL 
(LL 
PapelLL  
entityLL! '
)LL' (
{MM 	
varNN 
UserExistenteNN 
=NN 
_papelRepositorioNN  1
.NN1 2"
SelecionarPorDescricaoNN2 H
(NNH I
entityNNI O
.NNO P
DescNNP T
)NNT U
;NNU V
ifPP 
(PP 
UserExistentePP 
!=PP  
nullPP! %
)PP% &
{QQ 
throwRR 
newRR 
ConflitoExceptionRR +
(RR+ ,
$"RR, .*
J√° existe cadastrado o PAPEL RR. K
{RRK L
UserExistenteRRL Y
.RRY Z
DescRRZ ^
}RR^ _
, cadastrado!RR_ l
"RRl m
)RRm n
;RRn o
}SS 
returnUU 
_papelRepositorioUU $
.UU$ %
InserirUU% ,
(UU, -
entityUU- 3
)UU3 4
;UU4 5
}VV 	
public^^ 
Papel^^ 
Alterar^^ 
(^^ 
int^^  
id^^! #
,^^# $
Papel^^% *
entity^^+ 1
)^^1 2
{__ 	
entity`` 
.`` 
ID`` 
=`` 
id`` 
;`` 
_papelRepositorioaa 
.aa 
Alteraraa %
(aa% &
entityaa& ,
)aa, -
;aa- .
returncc 
_papelRepositoriocc $
.cc$ %
SelecionarPorIdcc% 4
(cc4 5
idcc5 7
)cc7 8
;cc8 9
}dd 	
publicjj 
voidjj	 
Deletarjj 
(jj 
intjj 
idjj 
)jj 
{kk 	
varll 
objll 
=ll 
_papelRepositorioll '
.ll' (
SelecionarPorIdll( 7
(ll7 8
idll8 :
)ll: ;
;ll; <
_papelRepositorionn 
.nn 
Deletarnn %
(nn% &
objnn& )
.nn) *
IDnn* ,
)nn, -
;nn- .
}oo 	
}pp 
}qq ß.
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\SquadNegocio.cs
	namespace		 	
Negocio		
 
{

 
public 

class 
SquadNegocio 
: 
INegocioBase  ,
<, -
Squad- 2
>2 3
{ 
private 
readonly 
SquadRepositorio )
_squadRepositorio* ;
;; <
public 
SquadNegocio 
( 
) 
{ 	
_squadRepositorio 
= 
new  #
SquadRepositorio$ 4
(4 5
)5 6
;6 7
} 	
public 
IEnumerable 
< 
Squad  
>  !

Selecionar" ,
(, -
)- .
{ 	
var   
lista   
=   
_squadRepositorio   )
.  ) *

Selecionar  * 4
(  4 5
)  5 6
;  6 7
if"" 
("" 
lista"" 
=="" 
null"" 
)"" 
throw## 
new## "
NaoEncontradoException## 0
(##0 1
)##1 2
;##2 3
return%% 
lista%% 
;%% 
}&& 	
public-- 
Squad-- 
SelecionarPorId-- $
(--$ %
int--% (
id--) +
)--+ ,
{.. 	
var// 
obj// 
=// 
_squadRepositorio// '
.//' (
SelecionarPorId//( 7
(//7 8
id//8 :
)//: ;
;//; <
if11 
(11 
obj11 
==11 
null11 
)11 
throw22 
new22 "
NaoEncontradoException22 0
(220 1
)221 2
;222 3
return44 
obj44 
;44 
}55 	
public<< 
Squad<< "
SelecionarPorDescricao<< +
(<<+ ,
string<<, 2
desc<<3 7
)<<7 8
{== 	
var>> 
obj>> 
=>> 
_squadRepositorio>> '
.>>' ("
SelecionarPorDescricao>>( >
(>>> ?
desc>>? C
)>>C D
;>>D E
if@@ 
(@@ 
obj@@ 
==@@ 
null@@ 
)@@ 
throwAA 
newAA "
NaoEncontradoExceptionAA 0
(AA0 1
)AA1 2
;AA2 3
returnCC 
objCC 
;CC 
}DD 	
publicKK 
intKK 
InserirKK 
(KK 
SquadKK  
entityKK! '
)KK' (
{LL 	
varMM 
UserExistenteMM 
=MM 
_squadRepositorioMM  1
.MM1 2"
SelecionarPorDescricaoMM2 H
(MMH I
entityMMI O
.MMO P
NomeMMP T
)MMT U
;MMU V
ifOO 
(OO 
UserExistenteOO 
!=OO  
nullOO! %
)OO% &
{PP 
throwQQ 
newQQ 
ConflitoExceptionQQ +
(QQ+ ,
$"QQ, .*
J√° existe cadastrado a SQUAD QQ. K
{QQK L
UserExistenteQQL Y
.QQY Z
NomeQQZ ^
}QQ^ _
, cadastrado!QQ_ l
"QQl m
)QQm n
;QQn o
}RR 
returnTT 
_squadRepositorioTT $
.TT$ %
InserirTT% ,
(TT, -
entityTT- 3
)TT3 4
;TT4 5
}UU 	
public]] 
Squad]] 
Alterar]] 
(]] 
int]]  
id]]! #
,]]# $
Squad]]% *
entity]]+ 1
)]]1 2
{^^ 	
entity__ 
.__ 
ID__ 
=__ 
id__ 
;__ 
_squadRepositorio`` 
.`` 
Alterar`` %
(``% &
entity``& ,
)``, -
;``- .
returnbb 
_squadRepositoriobb $
.bb$ %
SelecionarPorIdbb% 4
(bb4 5
idbb5 7
)bb7 8
;bb8 9
}cc 	
publickk 
Squadkk 
SairDaTribokk  
(kk  !
intkk! $
idkk% '
,kk' (
Squadkk) .
entitykk/ 5
)kk5 6
{ll 	
entitymm 
.mm 
IDmm 
=mm 
idmm 
;mm 
_squadRepositorionn 
.nn 
SairDaTribonn )
(nn) *
entitynn* 0
)nn0 1
;nn1 2
returnpp 
_squadRepositoriopp $
.pp$ %
SelecionarPorIdpp% 4
(pp4 5
idpp5 7
)pp7 8
;pp8 9
}qq 	
publicyy 
Squadyy 
AlterarAtivoInativoyy (
(yy( )
intyy) ,
idyy- /
,yy/ 0
Squadyy1 6
entityyy7 =
)yy= >
{zz 	
entity{{ 
.{{ 
ID{{ 
={{ 
id{{ 
;{{ 
_squadRepositorio|| 
.|| 
AlterarAtivoInativo|| 1
(||1 2
entity||2 8
)||8 9
;||9 :
return~~ 
_squadRepositorio~~ $
.~~$ %
SelecionarPorId~~% 4
(~~4 5
id~~5 7
)~~7 8
;~~8 9
} 	
public
ÖÖ 
void
ÖÖ	 
Deletar
ÖÖ 
(
ÖÖ 
int
ÖÖ 
id
ÖÖ 
)
ÖÖ 
{
ÜÜ 	
var
áá 
obj
áá 
=
áá 
_squadRepositorio
áá '
.
áá' (
SelecionarPorId
áá( 7
(
áá7 8
id
áá8 :
)
áá: ;
;
áá; <
_squadRepositorio
ââ 
.
ââ 
Deletar
ââ %
(
ââ% &
obj
ââ& )
.
ââ) *
ID
ââ* ,
)
ââ, -
;
ââ- .
}
ää 	
}
ãã 
}åå ì)
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\TriboNegocio.cs
	namespace		 	
Negocio		
 
{

 
public 

class 
TriboNegocio 
: 
INegocioBase  ,
<, -
Tribo- 2
>2 3
{ 
private 
readonly 
TriboRepositorio )
_triboRepositorio* ;
;; <
public 
TriboNegocio 
( 
) 
{ 	
_triboRepositorio 
= 
new  #
TriboRepositorio$ 4
(4 5
)5 6
;6 7
} 	
public 
IEnumerable 
< 
Tribo  
>  !

Selecionar" ,
(, -
)- .
{ 	
var   
lista   
=   
_triboRepositorio   )
.  ) *

Selecionar  * 4
(  4 5
)  5 6
;  6 7
if"" 
("" 
lista"" 
=="" 
null"" 
)"" 
throw## 
new## "
NaoEncontradoException## 0
(##0 1
)##1 2
;##2 3
return%% 
lista%% 
;%% 
}&& 	
public-- 
Tribo-- 
SelecionarPorId-- $
(--$ %
int--% (
id--) +
)--+ ,
{.. 	
var// 
obj// 
=// 
_triboRepositorio// '
.//' (
SelecionarPorId//( 7
(//7 8
id//8 :
)//: ;
;//; <
if11 
(11 
obj11 
==11 
null11 
)11 
throw22 
new22 "
NaoEncontradoException22 0
(220 1
)221 2
;222 3
return44 
obj44 
;44 
}55 	
public<< 
Tribo<< "
SelecionarPorDescricao<< +
(<<+ ,
string<<, 2
desc<<3 7
)<<7 8
{== 	
var>> 
obj>> 
=>> 
_triboRepositorio>> '
.>>' ("
SelecionarPorDescricao>>( >
(>>> ?
desc>>? C
)>>C D
;>>D E
if@@ 
(@@ 
obj@@ 
==@@ 
null@@ 
)@@ 
throwAA 
newAA "
NaoEncontradoExceptionAA 0
(AA0 1
)AA1 2
;AA2 3
returnCC 
objCC 
;CC 
}DD 	
publicKK 
intKK 
InserirKK 
(KK 
TriboKK  
entityKK! '
)KK' (
{LL 	
varMM 
UserExistenteMM 
=MM 
_triboRepositorioMM  1
.MM1 2"
SelecionarPorDescricaoMM2 H
(MMH I
entityMMI O
.MMO P
NomeMMP T
)MMT U
;MMU V
ifOO 
(OO 
UserExistenteOO 
!=OO  
nullOO! %
)OO% &
{PP 
throwQQ 
newQQ 
ConflitoExceptionQQ +
(QQ+ ,
$"QQ, .*
J√° existe cadastrado a TRIBO QQ. K
{QQK L
UserExistenteQQL Y
.QQY Z
NomeQQZ ^
}QQ^ _
, cadastrado!QQ_ l
"QQl m
)QQm n
;QQn o
}RR 
returnTT 
_triboRepositorioTT $
.TT$ %
InserirTT% ,
(TT, -
entityTT- 3
)TT3 4
;TT4 5
}UU 	
public]] 
Tribo]] 
Alterar]] 
(]] 
int]]  
id]]! #
,]]# $
Tribo]]% *
entity]]+ 1
)]]1 2
{^^ 	
entity__ 
.__ 
ID__ 
=__ 
id__ 
;__ 
_triboRepositorio`` 
.`` 
Alterar`` %
(``% &
entity``& ,
)``, -
;``- .
returnbb 
_triboRepositoriobb $
.bb$ %
SelecionarPorIdbb% 4
(bb4 5
idbb5 7
)bb7 8
;bb8 9
}cc 	
publickk 
Tribokk 
AlterarAtivoInativokk (
(kk( )
intkk) ,
idkk- /
,kk/ 0
Tribokk1 6
entitykk7 =
)kk= >
{ll 	
entitymm 
.mm 
IDmm 
=mm 
idmm 
;mm 
_triboRepositorionn 
.nn 
AlterarAtivoInativonn 1
(nn1 2
entitynn2 8
)nn8 9
;nn9 :
returnpp 
_triboRepositoriopp $
.pp$ %
SelecionarPorIdpp% 4
(pp4 5
idpp5 7
)pp7 8
;pp8 9
}qq 	
publicww 
voidww	 
Deletarww 
(ww 
intww 
idww 
)ww 
{xx 	
varyy 
objyy 
=yy 
_triboRepositorioyy '
.yy' (
SelecionarPorIdyy( 7
(yy7 8
idyy8 :
)yy: ;
;yy; <
_triboRepositorio{{ 
.{{ 
Deletar{{ %
({{% &
obj{{& )
.{{) *
ID{{* ,
){{, -
;{{- .
}|| 	
}}} 
}~~ –5
bC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\UnidadeNegocio.cs
	namespace

 	
Negocio


 
{ 
public 

class 
UnidadeNegocio 
:  
INegocioBase! -
<- .
Unidade. 5
>5 6
{ 
private 
readonly 
UnidadeRepositorio +
_unidadeRepositorio, ?
;? @
public 
UnidadeNegocio 
( 
) 
{ 	
_unidadeRepositorio 
=  !
new" %
UnidadeRepositorio& 8
(8 9
)9 :
;: ;
} 	
public 
IEnumerable 
< 
Unidade "
>" #

Selecionar$ .
(. /
)/ 0
{   	
return!! 
_unidadeRepositorio!! &
.!!& '

Selecionar!!' 1
(!!1 2
)!!2 3
;!!3 4
}"" 	
public)) 
Unidade)) 
SelecionarPorId)) &
())& '
int))' *
id))+ -
)))- .
{** 	
var++ 
obj++ 
=++ 
_unidadeRepositorio++ )
.++) *
SelecionarPorId++* 9
(++9 :
id++: <
)++< =
;++= >
if-- 
(-- 
obj-- 
==-- 
null-- 
)-- 
throw.. 
new.. "
NaoEncontradoException.. 0
(..0 1
$"..1 3=
1N√£o foi encontrado nenhuma unidade com este ID: ..3 c
{..c d
id..e g
}..h i
"..i j
)..j k
;..k l
return00 
obj00 
;00 
}11 	
public88 
Unidade88 
SelecionarPorNome88 (
(88( )
string88) /
nome880 4
)884 5
{99 	
var:: 
obj:: 
=:: 
_unidadeRepositorio:: )
.::) *
SelecionarPorNome::* ;
(::; <
nome::< @
)::@ A
;::A B
if<< 
(<< 
obj<< 
==<< 
null<< 
)<< 
throw== 
new== "
NaoEncontradoException== 0
(==0 1
$"==1 3?
3N√£o foi encontrado nenhuma unidade com este Nome: ==3 e
{==e f
nome==g k
}==l m
"==m n
)==n o
;==o p
return?? 
obj?? 
;?? 
}@@ 	
publicHH 
intHH 
InserirHH 
(HH 
UnidadeHH "
entityHH# )
)HH) *
{II 	
ifKK 
(KK 
CamposVaziosKK 
.KK 
	VerificarKK &
(KK& '
entityKK' -
)KK- .
)KK. /
{LL 
throwMM 
newMM !
DadoInvalidoExceptionMM /
(MM/ 0
$strMM0 h
)MMh i
;MMi j
}NN 
ifQQ 
(QQ $
ExcedeLimiteDeCaracteresQQ (
.QQ( )
	VerificarQQ) 2
(QQ2 3
entityQQ3 9
)QQ9 :
)QQ: ;
{RR 
throwSS 
newSS !
DadoInvalidoExceptionSS /
(SS/ 0
$strSS0 o
)SSo p
;SSp q
}TT 
ifWW 
(WW 
_unidadeRepositorioWW #
.WW# $
SelecionarPorNomeWW$ 5
(WW5 6
entityWW6 <
.WW< =
NomeWW= A
)WWA B
!=WWC E
nullWWF J
)WWJ K
{XX 
throwYY 
newYY 
ConflitoExceptionYY +
(YY+ ,
$"YY, .
A unidade: \"YY. ;
{YY; <
entityYY< B
.YYB C
NomeYYC G
}YYG H#
\", j√° foi cadastrada!YYH ^
"YY^ _
)YY_ `
;YY` a
}ZZ 
return\\ 
_unidadeRepositorio\\ &
.\\& '
Inserir\\' .
(\\. /
entity\\/ 5
)\\5 6
;\\6 7
}]] 	
publicee 
Unidadeee 
Alteraree 
(ee 
intee "
idee# %
,ee% &
Unidadeee' .
entityee/ 5
)ee5 6
{ff 	
ifhh 
(hh 
CamposVazioshh 
.hh 
	Verificarhh &
(hh& '
entityhh' -
)hh- .
)hh. /
{ii 
throwjj 
newjj !
DadoInvalidoExceptionjj /
(jj/ 0
$strjj0 h
)jjh i
;jji j
}kk 
ifnn 
(nn $
ExcedeLimiteDeCaracteresnn (
.nn( )
	Verificarnn) 2
(nn2 3
entitynn3 9
)nn9 :
)nn: ;
{oo 
throwpp 
newpp !
DadoInvalidoExceptionpp /
(pp/ 0
$strpp0 o
)ppo p
;ppp q
}qq 
iftt 
(tt 
_unidadeRepositoriott #
.tt# $
SelecionarPorNomett$ 5
(tt5 6
entitytt6 <
.tt< =
Nomett= A
)ttA B
!=ttC E
nullttF J
)ttJ K
{uu 
throwvv 
newvv 
ConflitoExceptionvv +
(vv+ ,
$"vv, .
A unidade: \"vv. ;
{vv; <
entityvv< B
.vvB C
NomevvC G
}vvG H#
\", j√° foi cadastrada!vvH ^
"vv^ _
)vv_ `
;vv` a
}ww 
entityyy 
.yy 
Idyy 
=yy 
idyy 
;yy 
_unidadeRepositoriozz 
.zz  
Alterarzz  '
(zz' (
entityzz( .
)zz. /
;zz/ 0
return|| 
_unidadeRepositorio|| &
.||& '
SelecionarPorId||' 6
(||6 7
id||7 9
)||9 :
;||: ;
}}} 	
public
ÉÉ 
void
ÉÉ 
Deletar
ÉÉ 
(
ÉÉ 
int
ÉÉ 
id
ÉÉ  "
)
ÉÉ" #
{
ÑÑ 	
var
ÖÖ 
obj
ÖÖ 
=
ÖÖ 
SelecionarPorId
ÖÖ %
(
ÖÖ% &
id
ÖÖ& (
)
ÖÖ( )
;
ÖÖ) *
if
áá 
(
áá 
obj
áá 
==
áá 
null
áá 
)
áá 
{
àà 
throw
ââ 
new
ââ $
NaoEncontradoException
ââ 0
(
ââ0 1
$"
ââ1 3?
1N√£o foi encontrado nenhuma unidade com este ID: 
ââ3 c
{
ââc d
id
ââe g
}
ââh i
"
ââi j
)
ââj k
;
ââk l
}
ää !
_unidadeRepositorio
ãã 
.
ãã  
Deletar
ãã  '
(
ãã' (
obj
ãã( +
.
ãã+ ,
Id
ãã, .
)
ãã. /
;
ãã/ 0
}
åå 	
}
çç 
}éé √6
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\UserNegocio.cs
	namespace 	
Negocio
 
{		 
public

 

class

 
UserNegocio

 
{ 
private 
readonly 
UserRepositorio (
_userRepositorio) 9
;9 :
private 
readonly 
LoginRepositorio )
_loginRepositorio* ;
;; <
public 
UserNegocio 
( 
) 
{ 	
_userRepositorio 
= 
new "
UserRepositorio# 2
(2 3
)3 4
;4 5
_loginRepositorio 
= 
new  #
LoginRepositorio$ 4
(4 5
)5 6
;6 7
} 	
public## 
IEnumerable## 
<## 
User## 
>##  
SelecionarTodos##! 0
(##0 1
)##1 2
{$$ 	
var%% 
lista%% 
=%% 
_userRepositorio%% (
.%%( )
SelecionarTodos%%) 8
(%%8 9
)%%9 :
;%%: ;
if'' 
('' 
lista'' 
=='' 
null'' 
)'' 
throw(( 
new(( "
NaoEncontradoException(( 0
(((0 1
)((1 2
;((2 3
return** 
lista** 
;** 
}++ 	
public11 
IEnumerable11 
<11 
User11 
>11  
SelecionarAtivos11! 1
(111 2
)112 3
{22 	
var33 
lista33 
=33 
_userRepositorio33 (
.33( )
SelecionarAtivos33) 9
(339 :
)33: ;
;33; <
if55 
(55 
lista55 
==55 
null55 
)55 
throw66 
new66 "
NaoEncontradoException66 0
(660 1
)661 2
;662 3
return88 
lista88 
;88 
}99 	
public@@ 
User@@ 
SelecionarPorId@@ #
(@@# $
int@@$ '
id@@( *
)@@* +
{AA 	
varBB 
objBB 
=BB 
_userRepositorioBB &
.BB& '
SelecionarPorIdBB' 6
(BB6 7
idBB7 9
)BB9 :
;BB: ;
ifDD 
(DD 
objDD 
==DD 
nullDD 
)DD 
throwEE 
newEE "
NaoEncontradoExceptionEE 0
(EE0 1
)EE1 2
;EE2 3
returnGG 
objGG 
;GG 
}HH 	
publicOO 
IEnumerableOO 
<OO 
UserOO 
>OO  
SelecionarPorNomeOO! 2
(OO2 3
stringOO3 9
nomeOO: >
)OO> ?
{PP 	
varQQ 
objQQ 
=QQ 
_userRepositorioQQ &
.QQ& '
SelecionarPorNomeQQ' 8
(QQ8 9
nomeQQ9 =
)QQ= >
;QQ> ?
ifSS 
(SS 
objSS 
==SS 
nullSS 
)SS 
throwTT 
newTT "
NaoEncontradoExceptionTT 0
(TT0 1
)TT1 2
;TT2 3
returnVV 
objVV 
;VV 
}WW 	
public^^ 
IEnumerable^^ 
<^^ 
User^^ 
>^^  
SelecionarPorPapel^^! 3
(^^3 4
int^^4 7
IdPapel^^8 ?
)^^? @
{__ 	
var`` 
obj`` 
=`` 
_userRepositorio`` &
.``& '
SelecionarPorPapel``' 9
(``9 :
IdPapel``: A
)``A B
;``B C
ifbb 
(bb 
objbb 
==bb 
nullbb 
)bb 
throwcc 
newcc "
NaoEncontradoExceptioncc 0
(cc0 1
)cc1 2
;cc2 3
returnee 
objee 
;ee 
}ff 	
publicmm 
intmm 
Inserirmm 
(mm 
Usermm 
entitymm  &
)mm& '
{nn 	
varoo 
UserExistenteoo 
=oo 
_loginRepositoriooo  1
.oo1 2
SelecionarPorUseroo2 C
(ooC D
entityooD J
.ooJ K
UsernameooK S
)ooS T
;ooT U
ifqq 
(qq 
UserExistenteqq 
!=qq  
nullqq! %
)qq% &
{rr 
throwss 
newss 
ConflitoExceptionss +
(ss+ ,
$"ss, .-
!J√° existe cadastrado o USU√ÅRIO ss. M
{ssM N
UserExistentessN [
.ss[ \
Usernamess\ d
}ssd e
, para outro Login!sse x
"ssx y
)ssy z
;ssz {
}tt 
returnvv 
_userRepositoriovv #
.vv# $
Inserirvv$ +
(vv+ ,
entityvv, 2
)vv2 3
;vv3 4
}ww 	
public 
User  
AlterarPerfilUsuario (
(( )
int) ,
id- /
,/ 0
User1 5
entity6 <
)< =
{
ÄÄ 	
entity
ÅÅ 
.
ÅÅ 
ID
ÅÅ 
=
ÅÅ 
id
ÅÅ 
;
ÅÅ 
_userRepositorio
ÇÇ 
.
ÇÇ "
AlterarPerfilUsuario
ÇÇ 1
(
ÇÇ1 2
entity
ÇÇ2 8
)
ÇÇ8 9
;
ÇÇ9 :
return
ÑÑ 
_userRepositorio
ÑÑ #
.
ÑÑ# $
SelecionarPorId
ÑÑ$ 3
(
ÑÑ3 4
id
ÑÑ4 6
)
ÑÑ6 7
;
ÑÑ7 8
}
ÖÖ 	
public
çç 
User
çç !
AlterarAtivoInativo
çç '
(
çç' (
int
çç( +
id
çç, .
,
çç. /
User
çç0 4
entity
çç5 ;
)
çç; <
{
éé 	
entity
èè 
.
èè 
ID
èè 
=
èè 
id
èè 
;
èè 
_userRepositorio
êê 
.
êê !
AlterarAtivoInativo
êê 0
(
êê0 1
entity
êê1 7
)
êê7 8
;
êê8 9
return
íí 
_userRepositorio
íí #
.
íí# $
SelecionarPorId
íí$ 3
(
íí3 4
id
íí4 6
)
íí6 7
;
íí7 8
}
ìì 	
public
ôô 
void
ôô	 
Deletar
ôô 
(
ôô 
int
ôô 
id
ôô 
)
ôô 
{
öö 	
var
õõ 
obj
õõ 
=
õõ 
_userRepositorio
õõ &
.
õõ& '
SelecionarPorId
õõ' 6
(
õõ6 7
id
õõ7 9
)
õõ9 :
;
õõ: ;
_userRepositorio
ùù 
.
ùù 
Deletar
ùù $
(
ùù$ %
obj
ùù% (
.
ùù( )
ID
ùù) +
)
ùù+ ,
;
ùù, -
}
ûû 	
}
üü 
}†† •
kC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\Validacoes\CamposVazios.cs
	namespace 	
Negocio
 
. 

Validacoes 
{ 
public 

class 
CamposVazios 
{ 
public 
static 
bool 
	Verificar $
($ %
Pais% )
entity* 0
)0 1
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
entity* 0
.0 1
Nome1 5
)5 6
||7 9
string: @
.@ A
IsNullOrWhiteSpaceA S
(S T
entityT Z
.Z [
Sigla[ `
)` a
)a b
{ 
return 
true 
; 
} 
return 
false 
; 
} 	
public 
static 
bool 
	Verificar $
($ %
Unidade% ,
entity- 3
)3 4
{ 	
if   
(   
string   
.   
IsNullOrWhiteSpace   )
(  ) *
Convert  * 1
.  1 2
ToString  2 :
(  : ;
entity  ; A
.  A B
IdPais  B H
)  H I
)  I J
||  K M
string!! 
.!! 
IsNullOrWhiteSpace!! )
(!!) *
entity!!* 0
.!!0 1
Nome!!1 5
)!!5 6
)!!6 7
{"" 
return## 
true## 
;## 
}$$ 
return%% 
false%% 
;%% 
}&& 	
public// 
static// 
bool// 
	Verificar// $
(//$ %
MembroSquad//% 0
entity//1 7
)//7 8
{00 	
if11 
(11 
string11 
.11 
IsNullOrWhiteSpace11 )
(11) *
Convert11* 1
.111 2
ToString112 :
(11: ;
entity11; A
.11A B
IdSquad11B I
)11I J
)11J K
||11L N
string22 
.22 
IsNullOrWhiteSpace22 )
(22) *
Convert22* 1
.221 2
ToString222 :
(22: ;
entity22; A
.22A B
IdUser22B H
)22H I
)22I J
)22J K
{33 
return44 
true44 
;44 
}55 
return66 
false66 
;66 
}77 	
public@@ 
static@@ 
bool@@ 
	Verificar@@ $
(@@$ %
MembroTribo@@% 0
entity@@1 7
)@@7 8
{AA 	
ifBB 
(BB 
stringBB 
.BB 
IsNullOrWhiteSpaceBB )
(BB) *
ConvertBB* 1
.BB1 2
ToStringBB2 :
(BB: ;
entityBB; A
.BBA B
IdTriboBBB I
)BBI J
)BBJ K
||BBL N
stringCC 
.CC 
IsNullOrWhiteSpaceCC )
(CC) *
ConvertCC* 1
.CC1 2
ToStringCC2 :
(CC: ;
entityCC; A
.CCA B
IdUserCCB H
)CCH I
)CCI J
)CCJ K
{DD 
returnEE 
trueEE 
;EE 
}FF 
returnGG 
falseGG 
;GG 
}HH 	
}JJ 
}KK ¢
wC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Negocio\Validacoes\ExcedeLimiteDeCaracteres.cs
	namespace 	
Negocio
 
. 

Validacoes 
{ 
public 

class $
ExcedeLimiteDeCaracteres )
{ 
public 
static 
bool 
	Verificar $
($ %
Pais% )
entity* 0
)0 1
{ 	
if 
( 
entity 
. 
Nome 
. 
Length "
># $
$num% '
||( *
entity+ 1
.1 2
Sigla2 7
.7 8
Length8 >
>? @
$numA B
)B C
{ 
return 
true 
; 
} 
return 
false 
; 
} 	
public$$ 
static$$ 
bool$$ 
	Verificar$$ $
($$$ %
Unidade$$% ,
entity$$- 3
)$$3 4
{%% 	
if&& 
(&& 
entity&& 
.&& 
Nome&& 
.&& 
Length&& "
>&&# $
$num&&% '
)&&' (
{'' 
return(( 
true(( 
;(( 
})) 
return++ 
false++ 
;++ 
},, 	
}.. 
}// 