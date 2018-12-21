Ô`
kC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\LoginController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
LoginController  
:! "

Controller# -
{ 
private 
readonly 
LoginNegocio %
_loginNegocio& 3
;3 4
public 
LoginController 
( 
)  
{ 	
_loginNegocio   
=   
new   
LoginNegocio    ,
(  , -
)  - .
;  . /
}!! 	
['' 	
HttpGet''	 
]'' 
[(( 	
SwaggerResponse((	 
((( 
((( 
int(( 
)(( 
HttpStatusCode(( ,
.((, -
OK((- /
,((/ 0
typeof((1 7
(((7 8
Login((8 =
)((= >
,((> ?
nameof((@ F
(((F G
HttpStatusCode((G U
.((U V
OK((V X
)((X Y
)((Y Z
]((Z [
[)) 	
SwaggerResponse))	 
()) 
()) 
int)) 
))) 
HttpStatusCode)) ,
.)), -
NotFound))- 5
)))5 6
]))6 7
public** 
IActionResult** 
Get**  
(**  !
)**! "
{++ 	
return,, 
Ok,, 
(,, 
_loginNegocio,, #
.,,# $

Selecionar,,$ .
(,,. /
),,/ 0
),,0 1
;,,1 2
}-- 	
[44 	
HttpGet44	 
]44 
[55 	
Route55	 
(55 
$str55 
)55 
]55 
[66 	
SwaggerResponse66	 
(66 
(66 
int66 
)66 
HttpStatusCode66 ,
.66, -
OK66- /
,66/ 0
typeof661 7
(667 8
Login668 =
)66= >
,66> ?
nameof66@ F
(66F G
HttpStatusCode66G U
.66U V
OK66V X
)66X Y
)66Y Z
]66Z [
[77 	
SwaggerResponse77	 
(77 
(77 
int77 
)77 
HttpStatusCode77 ,
.77, -
NotFound77- 5
)775 6
]776 7
public88 
IActionResult88 
GetId88 "
(88" #
int88# &
id88' )
)88) *
{99 	
return:: 
Ok:: 
(:: 
_loginNegocio:: #
.::# $
SelecionarPorId::$ 3
(::3 4
id::4 6
)::6 7
)::7 8
;::8 9
};; 	
[BB 	
HttpGetBB	 
]BB 
[CC 	
RouteCC	 
(CC 
$strCC  
)CC  !
]CC! "
[DD 	
SwaggerResponseDD	 
(DD 
(DD 
intDD 
)DD 
HttpStatusCodeDD ,
.DD, -
OKDD- /
,DD/ 0
typeofDD1 7
(DD7 8
LoginDD8 =
)DD= >
,DD> ?
nameofDD@ F
(DDF G
HttpStatusCodeDDG U
.DDU V
OKDDV X
)DDX Y
)DDY Z
]DDZ [
[EE 	
SwaggerResponseEE	 
(EE 
(EE 
intEE 
)EE 
HttpStatusCodeEE ,
.EE, -
NotFoundEE- 5
)EE5 6
]EE6 7
publicFF 
IActionResultFF 
GetLoginUserFF )
(FF) *
stringFF* 0
	unsernameFF1 :
)FF: ;
{GG 	
returnHH 
OkHH 
(HH 
_loginNegocioHH #
.HH# $
SelecionarPorUserHH$ 5
(HH5 6
	unsernameHH6 ?
)HH? @
)HH@ A
;HHA B
}II 	
[QQ 	
HttpGetQQ	 
]QQ 
[RR 	
RouteRR	 
(RR 
$strRR 
)RR 
]RR 
[SS 	
SwaggerResponseSS	 
(SS 
(SS 
intSS 
)SS 
HttpStatusCodeSS ,
.SS, -
OKSS- /
,SS/ 0
typeofSS1 7
(SS7 8
LoginSS8 =
)SS= >
,SS> ?
nameofSS@ F
(SSF G
HttpStatusCodeSSG U
.SSU V
OKSSV X
)SSX Y
)SSY Z
]SSZ [
[TT 	
SwaggerResponseTT	 
(TT 
(TT 
intTT 
)TT 
HttpStatusCodeTT ,
.TT, -
NotFoundTT- 5
)TT5 6
]TT6 7
publicUU 
IActionResultUU 
GetLoginUU %
(UU% &
[UU& '
	FromQueryUU' 0
]UU0 1
stringUU1 7
	unsernameUU8 A
,UUA B
[UUC D
	FromQueryUUD M
]UUM N
stringUUN T
senhaUUU Z
)UUZ [
{VV 	
returnWW 
OkWW 
(WW 
_loginNegocioWW #
.WW# $
EfetuarLoginUserWW$ 4
(WW4 5
	unsernameWW5 >
,WW> ?
senhaWW@ E
)WWE F
)WWF G
;WWG H
}XX 	
[`` 	
HttpPut``	 
]`` 
[aa 	
Routeaa	 
(aa 
$straa 
)aa 
]aa 
[bb 	
SwaggerResponsebb	 
(bb 
(bb 
intbb 
)bb 
HttpStatusCodebb ,
.bb, -
Acceptedbb- 5
,bb5 6
typeofbb7 =
(bb= >
Loginbb> C
)bbC D
,bbD E
nameofbbF L
(bbL M
HttpStatusCodebbM [
.bb[ \
Acceptedbb\ d
)bbd e
)bbe f
]bbf g
[cc 	
SwaggerResponsecc	 
(cc 
(cc 
intcc 
)cc 
HttpStatusCodecc ,
.cc, -

BadRequestcc- 7
)cc7 8
]cc8 9
[dd 	
SwaggerResponsedd	 
(dd 
(dd 
intdd 
)dd 
HttpStatusCodedd ,
.dd, -
InternalServerErrordd- @
)dd@ A
]ddA B
publicee 
IActionResultee 
PutSenhaee %
(ee% &
[ee& '
	FromRouteee' 0
]ee0 1
intee1 4
idee5 7
,ee7 8
[ee9 :
FromBodyee: B
]eeB C

LoginInputeeC M
inputeeN S
)eeS T
{ff 	
vargg 
objLogingg 
=gg 
newgg 
Logingg $
(gg$ %
)gg% &
{hh 
Senhaii 
=ii 
inputii 
.ii 
Senhaii #
}jj 
;jj 
varll 
objll 
=ll 
_loginNegocioll #
.ll# $
AlterarSenhall$ 0
(ll0 1
idll1 3
,ll3 4
objLoginll5 =
)ll= >
;ll> ?
returnmm 
Acceptedmm 
(mm 
objmm 
)mm  
;mm  !
}nn 	
[vv 	
HttpPutvv	 
]vv 
[ww 	
Routeww	 
(ww 
$strww 
)ww 
]ww  
[xx 	
SwaggerResponsexx	 
(xx 
(xx 
intxx 
)xx 
HttpStatusCodexx ,
.xx, -
Acceptedxx- 5
,xx5 6
typeofxx7 =
(xx= >
Loginxx> C
)xxC D
,xxD E
nameofxxF L
(xxL M
HttpStatusCodexxM [
.xx[ \
Acceptedxx\ d
)xxd e
)xxe f
]xxf g
[yy 	
SwaggerResponseyy	 
(yy 
(yy 
intyy 
)yy 
HttpStatusCodeyy ,
.yy, -

BadRequestyy- 7
)yy7 8
]yy8 9
[zz 	
SwaggerResponsezz	 
(zz 
(zz 
intzz 
)zz 
HttpStatusCodezz ,
.zz, -
InternalServerErrorzz- @
)zz@ A
]zzA B
public{{ 
IActionResult{{ 
PutLoginUser{{ )
({{) *
[{{* +
	FromRoute{{+ 4
]{{4 5
int{{5 8
id{{9 ;
,{{; <
[{{= >
FromBody{{> F
]{{F G

LoginInput{{G Q
input{{R W
){{W X
{|| 	
var}} 
objLogin}} 
=}} 
new}} 
Login}} $
(}}$ %
)}}% &
{~~ 
Username 
= 
input  
.  !
Username! )
}
ÄÄ 
;
ÄÄ 
var
ÇÇ 
obj
ÇÇ 
=
ÇÇ 
_loginNegocio
ÇÇ #
.
ÇÇ# $
AlterarUser
ÇÇ$ /
(
ÇÇ/ 0
id
ÇÇ0 2
,
ÇÇ2 3
objLogin
ÇÇ4 <
)
ÇÇ< =
;
ÇÇ= >
return
ÉÉ 
Accepted
ÉÉ 
(
ÉÉ 
obj
ÉÉ 
)
ÉÉ  
;
ÉÉ  !
}
ÑÑ 	
[
åå 	
HttpPut
åå	 
]
åå 
[
çç 	
Route
çç	 
(
çç 
$str
çç "
)
çç" #
]
çç# $
[
éé 	
SwaggerResponse
éé	 
(
éé 
(
éé 
int
éé 
)
éé 
HttpStatusCode
éé ,
.
éé, -
Accepted
éé- 5
,
éé5 6
typeof
éé7 =
(
éé= >
Login
éé> C
)
ééC D
,
ééD E
nameof
ééF L
(
ééL M
HttpStatusCode
ééM [
.
éé[ \
Accepted
éé\ d
)
ééd e
)
éée f
]
ééf g
[
èè 	
SwaggerResponse
èè	 
(
èè 
(
èè 
int
èè 
)
èè 
HttpStatusCode
èè ,
.
èè, -

BadRequest
èè- 7
)
èè7 8
]
èè8 9
[
êê 	
SwaggerResponse
êê	 
(
êê 
(
êê 
int
êê 
)
êê 
HttpStatusCode
êê ,
.
êê, -!
InternalServerError
êê- @
)
êê@ A
]
êêA B
public
ëë 
IActionResult
ëë 
PutAtivoInativo
ëë ,
(
ëë, -
[
ëë- .
	FromRoute
ëë. 7
]
ëë7 8
int
ëë8 ;
id
ëë< >
,
ëë> ?
[
ëë@ A
FromBody
ëëA I
]
ëëI J

LoginInput
ëëJ T
input
ëëU Z
)
ëëZ [
{
íí 	
var
ìì 
objLogin
ìì 
=
ìì 
new
ìì 
Login
ìì $
(
ìì$ %
)
ìì% &
{
îî 
Status
ïï 
=
ïï 
input
ïï 
.
ïï 
Status
ïï %
}
ññ 
;
ññ 
var
òò 
obj
òò 
=
òò 
_loginNegocio
òò #
.
òò# $!
AlterarAtivoInativo
òò$ 7
(
òò7 8
id
òò8 :
,
òò: ;
objLogin
òò< D
)
òòD E
;
òòE F
return
ôô 
Accepted
ôô 
(
ôô 
obj
ôô 
)
ôô  
;
ôô  !
}
öö 	
[
°° 	

HttpDelete
°°	 
]
°° 
[
¢¢ 	
Route
¢¢	 
(
¢¢ 
$str
¢¢ 
)
¢¢ 
]
¢¢ 
[
££ 	
SwaggerResponse
££	 
(
££ 
(
££ 
int
££ 
)
££ 
HttpStatusCode
££ ,
.
££, -
OK
££- /
)
££/ 0
]
££0 1
[
§§ 	
SwaggerResponse
§§	 
(
§§ 
(
§§ 
int
§§ 
)
§§ 
HttpStatusCode
§§ ,
.
§§, -
NotFound
§§- 5
)
§§5 6
]
§§6 7
public
•• 
IActionResult
•• 
Delete
•• #
(
••# $
[
••$ %
	FromRoute
••% .
]
••. /
int
••/ 2
id
••3 5
)
••5 6
{
¶¶ 	
_loginNegocio
ßß 
.
ßß 
Deletar
ßß !
(
ßß! "
id
ßß" $
)
ßß$ %
;
ßß% &
return
®® 
Ok
®® 
(
®® 
)
®® 
;
®® 
}
©© 	
}
™™ 
}´´ ˙
jC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\MapaController.cs
	namespace 	
Api
 
. 
Controllers 
{		 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
MapaController 
:  !

Controller" ,
{ 
private 
readonly 
MapaNegocio $
_mapaNegocio% 1
;1 2
public 
MapaController 
( 
) 
{ 	
_mapaNegocio 
= 
new 
MapaNegocio *
(* +
)+ ,
;, -
} 	
} 
} ˜>
qC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\MembroSquadController.cs
	namespace 	
Api
 
. 
Controllers 
{		 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class !
MembroSquadController &
:& '

Controller( 2
{ 
private 
readonly 
MembroSquadNegocio +
_membroNegocio, :
;: ;
public !
MembroSquadController $
($ %
)% &
{ 	
_membroNegocio 
= 
new  
MembroSquadNegocio! 3
(3 4
)4 5
;5 6
} 	
[## 	
HttpGet##	 
]## 
[$$ 	
SwaggerResponse$$	 
($$ 
($$ 
int$$ 
)$$ 
HttpStatusCode$$ ,
.$$, -
OK$$- /
,$$/ 0
typeof$$1 7
($$7 8
MembroSquad$$8 C
)$$C D
,$$D E
nameof$$F L
($$L M
HttpStatusCode$$M [
.$$[ \
OK$$\ ^
)$$^ _
)$$_ `
]$$` a
[%% 	
SwaggerResponse%%	 
(%% 
(%% 
int%% 
)%% 
HttpStatusCode%% ,
.%%, -
NotFound%%- 5
)%%5 6
]%%6 7
public&& 
IActionResult&& 
Get&&  
(&&  !
)&&! "
{'' 	
return(( 
Ok(( 
((( 
_membroNegocio(( $
.(($ %

Selecionar((% /
(((/ 0
)((0 1
)((1 2
;((2 3
})) 	
[33 	
HttpGet33	 
]33 
[44 	
Route44	 
(44 
$str44 
)44 
]44 
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
OK55- /
,55/ 0
typeof551 7
(557 8
MembroSquad558 C
)55C D
,55D E
nameof55F L
(55L M
HttpStatusCode55M [
.55[ \
OK55\ ^
)55^ _
)55_ `
]55` a
[66 	
SwaggerResponse66	 
(66 
(66 
int66 
)66 
HttpStatusCode66 ,
.66, -
NotFound66- 5
)665 6
]666 7
public77 
IActionResult77 
GetId77 "
(77" #
int77# &
id77' )
)77) *
{88 	
return99 
Ok99 
(99 
_membroNegocio99 $
.99$ %
SelecionarPorId99% 4
(994 5
id995 7
)997 8
)998 9
;999 :
}:: 	
[DD 	
HttpPostDD	 
]DD 
[EE 	
SwaggerResponseEE	 
(EE 
(EE 
intEE 
)EE 
HttpStatusCodeEE ,
.EE, -
CreatedEE- 4
,EE4 5
typeofEE6 <
(EE< =
MembroSquadEE= H
)EEH I
,EEI J
nameofEEK Q
(EEQ R
HttpStatusCodeEER `
.EE` a
CreatedEEa h
)EEh i
)EEi j
]EEj k
[FF 	
SwaggerResponseFF	 
(FF 
(FF 
intFF 
)FF 
HttpStatusCodeFF ,
.FF, -

BadRequestFF- 7
)FF7 8
]FF8 9
[GG 	
SwaggerResponseGG	 
(GG 
(GG 
intGG 
)GG 
HttpStatusCodeGG ,
.GG, -
InternalServerErrorGG- @
)GG@ A
]GGA B
publicHH 
IActionResultHH 
PostHH !
(HH! "
[HH" #
FromBodyHH# +
]HH+ ,
MembroSquadInputHH, <
inputHH= B
)HHB C
{II 	
varJJ 
	objMembroJJ 
=JJ 
newJJ 
MembroSquadJJ  +
(JJ+ ,
)JJ, -
{KK 
IdSquadLL 
=LL 
inputLL 
.LL  
IdSquadLL  '
,LL' (
IdUserMM 
=MM 
inputMM 
.MM 
IdUserMM %
}NN 
;NN 
varPP 
idMembroPP 
=PP 
_membroNegocioPP )
.PP) *
InserirPP* 1
(PP1 2
	objMembroPP2 ;
)PP; <
;PP< =
	objMembroQQ 
.QQ 
IdQQ 
=QQ 
idMembroQQ #
;QQ# $
returnRR 
CreatedAtRouteRR !
(RR! "
nameofRR" (
(RR( )
GetIdRR) .
)RR. /
,RR/ 0
newRR1 4
{RR5 6
idRR7 9
=RR: ;
idMembroRR< D
}RRE F
,RRF G
	objMembroRRH Q
)RRQ R
;RRR S
}SS 	
[^^ 	
HttpPut^^	 
]^^ 
[__ 	
Route__	 
(__ 
$str__ 
)__ 
]__ 
[`` 	
SwaggerResponse``	 
(`` 
(`` 
int`` 
)`` 
HttpStatusCode`` ,
.``, -
Accepted``- 5
,``5 6
typeof``7 =
(``= >
MembroSquad``> I
)``I J
,``J K
nameof``L R
(``R S
HttpStatusCode``S a
.``a b
Accepted``b j
)``j k
)``k l
]``l m
[aa 	
SwaggerResponseaa	 
(aa 
(aa 
intaa 
)aa 
HttpStatusCodeaa ,
.aa, -

BadRequestaa- 7
)aa7 8
]aa8 9
[bb 	
SwaggerResponsebb	 
(bb 
(bb 
intbb 
)bb 
HttpStatusCodebb ,
.bb, -
InternalServerErrorbb- @
)bb@ A
]bbA B
publiccc 
IActionResultcc 
Putcc  
(cc  !
[cc! "
	FromRoutecc" +
]cc+ ,
intcc, /
idcc0 2
,cc2 3
[cc4 5
FromBodycc5 =
]cc= >
MembroSquadInputcc> N
inputccO T
)ccT U
{dd 	
varee 
	objMembroee 
=ee 
newee 
MembroSquadee  +
(ee+ ,
)ee, -
{ff 
IdSquadgg 
=gg 
inputgg 
.gg  
IdSquadgg  '
,gg' (
IdUserhh 
=hh 
inputhh 
.hh 
IdUserhh %
}ii 
;ii 
varkk 
objkk 
=kk 
_membroNegociokk $
.kk$ %
Alterarkk% ,
(kk, -
idkk- /
,kk/ 0
	objMembrokk1 :
)kk: ;
;kk; <
returnll 
Acceptedll 
(ll 
objll 
)ll  
;ll  !
}mm 	
[vv 	

HttpDeletevv	 
]vv 
[ww 	
Routeww	 
(ww 
$strww 
)ww 
]ww 
[xx 	
SwaggerResponsexx	 
(xx 
(xx 
intxx 
)xx 
HttpStatusCodexx ,
.xx, -
OKxx- /
)xx/ 0
]xx0 1
[yy 	
SwaggerResponseyy	 
(yy 
(yy 
intyy 
)yy 
HttpStatusCodeyy ,
.yy, -
NotFoundyy- 5
)yy5 6
]yy6 7
publiczz 
IActionResultzz 
Deletezz #
(zz# $
[zz$ %
	FromRoutezz% .
]zz. /
intzz/ 2
idzz3 5
)zz5 6
{{{ 	
_membroNegocio|| 
.|| 
Deletar|| "
(||" #
id||# %
)||% &
;||& '
return}} 
Ok}} 
(}} 
)}} 
;}} 
}~~ 	
} 
}ÄÄ ì?
qC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\MembroTriboController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class !
MembroTriboController &
:' (

Controller) 3
{ 
private 
readonly 
MembroTriboNegocio +
_membroNegocio, :
;: ;
public !
MembroTriboController $
($ %
)% &
{ 	
_membroNegocio 
= 
new  
MembroTriboNegocio! 3
(3 4
)4 5
;5 6
} 	
['' 	
HttpGet''	 
]'' 
[(( 	
SwaggerResponse((	 
((( 
((( 
int(( 
)(( 
HttpStatusCode(( ,
.((, -
OK((- /
,((/ 0
typeof((1 7
(((7 8
MembroTribo((8 C
)((C D
,((D E
nameof((F L
(((L M
HttpStatusCode((M [
.(([ \
OK((\ ^
)((^ _
)((_ `
]((` a
[)) 	
SwaggerResponse))	 
()) 
()) 
int)) 
))) 
HttpStatusCode)) ,
.)), -
NotFound))- 5
)))5 6
]))6 7
public** 
IActionResult** 
Get**  
(**  !
)**! "
{++ 	
return,, 
Ok,, 
(,, 
_membroNegocio,, $
.,,$ %

Selecionar,,% /
(,,/ 0
),,0 1
),,1 2
;,,2 3
}-- 	
[77 	
HttpGet77	 
]77 
[88 	
Route88	 
(88 
$str88 
)88 
]88 
[99 	
SwaggerResponse99	 
(99 
(99 
int99 
)99 
HttpStatusCode99 ,
.99, -
OK99- /
,99/ 0
typeof991 7
(997 8
MembroTribo998 C
)99C D
,99D E
nameof99F L
(99L M
HttpStatusCode99M [
.99[ \
OK99\ ^
)99^ _
)99_ `
]99` a
[:: 	
SwaggerResponse::	 
(:: 
(:: 
int:: 
):: 
HttpStatusCode:: ,
.::, -
NotFound::- 5
)::5 6
]::6 7
public;; 
IActionResult;; 
GetId;; "
(;;" #
int;;# &
id;;' )
);;) *
{<< 	
return== 
Ok== 
(== 
_membroNegocio== $
.==$ %
SelecionarPorId==% 4
(==4 5
id==5 7
)==7 8
)==8 9
;==9 :
}>> 	
[HH 	
HttpPostHH	 
]HH 
[II 	
SwaggerResponseII	 
(II 
(II 
intII 
)II 
HttpStatusCodeII ,
.II, -
CreatedII- 4
,II4 5
typeofII6 <
(II< =
MembroTriboII= H
)IIH I
,III J
nameofIIK Q
(IIQ R
HttpStatusCodeIIR `
.II` a
CreatedIIa h
)IIh i
)IIi j
]IIj k
[JJ 	
SwaggerResponseJJ	 
(JJ 
(JJ 
intJJ 
)JJ 
HttpStatusCodeJJ ,
.JJ, -

BadRequestJJ- 7
)JJ7 8
]JJ8 9
[KK 	
SwaggerResponseKK	 
(KK 
(KK 
intKK 
)KK 
HttpStatusCodeKK ,
.KK, -
InternalServerErrorKK- @
)KK@ A
]KKA B
publicLL 
IActionResultLL 
PostLL !
(LL! "
[LL" #
FromBodyLL# +
]LL+ ,
MembroTriboInputLL, <
inputLL= B
)LLB C
{MM 	
varNN 
	objMembroNN 
=NN 
newNN 
MembroTriboNN  +
(NN+ ,
)NN, -
{OO 
IdTriboPP 
=PP 
inputPP 
.PP  
IdTriboPP  '
,PP' (
IdUserQQ 
=QQ 
inputQQ 
.QQ 
IdUserQQ %
}RR 
;RR 
varTT 
idMembroTT 
=TT 
_membroNegocioTT )
.TT) *
InserirTT* 1
(TT1 2
	objMembroTT2 ;
)TT; <
;TT< =
	objMembroUU 
.UU 
IdUU 
=UU 
idMembroUU #
;UU# $
returnVV 
CreatedAtRouteVV !
(VV! "
nameofVV" (
(VV( )
GetIdVV) .
)VV. /
,VV/ 0
newVV1 4
{VV5 6
idVV7 9
=VV: ;
idMembroVV< D
}VVE F
,VVF G
	objMembroVVH Q
)VVQ R
;VVR S
}WW 	
[bb 	
HttpPutbb	 
]bb 
[cc 	
Routecc	 
(cc 
$strcc 
)cc 
]cc 
[dd 	
SwaggerResponsedd	 
(dd 
(dd 
intdd 
)dd 
HttpStatusCodedd ,
.dd, -
Accepteddd- 5
,dd5 6
typeofdd7 =
(dd= >
MembroTribodd> I
)ddI J
,ddJ K
nameofddL R
(ddR S
HttpStatusCodeddS a
.dda b
Acceptedddb j
)ddj k
)ddk l
]ddl m
[ee 	
SwaggerResponseee	 
(ee 
(ee 
intee 
)ee 
HttpStatusCodeee ,
.ee, -

BadRequestee- 7
)ee7 8
]ee8 9
[ff 	
SwaggerResponseff	 
(ff 
(ff 
intff 
)ff 
HttpStatusCodeff ,
.ff, -
InternalServerErrorff- @
)ff@ A
]ffA B
publicgg 
IActionResultgg 
Putgg  
(gg  !
[gg! "
	FromRoutegg" +
]gg+ ,
intgg, /
idgg0 2
,gg2 3
[gg4 5
FromBodygg5 =
]gg= >
MembroTriboInputgg> N
inputggO T
)ggT U
{hh 	
varii 
	objMembroii 
=ii 
newii 
MembroTriboii  +
(ii+ ,
)ii, -
{jj 
IdTribokk 
=kk 
inputkk 
.kk  
IdTribokk  '
,kk' (
IdUserll 
=ll 
inputll 
.ll 
IdUserll %
}mm 
;mm 
varoo 
objoo 
=oo 
_membroNegociooo $
.oo$ %
Alteraroo% ,
(oo, -
idoo- /
,oo/ 0
	objMembrooo1 :
)oo: ;
;oo; <
returnpp 
Acceptedpp 
(pp 
objpp 
)pp  
;pp  !
}qq 	
[zz 	

HttpDeletezz	 
]zz 
[{{ 	
Route{{	 
({{ 
$str{{ 
){{ 
]{{ 
[|| 	
SwaggerResponse||	 
(|| 
(|| 
int|| 
)|| 
HttpStatusCode|| ,
.||, -
OK||- /
)||/ 0
]||0 1
[}} 	
SwaggerResponse}}	 
(}} 
(}} 
int}} 
)}} 
HttpStatusCode}} ,
.}}, -
NotFound}}- 5
)}}5 6
]}}6 7
public~~ 
IActionResult~~ 
Delete~~ #
(~~# $
[~~$ %
	FromRoute~~% .
]~~. /
int~~/ 2
id~~3 5
)~~5 6
{ 	
_membroNegocio
ÄÄ 
.
ÄÄ 
Deletar
ÄÄ "
(
ÄÄ" #
id
ÄÄ# %
)
ÄÄ% &
;
ÄÄ& '
return
ÅÅ 
Ok
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
}ÑÑ  ?
qC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\MentorSquadController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class !
MentorSquadController &
:' (

Controller) 3
{ 
private 
readonly 
MentorSquadNegocio +
_mentorSquadNegocio, ?
;? @
public !
MentorSquadController $
($ %
)% &
{ 	
_mentorSquadNegocio 
=  !
new" %
MentorSquadNegocio& 8
(8 9
)9 :
;: ;
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
SwaggerResponse&&	 
(&& 
(&& 
int&& 
)&& 
HttpStatusCode&& ,
.&&, -
OK&&- /
,&&/ 0
typeof&&1 7
(&&7 8
MentorSquad&&8 C
)&&C D
,&&D E
nameof&&F L
(&&L M
HttpStatusCode&&M [
.&&[ \
OK&&\ ^
)&&^ _
)&&_ `
]&&` a
['' 	
SwaggerResponse''	 
('' 
('' 
int'' 
)'' 
HttpStatusCode'' ,
.'', -
NotFound''- 5
)''5 6
]''6 7
public(( 
IActionResult(( 
Get((  
(((  !
)((! "
{)) 	
return** 
Ok** 
(** 
_mentorSquadNegocio** )
.**) *

Selecionar*** 4
(**4 5
)**5 6
)**6 7
;**7 8
}++ 	
[22 	
HttpGet22	 
]22 
[33 	
Route33	 
(33 
$str33 
)33 
]33 
[44 	
SwaggerResponse44	 
(44 
(44 
int44 
)44 
HttpStatusCode44 ,
.44, -
OK44- /
,44/ 0
typeof441 7
(447 8
MentorSquad448 C
)44C D
,44D E
nameof44F L
(44L M
HttpStatusCode44M [
.44[ \
OK44\ ^
)44^ _
)44_ `
]44` a
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
NotFound55- 5
)555 6
]556 7
public66 
IActionResult66 
GetId66 "
(66" #
int66# &
id66' )
)66) *
{77 	
return88 
Ok88 
(88 
_mentorSquadNegocio88 )
.88) *
SelecionarPorId88* 9
(889 :
id88: <
)88< =
)88= >
;88> ?
}99 	
[@@ 	
HttpPost@@	 
]@@ 
[AA 	
SwaggerResponseAA	 
(AA 
(AA 
intAA 
)AA 
HttpStatusCodeAA ,
.AA, -
CreatedAA- 4
,AA4 5
typeofAA6 <
(AA< =
MentorSquadAA= H
)AAH I
,AAI J
nameofAAK Q
(AAQ R
HttpStatusCodeAAR `
.AA` a
CreatedAAa h
)AAh i
)AAi j
]AAj k
[BB 	
SwaggerResponseBB	 
(BB 
(BB 
intBB 
)BB 
HttpStatusCodeBB ,
.BB, -

BadRequestBB- 7
)BB7 8
]BB8 9
[CC 	
SwaggerResponseCC	 
(CC 
(CC 
intCC 
)CC 
HttpStatusCodeCC ,
.CC, -
InternalServerErrorCC- @
)CC@ A
]CCA B
publicDD 
IActionResultDD 
PostDD !
(DD! "
[DD" #
FromBodyDD# +
]DD+ ,
MentorSquadInputDD, <
inputDD= B
)DDB C
{EE 	
varFF 
objMentorSquadFF 
=FF  
newFF! $
MentorSquadFF% 0
(FF0 1
)FF1 2
{GG 
IdSquadHH 
=HH 
inputHH 
.HH  
IdSquadHH  '
,HH' (
IdUserII 
=II 
inputII 
.II 
IdUserII %
}JJ 
;JJ 
varLL 
idMentorSquadLL 
=LL 
_mentorSquadNegocioLL  3
.LL3 4
InserirLL4 ;
(LL; <
objMentorSquadLL< J
)LLJ K
;LLK L
objMentorSquadMM 
.MM 
IDMM 
=MM 
idMentorSquadMM  -
;MM- .
returnNN 
CreatedAtRouteNN !
(NN! "
nameofNN" (
(NN( )
GetIdNN) .
)NN. /
,NN/ 0
newNN1 4
{NN5 6
idNN7 9
=NN: ;
idMentorSquadNN< I
}NNJ K
,NNK L
objMentorSquadNNM [
)NN[ \
;NN\ ]
}OO 	
[WW 	
HttpPutWW	 
]WW 
[XX 	
RouteXX	 
(XX 
$strXX 
)XX 
]XX 
[YY 	
SwaggerResponseYY	 
(YY 
(YY 
intYY 
)YY 
HttpStatusCodeYY ,
.YY, -
AcceptedYY- 5
,YY5 6
typeofYY7 =
(YY= >
MentorSquadYY> I
)YYI J
,YYJ K
nameofYYL R
(YYR S
HttpStatusCodeYYS a
.YYa b
AcceptedYYb j
)YYj k
)YYk l
]YYl m
[ZZ 	
SwaggerResponseZZ	 
(ZZ 
(ZZ 
intZZ 
)ZZ 
HttpStatusCodeZZ ,
.ZZ, -

BadRequestZZ- 7
)ZZ7 8
]ZZ8 9
[[[ 	
SwaggerResponse[[	 
([[ 
([[ 
int[[ 
)[[ 
HttpStatusCode[[ ,
.[[, -
InternalServerError[[- @
)[[@ A
][[A B
public\\ 
IActionResult\\ 
PutPapel\\ %
(\\% &
[\\& '
	FromRoute\\' 0
]\\0 1
int\\1 4
id\\5 7
,\\7 8
[\\9 :
FromBody\\: B
]\\B C
MentorSquadInput\\C S
input\\T Y
)\\Y Z
{]] 	
var^^ 
objMentorSquad^^ 
=^^  
new^^! $
MentorSquad^^% 0
(^^0 1
)^^1 2
{__ 
IdSquad`` 
=`` 
input`` 
.``  
IdSquad``  '
,``' (
IdUseraa 
=aa 
inputaa 
.aa 
IdUseraa %
}bb 
;bb 
vardd 
objdd 
=dd 
_mentorSquadNegociodd )
.dd) *
Alterardd* 1
(dd1 2
iddd2 4
,dd4 5
objMentorSquaddd6 D
)ddD E
;ddE F
returnee 
Acceptedee 
(ee 
objee 
)ee  
;ee  !
}ff 	
[mm 	

HttpDeletemm	 
]mm 
[nn 	
Routenn	 
(nn 
$strnn 
)nn 
]nn 
[oo 	
SwaggerResponseoo	 
(oo 
(oo 
intoo 
)oo 
HttpStatusCodeoo ,
.oo, -
OKoo- /
)oo/ 0
]oo0 1
[pp 	
SwaggerResponsepp	 
(pp 
(pp 
intpp 
)pp 
HttpStatusCodepp ,
.pp, -
NotFoundpp- 5
)pp5 6
]pp6 7
publicqq 
IActionResultqq 
Deleteqq #
(qq# $
[qq$ %
	FromRouteqq% .
]qq. /
intqq/ 2
idqq3 5
)qq5 6
{rr 	
_mentorSquadNegocioss 
.ss  
Deletarss  '
(ss' (
idss( *
)ss* +
;ss+ ,
returntt 
Oktt 
(tt 
)tt 
;tt 
}uu 	
}vv 
}ww  ?
qC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\MentorTriboController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class !
MentorTriboController &
:' (

Controller) 3
{ 
private 
readonly 
MentorTriboNegocio +
_mentorTriboNegocio, ?
;? @
public !
MentorTriboController $
($ %
)% &
{ 	
_mentorTriboNegocio 
=  !
new" %
MentorTriboNegocio& 8
(8 9
)9 :
;: ;
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
SwaggerResponse&&	 
(&& 
(&& 
int&& 
)&& 
HttpStatusCode&& ,
.&&, -
OK&&- /
,&&/ 0
typeof&&1 7
(&&7 8
MentorTribo&&8 C
)&&C D
,&&D E
nameof&&F L
(&&L M
HttpStatusCode&&M [
.&&[ \
OK&&\ ^
)&&^ _
)&&_ `
]&&` a
['' 	
SwaggerResponse''	 
('' 
('' 
int'' 
)'' 
HttpStatusCode'' ,
.'', -
NotFound''- 5
)''5 6
]''6 7
public(( 
IActionResult(( 
Get((  
(((  !
)((! "
{)) 	
return** 
Ok** 
(** 
_mentorTriboNegocio** )
.**) *

Selecionar*** 4
(**4 5
)**5 6
)**6 7
;**7 8
}++ 	
[22 	
HttpGet22	 
]22 
[33 	
Route33	 
(33 
$str33 
)33 
]33 
[44 	
SwaggerResponse44	 
(44 
(44 
int44 
)44 
HttpStatusCode44 ,
.44, -
OK44- /
,44/ 0
typeof441 7
(447 8
MentorTribo448 C
)44C D
,44D E
nameof44F L
(44L M
HttpStatusCode44M [
.44[ \
OK44\ ^
)44^ _
)44_ `
]44` a
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
NotFound55- 5
)555 6
]556 7
public66 
IActionResult66 
GetId66 "
(66" #
int66# &
id66' )
)66) *
{77 	
return88 
Ok88 
(88 
_mentorTriboNegocio88 )
.88) *
SelecionarPorId88* 9
(889 :
id88: <
)88< =
)88= >
;88> ?
}99 	
[@@ 	
HttpPost@@	 
]@@ 
[AA 	
SwaggerResponseAA	 
(AA 
(AA 
intAA 
)AA 
HttpStatusCodeAA ,
.AA, -
CreatedAA- 4
,AA4 5
typeofAA6 <
(AA< =
MentorTriboAA= H
)AAH I
,AAI J
nameofAAK Q
(AAQ R
HttpStatusCodeAAR `
.AA` a
CreatedAAa h
)AAh i
)AAi j
]AAj k
[BB 	
SwaggerResponseBB	 
(BB 
(BB 
intBB 
)BB 
HttpStatusCodeBB ,
.BB, -

BadRequestBB- 7
)BB7 8
]BB8 9
[CC 	
SwaggerResponseCC	 
(CC 
(CC 
intCC 
)CC 
HttpStatusCodeCC ,
.CC, -
InternalServerErrorCC- @
)CC@ A
]CCA B
publicDD 
IActionResultDD 
PostDD !
(DD! "
[DD" #
FromBodyDD# +
]DD+ ,
MentorTriboInputDD, <
inputDD= B
)DDB C
{EE 	
varFF 
objMentorTriboFF 
=FF  
newFF! $
MentorTriboFF% 0
(FF0 1
)FF1 2
{GG 
IdTriboHH 
=HH 
inputHH 
.HH  
IdTriboHH  '
,HH' (
IdUserII 
=II 
inputII 
.II 
IdUserII %
}JJ 
;JJ 
varLL 
idMentorTriboLL 
=LL 
_mentorTriboNegocioLL  3
.LL3 4
InserirLL4 ;
(LL; <
objMentorTriboLL< J
)LLJ K
;LLK L
objMentorTriboMM 
.MM 
IDMM 
=MM 
idMentorTriboMM  -
;MM- .
returnNN 
CreatedAtRouteNN !
(NN! "
nameofNN" (
(NN( )
GetIdNN) .
)NN. /
,NN/ 0
newNN1 4
{NN5 6
idNN7 9
=NN: ;
idMentorTriboNN< I
}NNJ K
,NNK L
objMentorTriboNNM [
)NN[ \
;NN\ ]
}OO 	
[WW 	
HttpPutWW	 
]WW 
[XX 	
RouteXX	 
(XX 
$strXX 
)XX 
]XX 
[YY 	
SwaggerResponseYY	 
(YY 
(YY 
intYY 
)YY 
HttpStatusCodeYY ,
.YY, -
AcceptedYY- 5
,YY5 6
typeofYY7 =
(YY= >
MentorTriboYY> I
)YYI J
,YYJ K
nameofYYL R
(YYR S
HttpStatusCodeYYS a
.YYa b
AcceptedYYb j
)YYj k
)YYk l
]YYl m
[ZZ 	
SwaggerResponseZZ	 
(ZZ 
(ZZ 
intZZ 
)ZZ 
HttpStatusCodeZZ ,
.ZZ, -

BadRequestZZ- 7
)ZZ7 8
]ZZ8 9
[[[ 	
SwaggerResponse[[	 
([[ 
([[ 
int[[ 
)[[ 
HttpStatusCode[[ ,
.[[, -
InternalServerError[[- @
)[[@ A
][[A B
public\\ 
IActionResult\\ 
PutPapel\\ %
(\\% &
[\\& '
	FromRoute\\' 0
]\\0 1
int\\1 4
id\\5 7
,\\7 8
[\\9 :
FromBody\\: B
]\\B C
MentorTriboInput\\C S
input\\T Y
)\\Y Z
{]] 	
var^^ 
objMentorTribo^^ 
=^^  
new^^! $
MentorTribo^^% 0
(^^0 1
)^^1 2
{__ 
IdTribo`` 
=`` 
input`` 
.``  
IdTribo``  '
,``' (
IdUseraa 
=aa 
inputaa 
.aa 
IdUseraa %
}bb 
;bb 
vardd 
objdd 
=dd 
_mentorTriboNegociodd )
.dd) *
Alterardd* 1
(dd1 2
iddd2 4
,dd4 5
objMentorTribodd6 D
)ddD E
;ddE F
returnee 
Acceptedee 
(ee 
objee 
)ee  
;ee  !
}ff 	
[mm 	

HttpDeletemm	 
]mm 
[nn 	
Routenn	 
(nn 
$strnn 
)nn 
]nn 
[oo 	
SwaggerResponseoo	 
(oo 
(oo 
intoo 
)oo 
HttpStatusCodeoo ,
.oo, -
OKoo- /
)oo/ 0
]oo0 1
[pp 	
SwaggerResponsepp	 
(pp 
(pp 
intpp 
)pp 
HttpStatusCodepp ,
.pp, -
NotFoundpp- 5
)pp5 6
]pp6 7
publicqq 
IActionResultqq 
Deleteqq #
(qq# $
[qq$ %
	FromRouteqq% .
]qq. /
intqq/ 2
idqq3 5
)qq5 6
{rr 	
_mentorTriboNegocioss 
.ss  
Deletarss  '
(ss' (
idss( *
)ss* +
;ss+ ,
returntt 
Oktt 
(tt 
)tt 
;tt 
}uu 	
}vv 
}ww ∫G
jC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\PaisController.cs
	namespace 	
Api
 
. 
Controllers 
{		 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PaisController 
:  !

Controller" ,
{ 
private 
readonly 
PaisNegocio $
_paisNegocio% 1
;1 2
public 
PaisController 
( 
) 
{ 	
_paisNegocio 
= 
new 
PaisNegocio *
(* +
)+ ,
;, -
} 	
[## 	
HttpGet##	 
]## 
[$$ 	
SwaggerResponse$$	 
($$ 
($$ 
int$$ 
)$$ 
HttpStatusCode$$ ,
.$$, -
OK$$- /
,$$/ 0
typeof$$1 7
($$7 8
Pais$$8 <
)$$< =
,$$= >
nameof$$? E
($$E F
HttpStatusCode$$F T
.$$T U
OK$$U W
)$$W X
)$$X Y
]$$Y Z
[%% 	
SwaggerResponse%%	 
(%% 
(%% 
int%% 
)%% 
HttpStatusCode%% ,
.%%, -
NotFound%%- 5
)%%5 6
]%%6 7
public&& 
IActionResult&& 
Get&&  
(&&  !
)&&! "
{'' 	
return(( 
Ok(( 
((( 
_paisNegocio(( "
.((" #

Selecionar((# -
(((- .
)((. /
)((/ 0
;((0 1
})) 	
[33 	
HttpGet33	 
]33 
[44 	
Route44	 
(44 
$str44 
)44 
]44 
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
OK55- /
,55/ 0
typeof551 7
(557 8
Pais558 <
)55< =
,55= >
nameof55? E
(55E F
HttpStatusCode55F T
.55T U
OK55U W
)55W X
)55X Y
]55Y Z
[66 	
SwaggerResponse66	 
(66 
(66 
int66 
)66 
HttpStatusCode66 ,
.66, -
NotFound66- 5
)665 6
]666 7
public77 
IActionResult77 
GetId77 "
(77" #
int77# &
id77' )
)77) *
{88 	
return99 
Ok99 
(99 
_paisNegocio99 "
.99" #
SelecionarPorId99# 2
(992 3
id993 5
)995 6
)996 7
;997 8
}:: 	
[DD 	
HttpGetDD	 
]DD 
[EE 	
RouteEE	 
(EE 
$strEE 
)EE 
]EE 
[FF 	
SwaggerResponseFF	 
(FF 
(FF 
intFF 
)FF 
HttpStatusCodeFF ,
.FF, -
OKFF- /
,FF/ 0
typeofFF1 7
(FF7 8
PaisFF8 <
)FF< =
,FF= >
nameofFF? E
(FFE F
HttpStatusCodeFFF T
.FFT U
OKFFU W
)FFW X
)FFX Y
]FFY Z
[GG 	
SwaggerResponseGG	 
(GG 
(GG 
intGG 
)GG 
HttpStatusCodeGG ,
.GG, -
NotFoundGG- 5
)GG5 6
]GG6 7
publicHH 
IActionResultHH 
GetNomeHH $
(HH$ %
stringHH% +
nomeHH, 0
)HH0 1
{II 	
returnJJ 
OkJJ 
(JJ 
_paisNegocioJJ "
.JJ" #
SelecionarPorNomeJJ# 4
(JJ4 5
nomeJJ5 9
)JJ9 :
)JJ: ;
;JJ; <
}KK 	
[UU 	
HttpPostUU	 
]UU 
[VV 	
SwaggerResponseVV	 
(VV 
(VV 
intVV 
)VV 
HttpStatusCodeVV ,
.VV, -
CreatedVV- 4
,VV4 5
typeofVV6 <
(VV< =
PaisVV= A
)VVA B
,VVB C
nameofVVD J
(VVJ K
HttpStatusCodeVVK Y
.VVY Z
CreatedVVZ a
)VVa b
)VVb c
]VVc d
[WW 	
SwaggerResponseWW	 
(WW 
(WW 
intWW 
)WW 
HttpStatusCodeWW ,
.WW, -

BadRequestWW- 7
)WW7 8
]WW8 9
[XX 	
SwaggerResponseXX	 
(XX 
(XX 
intXX 
)XX 
HttpStatusCodeXX ,
.XX, -
InternalServerErrorXX- @
)XX@ A
]XXA B
publicYY 
IActionResultYY 
PostYY !
(YY! "
[YY" #
FromBodyYY# +
]YY+ ,
	PaisInputYY, 5
inputYY6 ;
)YY; <
{ZZ 	
var[[ 
objPais[[ 
=[[ 
new[[ 
Pais[[ "
([[" #
)[[# $
{\\ 
Nome]] 
=]] 
input]] 
.]] 
Nome]] !
,]]! "
Sigla^^ 
=^^ 
input^^ 
.^^ 
Sigla^^ #
}__ 
;__ 
varaa 
idPaisaa 
=aa 
_paisNegocioaa %
.aa% &
Inseriraa& -
(aa- .
objPaisaa. 5
)aa5 6
;aa6 7
objPaisbb 
.bb 
Idbb 
=bb 
idPaisbb 
;bb  
returncc 
CreatedAtRoutecc !
(cc! "
nameofcc" (
(cc( )
GetIdcc) .
)cc. /
,cc/ 0
newcc1 4
{cc5 6
idcc7 9
=cc: ;
idPaiscc< B
}ccC D
,ccD E
objPaisccF M
)ccM N
;ccN O
}dd 	
[oo 	
HttpPutoo	 
]oo 
[pp 	
Routepp	 
(pp 
$strpp 
)pp 
]pp 
[qq 	
SwaggerResponseqq	 
(qq 
(qq 
intqq 
)qq 
HttpStatusCodeqq ,
.qq, -
Acceptedqq- 5
,qq5 6
typeofqq7 =
(qq= >
Paisqq> B
)qqB C
,qqC D
nameofqqE K
(qqK L
HttpStatusCodeqqL Z
.qqZ [
Acceptedqq[ c
)qqc d
)qqd e
]qqe f
[rr 	
SwaggerResponserr	 
(rr 
(rr 
intrr 
)rr 
HttpStatusCoderr ,
.rr, -

BadRequestrr- 7
)rr7 8
]rr8 9
[ss 	
SwaggerResponsess	 
(ss 
(ss 
intss 
)ss 
HttpStatusCodess ,
.ss, -
InternalServerErrorss- @
)ss@ A
]ssA B
publictt 
IActionResulttt 
Puttt  
(tt  !
[tt! "
	FromRoutett" +
]tt+ ,
inttt, /
idtt0 2
,tt2 3
[tt4 5
FromBodytt5 =
]tt= >
	PaisInputtt> G
inputttH M
)ttM N
{uu 	
varvv 
objPaisvv 
=vv 
newvv 
Paisvv "
(vv" #
)vv# $
{ww 
Nomexx 
=xx 
inputxx 
.xx 
Nomexx !
,xx! "
Siglayy 
=yy 
inputyy 
.yy 
Siglayy #
}zz 
;zz 
var|| 
obj|| 
=|| 
_paisNegocio|| "
.||" #
Alterar||# *
(||* +
id||+ -
,||- .
objPais||/ 6
)||6 7
;||7 8
return}} 
Accepted}} 
(}} 
obj}} 
)}}  
;}}  !
}~~ 	
[
áá 	

HttpDelete
áá	 
]
áá 
[
àà 	
Route
àà	 
(
àà 
$str
àà 
)
àà 
]
àà 
[
ââ 	
SwaggerResponse
ââ	 
(
ââ 
(
ââ 
int
ââ 
)
ââ 
HttpStatusCode
ââ ,
.
ââ, -
OK
ââ- /
)
ââ/ 0
]
ââ0 1
[
ää 	
SwaggerResponse
ää	 
(
ää 
(
ää 
int
ää 
)
ää 
HttpStatusCode
ää ,
.
ää, -
NotFound
ää- 5
)
ää5 6
]
ää6 7
public
ãã 
IActionResult
ãã 
Delete
ãã #
(
ãã# $
[
ãã$ %
	FromRoute
ãã% .
]
ãã. /
int
ãã/ 2
id
ãã3 5
)
ãã5 6
{
åå 	
_paisNegocio
çç 
.
çç 
Deletar
çç  
(
çç  !
id
çç! #
)
çç# $
;
çç$ %
return
éé 
Ok
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
}
êê 
}ëë àI
kC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\PapelController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PapelController  
:! "

Controller# -
{ 
private 
readonly 
PapelNegocio %
_papelNegocio& 3
;3 4
public 
PapelController 
( 
)  
{ 	
_papelNegocio 
= 
new 
PapelNegocio  ,
(, -
)- .
;. /
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
SwaggerResponse&&	 
(&& 
(&& 
int&& 
)&& 
HttpStatusCode&& ,
.&&, -
OK&&- /
,&&/ 0
typeof&&1 7
(&&7 8
Papel&&8 =
)&&= >
,&&> ?
nameof&&@ F
(&&F G
HttpStatusCode&&G U
.&&U V
OK&&V X
)&&X Y
)&&Y Z
]&&Z [
['' 	
SwaggerResponse''	 
('' 
('' 
int'' 
)'' 
HttpStatusCode'' ,
.'', -
NotFound''- 5
)''5 6
]''6 7
public(( 
IActionResult(( 
Get((  
(((  !
)((! "
{)) 	
return** 
Ok** 
(** 
_papelNegocio** #
.**# $

Selecionar**$ .
(**. /
)**/ 0
)**0 1
;**1 2
}++ 	
[22 	
HttpGet22	 
]22 
[33 	
Route33	 
(33 
$str33 
)33 
]33 
[44 	
SwaggerResponse44	 
(44 
(44 
int44 
)44 
HttpStatusCode44 ,
.44, -
OK44- /
,44/ 0
typeof441 7
(447 8
Papel448 =
)44= >
,44> ?
nameof44@ F
(44F G
HttpStatusCode44G U
.44U V
OK44V X
)44X Y
)44Y Z
]44Z [
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
NotFound55- 5
)555 6
]556 7
public66 
IActionResult66 
GetId66 "
(66" #
int66# &
id66' )
)66) *
{77 	
return88 
Ok88 
(88 
_papelNegocio88 #
.88# $
SelecionarPorId88$ 3
(883 4
id884 6
)886 7
)887 8
;888 9
}99 	
[@@ 	
HttpGet@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA !
)AA! "
]AA" #
[BB 	
SwaggerResponseBB	 
(BB 
(BB 
intBB 
)BB 
HttpStatusCodeBB ,
.BB, -
OKBB- /
,BB/ 0
typeofBB1 7
(BB7 8
PapelBB8 =
)BB= >
,BB> ?
nameofBB@ F
(BBF G
HttpStatusCodeBBG U
.BBU V
OKBBV X
)BBX Y
)BBY Z
]BBZ [
[CC 	
SwaggerResponseCC	 
(CC 
(CC 
intCC 
)CC 
HttpStatusCodeCC ,
.CC, -
NotFoundCC- 5
)CC5 6
]CC6 7
publicDD 
IActionResultDD 
GetPapelDD %
(DD% &
stringDD& ,
descDD- 1
)DD1 2
{EE 	
returnFF 
OkFF 
(FF 
_papelNegocioFF #
.FF# $"
SelecionarPorDescricaoFF$ :
(FF: ;
descFF; ?
)FF? @
)FF@ A
;FFA B
}GG 	
[NN 	
HttpPostNN	 
]NN 
[OO 	
SwaggerResponseOO	 
(OO 
(OO 
intOO 
)OO 
HttpStatusCodeOO ,
.OO, -
CreatedOO- 4
,OO4 5
typeofOO6 <
(OO< =
PapelOO= B
)OOB C
,OOC D
nameofOOE K
(OOK L
HttpStatusCodeOOL Z
.OOZ [
CreatedOO[ b
)OOb c
)OOc d
]OOd e
[PP 	
SwaggerResponsePP	 
(PP 
(PP 
intPP 
)PP 
HttpStatusCodePP ,
.PP, -

BadRequestPP- 7
)PP7 8
]PP8 9
[QQ 	
SwaggerResponseQQ	 
(QQ 
(QQ 
intQQ 
)QQ 
HttpStatusCodeQQ ,
.QQ, -
InternalServerErrorQQ- @
)QQ@ A
]QQA B
publicRR 
IActionResultRR 
PostRR !
(RR! "
[RR" #
FromBodyRR# +
]RR+ ,

PapelInputRR, 6
InputRR7 <
)RR< =
{SS 	
varTT 
objPapelTT 
=TT 
newTT 
PapelTT $
(TT$ %
)TT% &
{UU 
DescVV 
=VV 
InputVV 
.VV 
DescVV !
,VV! "
SiglaWW 
=WW 
InputWW 
.WW 
SiglaWW #
,WW# $
NivelXX 
=XX 
InputXX 
.XX 
NivelXX #
}YY 
;YY 
var[[ 
idPapel[[ 
=[[ 
_papelNegocio[[ '
.[[' (
Inserir[[( /
([[/ 0
objPapel[[0 8
)[[8 9
;[[9 :
objPapel\\ 
.\\ 
ID\\ 
=\\ 
idPapel\\ !
;\\! "
return]] 
CreatedAtRoute]] !
(]]! "
nameof]]" (
(]]( )
GetId]]) .
)]]. /
,]]/ 0
new]]1 4
{]]5 6
id]]7 9
=]]: ;
idPapel]]< C
}]]D E
,]]E F
objPapel]]G O
)]]O P
;]]P Q
}^^ 	
[ff 	
HttpPutff	 
]ff 
[gg 	
Routegg	 
(gg 
$strgg 
)gg 
]gg 
[hh 	
SwaggerResponsehh	 
(hh 
(hh 
inthh 
)hh 
HttpStatusCodehh ,
.hh, -
Acceptedhh- 5
,hh5 6
typeofhh7 =
(hh= >
Papelhh> C
)hhC D
,hhD E
nameofhhF L
(hhL M
HttpStatusCodehhM [
.hh[ \
Acceptedhh\ d
)hhd e
)hhe f
]hhf g
[ii 	
SwaggerResponseii	 
(ii 
(ii 
intii 
)ii 
HttpStatusCodeii ,
.ii, -

BadRequestii- 7
)ii7 8
]ii8 9
[jj 	
SwaggerResponsejj	 
(jj 
(jj 
intjj 
)jj 
HttpStatusCodejj ,
.jj, -
InternalServerErrorjj- @
)jj@ A
]jjA B
publickk 
IActionResultkk 
PutPapelkk %
(kk% &
[kk& '
	FromRoutekk' 0
]kk0 1
intkk1 4
idkk5 7
,kk7 8
[kk9 :
FromBodykk: B
]kkB C

PapelInputkkC M
inputkkN S
)kkS T
{ll 	
varmm 
objPapelmm 
=mm 
newmm 
Papelmm $
(mm$ %
)mm% &
{nn 
Descoo 
=oo 
inputoo 
.oo 
Descoo !
,oo! "
Siglapp 
=pp 
inputpp 
.pp 
Siglapp #
,pp# $
Nivelqq 
=qq 
inputqq 
.qq 
Nivelqq #
}rr 
;rr 
vartt 
objtt 
=tt 
_papelNegociott #
.tt# $
Alterartt$ +
(tt+ ,
idtt, .
,tt. /
objPapeltt0 8
)tt8 9
;tt9 :
returnuu 
Accepteduu 
(uu 
objuu 
)uu  
;uu  !
}vv 	
[}} 	

HttpDelete}}	 
]}} 
[~~ 	
Route~~	 
(~~ 
$str~~ 
)~~ 
]~~ 
[ 	
SwaggerResponse	 
( 
( 
int 
) 
HttpStatusCode ,
., -
OK- /
)/ 0
]0 1
[
ÄÄ 	
SwaggerResponse
ÄÄ	 
(
ÄÄ 
(
ÄÄ 
int
ÄÄ 
)
ÄÄ 
HttpStatusCode
ÄÄ ,
.
ÄÄ, -
NotFound
ÄÄ- 5
)
ÄÄ5 6
]
ÄÄ6 7
public
ÅÅ 
IActionResult
ÅÅ 
Delete
ÅÅ #
(
ÅÅ# $
[
ÅÅ$ %
	FromRoute
ÅÅ% .
]
ÅÅ. /
int
ÅÅ/ 2
id
ÅÅ3 5
)
ÅÅ5 6
{
ÇÇ 	
_papelNegocio
ÉÉ 
.
ÉÉ 
Deletar
ÉÉ !
(
ÉÉ! "
id
ÉÉ" $
)
ÉÉ$ %
;
ÉÉ% &
return
ÑÑ 
Ok
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
}
ÜÜ 
}áá Íj
kC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\SquadController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
SquadController  
:! "

Controller# -
{ 
private 
readonly 
SquadNegocio %
_squadNegocio& 3
;3 4
public 
SquadController 
( 
)  
{ 	
_squadNegocio 
= 
new 
SquadNegocio  ,
(, -
)- .
;. /
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
SwaggerResponse&&	 
(&& 
(&& 
int&& 
)&& 
HttpStatusCode&& ,
.&&, -
OK&&- /
,&&/ 0
typeof&&1 7
(&&7 8
Squad&&8 =
)&&= >
,&&> ?
nameof&&@ F
(&&F G
HttpStatusCode&&G U
.&&U V
OK&&V X
)&&X Y
)&&Y Z
]&&Z [
['' 	
SwaggerResponse''	 
('' 
('' 
int'' 
)'' 
HttpStatusCode'' ,
.'', -
NotFound''- 5
)''5 6
]''6 7
public(( 
IActionResult(( 
Get((  
(((  !
)((! "
{)) 	
return** 
Ok** 
(** 
_squadNegocio** #
.**# $

Selecionar**$ .
(**. /
)**/ 0
)**0 1
;**1 2
}++ 	
[22 	
HttpGet22	 
]22 
[33 	
Route33	 
(33 
$str33 
)33 
]33 
[44 	
SwaggerResponse44	 
(44 
(44 
int44 
)44 
HttpStatusCode44 ,
.44, -
OK44- /
,44/ 0
typeof441 7
(447 8
Squad448 =
)44= >
,44> ?
nameof44@ F
(44F G
HttpStatusCode44G U
.44U V
OK44V X
)44X Y
)44Y Z
]44Z [
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
NotFound55- 5
)555 6
]556 7
public66 
IActionResult66 
GetId66 "
(66" #
int66# &
id66' )
)66) *
{77 	
return88 
Ok88 
(88 
_squadNegocio88 #
.88# $
SelecionarPorId88$ 3
(883 4
id884 6
)886 7
)887 8
;888 9
}99 	
[@@ 	
HttpGet@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA !
)AA! "
]AA" #
[BB 	
SwaggerResponseBB	 
(BB 
(BB 
intBB 
)BB 
HttpStatusCodeBB ,
.BB, -
OKBB- /
,BB/ 0
typeofBB1 7
(BB7 8
SquadBB8 =
)BB= >
,BB> ?
nameofBB@ F
(BBF G
HttpStatusCodeBBG U
.BBU V
OKBBV X
)BBX Y
)BBY Z
]BBZ [
[CC 	
SwaggerResponseCC	 
(CC 
(CC 
intCC 
)CC 
HttpStatusCodeCC ,
.CC, -
NotFoundCC- 5
)CC5 6
]CC6 7
publicDD 
IActionResultDD 
GetSquadDD %
(DD% &
stringDD& ,
nomeDD- 1
)DD1 2
{EE 	
returnFF 
OkFF 
(FF 
_squadNegocioFF #
.FF# $"
SelecionarPorDescricaoFF$ :
(FF: ;
nomeFF; ?
)FF? @
)FF@ A
;FFA B
}GG 	
[NN 	
HttpPostNN	 
]NN 
[OO 	
SwaggerResponseOO	 
(OO 
(OO 
intOO 
)OO 
HttpStatusCodeOO ,
.OO, -
CreatedOO- 4
,OO4 5
typeofOO6 <
(OO< =
SquadOO= B
)OOB C
,OOC D
nameofOOE K
(OOK L
HttpStatusCodeOOL Z
.OOZ [
CreatedOO[ b
)OOb c
)OOc d
]OOd e
[PP 	
SwaggerResponsePP	 
(PP 
(PP 
intPP 
)PP 
HttpStatusCodePP ,
.PP, -

BadRequestPP- 7
)PP7 8
]PP8 9
[QQ 	
SwaggerResponseQQ	 
(QQ 
(QQ 
intQQ 
)QQ 
HttpStatusCodeQQ ,
.QQ, -
InternalServerErrorQQ- @
)QQ@ A
]QQA B
publicRR 
IActionResultRR 
PostRR !
(RR! "
[RR" #
FromBodyRR# +
]RR+ ,

SquadInputRR, 6
inputRR7 <
)RR< =
{SS 	
varTT 
objSquadTT 
=TT 
newTT 
SquadTT $
(TT$ %
)TT% &
{UU 
	IdUnidadeVV 
=VV 
inputVV !
.VV! "
	IdUnidadeVV" +
,VV+ ,
IdTriboWW 
=WW 
inputWW 
.WW  
IdTriboWW  '
,WW' (
LogoXX 
=XX 
inputXX 
.XX 
LogoXX !
,XX! "
NomeYY 
=YY 
inputYY 
.YY 
NomeYY !
}ZZ 
;ZZ 
var\\ 
idSquad\\ 
=\\ 
_squadNegocio\\ '
.\\' (
Inserir\\( /
(\\/ 0
objSquad\\0 8
)\\8 9
;\\9 :
objSquad]] 
.]] 
ID]] 
=]] 
idSquad]] !
;]]! "
return^^ 
CreatedAtRoute^^ !
(^^! "
nameof^^" (
(^^( )
GetId^^) .
)^^. /
,^^/ 0
new^^1 4
{^^5 6
id^^7 9
=^^: ;
idSquad^^< C
}^^D E
,^^E F
objSquad^^G O
)^^O P
;^^P Q
}__ 	
[gg 	
HttpPutgg	 
]gg 
[hh 	
Routehh	 
(hh 
$strhh 
)hh 
]hh 
[ii 	
SwaggerResponseii	 
(ii 
(ii 
intii 
)ii 
HttpStatusCodeii ,
.ii, -
Acceptedii- 5
,ii5 6
typeofii7 =
(ii= >
Squadii> C
)iiC D
,iiD E
nameofiiF L
(iiL M
HttpStatusCodeiiM [
.ii[ \
Acceptedii\ d
)iid e
)iie f
]iif g
[jj 	
SwaggerResponsejj	 
(jj 
(jj 
intjj 
)jj 
HttpStatusCodejj ,
.jj, -

BadRequestjj- 7
)jj7 8
]jj8 9
[kk 	
SwaggerResponsekk	 
(kk 
(kk 
intkk 
)kk 
HttpStatusCodekk ,
.kk, -
InternalServerErrorkk- @
)kk@ A
]kkA B
publicll 
IActionResultll 
PutSquadll %
(ll% &
[ll& '
	FromRoutell' 0
]ll0 1
intll1 4
idll5 7
,ll7 8
[ll9 :
FromBodyll: B
]llB C

SquadInputllC M
inputllN S
)llS T
{mm 	
varnn 
objSquadnn 
=nn 
newnn 
Squadnn $
(nn$ %
)nn% &
{oo 
	IdUnidadepp 
=pp 
inputpp !
.pp! "
	IdUnidadepp" +
,pp+ ,
IdTriboqq 
=qq 
inputqq 
.qq  
IdTriboqq  '
,qq' (
Logorr 
=rr 
inputrr 
.rr 
Logorr !
,rr! "
Nomess 
=ss 
inputss 
.ss 
Nomess !
}tt 
;tt 
varvv 
objvv 
=vv 
_squadNegociovv #
.vv# $
Alterarvv$ +
(vv+ ,
idvv, .
,vv. /
objSquadvv0 8
)vv8 9
;vv9 :
returnww 
Acceptedww 
(ww 
objww 
)ww  
;ww  !
}xx 	
[
ÄÄ 	
HttpPut
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	
Route
ÅÅ	 
(
ÅÅ 
$str
ÅÅ !
)
ÅÅ! "
]
ÅÅ" #
[
ÇÇ 	
SwaggerResponse
ÇÇ	 
(
ÇÇ 
(
ÇÇ 
int
ÇÇ 
)
ÇÇ 
HttpStatusCode
ÇÇ ,
.
ÇÇ, -
Accepted
ÇÇ- 5
,
ÇÇ5 6
typeof
ÇÇ7 =
(
ÇÇ= >
Squad
ÇÇ> C
)
ÇÇC D
,
ÇÇD E
nameof
ÇÇF L
(
ÇÇL M
HttpStatusCode
ÇÇM [
.
ÇÇ[ \
Accepted
ÇÇ\ d
)
ÇÇd e
)
ÇÇe f
]
ÇÇf g
[
ÉÉ 	
SwaggerResponse
ÉÉ	 
(
ÉÉ 
(
ÉÉ 
int
ÉÉ 
)
ÉÉ 
HttpStatusCode
ÉÉ ,
.
ÉÉ, -

BadRequest
ÉÉ- 7
)
ÉÉ7 8
]
ÉÉ8 9
[
ÑÑ 	
SwaggerResponse
ÑÑ	 
(
ÑÑ 
(
ÑÑ 
int
ÑÑ 
)
ÑÑ 
HttpStatusCode
ÑÑ ,
.
ÑÑ, -!
InternalServerError
ÑÑ- @
)
ÑÑ@ A
]
ÑÑA B
public
ÖÖ 
IActionResult
ÖÖ 
PutRemoveTribo
ÖÖ +
(
ÖÖ+ ,
[
ÖÖ, -
	FromRoute
ÖÖ- 6
]
ÖÖ6 7
int
ÖÖ7 :
id
ÖÖ; =
,
ÖÖ= >
[
ÖÖ? @
FromBody
ÖÖ@ H
]
ÖÖH I

SquadInput
ÖÖI S
input
ÖÖT Y
)
ÖÖY Z
{
ÜÜ 	
var
áá 
objSquad
áá 
=
áá 
new
áá 
Squad
áá $
(
áá$ %
)
áá% &
;
áá& '
var
ââ 
obj
ââ 
=
ââ 
_squadNegocio
ââ #
.
ââ# $
SairDaTribo
ââ$ /
(
ââ/ 0
id
ââ0 2
,
ââ2 3
objSquad
ââ4 <
)
ââ< =
;
ââ= >
return
ää 
Accepted
ää 
(
ää 
obj
ää 
)
ää  
;
ää  !
}
ãã 	
[
ìì 	
HttpPut
ìì	 
]
ìì 
[
îî 	
Route
îî	 
(
îî 
$str
îî "
)
îî" #
]
îî# $
[
ïï 	
SwaggerResponse
ïï	 
(
ïï 
(
ïï 
int
ïï 
)
ïï 
HttpStatusCode
ïï ,
.
ïï, -
Accepted
ïï- 5
,
ïï5 6
typeof
ïï7 =
(
ïï= >
Squad
ïï> C
)
ïïC D
,
ïïD E
nameof
ïïF L
(
ïïL M
HttpStatusCode
ïïM [
.
ïï[ \
Accepted
ïï\ d
)
ïïd e
)
ïïe f
]
ïïf g
[
ññ 	
SwaggerResponse
ññ	 
(
ññ 
(
ññ 
int
ññ 
)
ññ 
HttpStatusCode
ññ ,
.
ññ, -

BadRequest
ññ- 7
)
ññ7 8
]
ññ8 9
[
óó 	
SwaggerResponse
óó	 
(
óó 
(
óó 
int
óó 
)
óó 
HttpStatusCode
óó ,
.
óó, -!
InternalServerError
óó- @
)
óó@ A
]
óóA B
public
òò 
IActionResult
òò 
PutAtivoInativo
òò ,
(
òò, -
[
òò- .
	FromRoute
òò. 7
]
òò7 8
int
òò8 ;
id
òò< >
,
òò> ?
[
òò@ A
FromBody
òòA I
]
òòI J

SquadInput
òòJ T
input
òòU Z
)
òòZ [
{
ôô 	
var
öö 
objSquad
öö 
=
öö 
new
öö 
Squad
öö $
(
öö$ %
)
öö% &
{
õõ 
Status
úú 
=
úú 
input
úú 
.
úú 
Status
úú %
}
ùù 
;
ùù 
var
üü 
obj
üü 
=
üü 
_squadNegocio
üü #
.
üü# $!
AlterarAtivoInativo
üü$ 7
(
üü7 8
id
üü8 :
,
üü: ;
objSquad
üü< D
)
üüD E
;
üüE F
return
†† 
Accepted
†† 
(
†† 
obj
†† 
)
††  
;
††  !
}
°° 	
[
®® 	

HttpDelete
®®	 
]
®® 
[
©© 	
Route
©©	 
(
©© 
$str
©© 
)
©© 
]
©© 
[
™™ 	
SwaggerResponse
™™	 
(
™™ 
(
™™ 
int
™™ 
)
™™ 
HttpStatusCode
™™ ,
.
™™, -
OK
™™- /
)
™™/ 0
]
™™0 1
[
´´ 	
SwaggerResponse
´´	 
(
´´ 
(
´´ 
int
´´ 
)
´´ 
HttpStatusCode
´´ ,
.
´´, -
NotFound
´´- 5
)
´´5 6
]
´´6 7
public
¨¨ 
IActionResult
¨¨ 
Delete
¨¨ #
(
¨¨# $
[
¨¨$ %
	FromRoute
¨¨% .
]
¨¨. /
int
¨¨/ 2
id
¨¨3 5
)
¨¨5 6
{
≠≠ 	
_squadNegocio
ÆÆ 
.
ÆÆ 
Deletar
ÆÆ !
(
ÆÆ! "
id
ÆÆ" $
)
ÆÆ$ %
;
ÆÆ% &
return
ØØ 
Ok
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
}
±± 
}≤≤ æW
kC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\TriboController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
TriboController  
:! "

Controller# -
{ 
private 
readonly 
TriboNegocio %
_triboNegocio& 3
;3 4
public 
TriboController 
( 
)  
{ 	
_triboNegocio 
= 
new 
TriboNegocio  ,
(, -
)- .
;. /
} 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
SwaggerResponse&&	 
(&& 
(&& 
int&& 
)&& 
HttpStatusCode&& ,
.&&, -
OK&&- /
,&&/ 0
typeof&&1 7
(&&7 8
Papel&&8 =
)&&= >
,&&> ?
nameof&&@ F
(&&F G
HttpStatusCode&&G U
.&&U V
OK&&V X
)&&X Y
)&&Y Z
]&&Z [
['' 	
SwaggerResponse''	 
('' 
('' 
int'' 
)'' 
HttpStatusCode'' ,
.'', -
NotFound''- 5
)''5 6
]''6 7
public(( 
IActionResult(( 
Get((  
(((  !
)((! "
{)) 	
return** 
Ok** 
(** 
_triboNegocio** #
.**# $

Selecionar**$ .
(**. /
)**/ 0
)**0 1
;**1 2
}++ 	
[22 	
HttpGet22	 
]22 
[33 	
Route33	 
(33 
$str33 
)33 
]33 
[44 	
SwaggerResponse44	 
(44 
(44 
int44 
)44 
HttpStatusCode44 ,
.44, -
OK44- /
,44/ 0
typeof441 7
(447 8
Tribo448 =
)44= >
,44> ?
nameof44@ F
(44F G
HttpStatusCode44G U
.44U V
OK44V X
)44X Y
)44Y Z
]44Z [
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
NotFound55- 5
)555 6
]556 7
public66 
IActionResult66 
GetId66 "
(66" #
int66# &
id66' )
)66) *
{77 	
return88 
Ok88 
(88 
_triboNegocio88 #
.88# $
SelecionarPorId88$ 3
(883 4
id884 6
)886 7
)887 8
;888 9
}99 	
[@@ 	
HttpGet@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA !
)AA! "
]AA" #
[BB 	
SwaggerResponseBB	 
(BB 
(BB 
intBB 
)BB 
HttpStatusCodeBB ,
.BB, -
OKBB- /
,BB/ 0
typeofBB1 7
(BB7 8
TriboBB8 =
)BB= >
,BB> ?
nameofBB@ F
(BBF G
HttpStatusCodeBBG U
.BBU V
OKBBV X
)BBX Y
)BBY Z
]BBZ [
[CC 	
SwaggerResponseCC	 
(CC 
(CC 
intCC 
)CC 
HttpStatusCodeCC ,
.CC, -
NotFoundCC- 5
)CC5 6
]CC6 7
publicDD 
IActionResultDD 
GetTriboDD %
(DD% &
stringDD& ,
nomeDD- 1
)DD1 2
{EE 	
returnFF 
OkFF 
(FF 
_triboNegocioFF #
.FF# $"
SelecionarPorDescricaoFF$ :
(FF: ;
nomeFF; ?
)FF? @
)FF@ A
;FFA B
}GG 	
[NN 	
HttpPostNN	 
]NN 
[OO 	
SwaggerResponseOO	 
(OO 
(OO 
intOO 
)OO 
HttpStatusCodeOO ,
.OO, -
CreatedOO- 4
,OO4 5
typeofOO6 <
(OO< =
TriboOO= B
)OOB C
,OOC D
nameofOOE K
(OOK L
HttpStatusCodeOOL Z
.OOZ [
CreatedOO[ b
)OOb c
)OOc d
]OOd e
[PP 	
SwaggerResponsePP	 
(PP 
(PP 
intPP 
)PP 
HttpStatusCodePP ,
.PP, -

BadRequestPP- 7
)PP7 8
]PP8 9
[QQ 	
SwaggerResponseQQ	 
(QQ 
(QQ 
intQQ 
)QQ 
HttpStatusCodeQQ ,
.QQ, -
InternalServerErrorQQ- @
)QQ@ A
]QQA B
publicRR 
IActionResultRR 
PostRR !
(RR! "
[RR" #
FromBodyRR# +
]RR+ ,

TriboInputRR, 6
InputRR7 <
)RR< =
{SS 	
varTT 
objTriboTT 
=TT 
newTT 
TriboTT $
(TT$ %
)TT% &
{UU 
LogoVV 
=VV 
InputVV 
.VV 
LogoVV !
,VV! "
NomeWW 
=WW 
InputWW 
.WW 
NomeWW !
}XX 
;XX 
varZZ 
idTriboZZ 
=ZZ 
_triboNegocioZZ '
.ZZ' (
InserirZZ( /
(ZZ/ 0
objTriboZZ0 8
)ZZ8 9
;ZZ9 :
objTribo[[ 
.[[ 
ID[[ 
=[[ 
idTribo[[ !
;[[! "
return\\ 
CreatedAtRoute\\ !
(\\! "
nameof\\" (
(\\( )
GetId\\) .
)\\. /
,\\/ 0
new\\1 4
{\\5 6
id\\7 9
=\\: ;
idTribo\\< C
}\\D E
,\\E F
objTribo\\G O
)\\O P
;\\P Q
}]] 	
[ee 	
HttpPutee	 
]ee 
[ff 	
Routeff	 
(ff 
$strff 
)ff 
]ff 
[gg 	
SwaggerResponsegg	 
(gg 
(gg 
intgg 
)gg 
HttpStatusCodegg ,
.gg, -
Acceptedgg- 5
,gg5 6
typeofgg7 =
(gg= >
Tribogg> C
)ggC D
,ggD E
nameofggF L
(ggL M
HttpStatusCodeggM [
.gg[ \
Acceptedgg\ d
)ggd e
)gge f
]ggf g
[hh 	
SwaggerResponsehh	 
(hh 
(hh 
inthh 
)hh 
HttpStatusCodehh ,
.hh, -

BadRequesthh- 7
)hh7 8
]hh8 9
[ii 	
SwaggerResponseii	 
(ii 
(ii 
intii 
)ii 
HttpStatusCodeii ,
.ii, -
InternalServerErrorii- @
)ii@ A
]iiA B
publicjj 
IActionResultjj 
PutTribojj %
(jj% &
[jj& '
	FromRoutejj' 0
]jj0 1
intjj1 4
idjj5 7
,jj7 8
[jj9 :
FromBodyjj: B
]jjB C

TriboInputjjC M
inputjjN S
)jjS T
{kk 	
varll 
objTriboll 
=ll 
newll 
Triboll $
(ll$ %
)ll% &
{mm 
Logonn 
=nn 
inputnn 
.nn 
Logonn !
,nn! "
Nomeoo 
=oo 
inputoo 
.oo 
Nomeoo !
}pp 
;pp 
varrr 
objrr 
=rr 
_triboNegociorr #
.rr# $
Alterarrr$ +
(rr+ ,
idrr, .
,rr. /
objTriborr0 8
)rr8 9
;rr9 :
returnss 
Acceptedss 
(ss 
objss 
)ss  
;ss  !
}tt 	
[|| 	
HttpPut||	 
]|| 
[}} 	
Route}}	 
(}} 
$str}} "
)}}" #
]}}# $
[~~ 	
SwaggerResponse~~	 
(~~ 
(~~ 
int~~ 
)~~ 
HttpStatusCode~~ ,
.~~, -
Accepted~~- 5
,~~5 6
typeof~~7 =
(~~= >
Tribo~~> C
)~~C D
,~~D E
nameof~~F L
(~~L M
HttpStatusCode~~M [
.~~[ \
Accepted~~\ d
)~~d e
)~~e f
]~~f g
[ 	
SwaggerResponse	 
( 
( 
int 
) 
HttpStatusCode ,
., -

BadRequest- 7
)7 8
]8 9
[
ÄÄ 	
SwaggerResponse
ÄÄ	 
(
ÄÄ 
(
ÄÄ 
int
ÄÄ 
)
ÄÄ 
HttpStatusCode
ÄÄ ,
.
ÄÄ, -!
InternalServerError
ÄÄ- @
)
ÄÄ@ A
]
ÄÄA B
public
ÅÅ 
IActionResult
ÅÅ 
PutAtivoInativo
ÅÅ ,
(
ÅÅ, -
[
ÅÅ- .
	FromRoute
ÅÅ. 7
]
ÅÅ7 8
int
ÅÅ8 ;
id
ÅÅ< >
,
ÅÅ> ?
[
ÅÅ@ A
FromBody
ÅÅA I
]
ÅÅI J

TriboInput
ÅÅJ T
input
ÅÅU Z
)
ÅÅZ [
{
ÇÇ 	
var
ÉÉ 
objTribo
ÉÉ 
=
ÉÉ 
new
ÉÉ 
Tribo
ÉÉ $
(
ÉÉ$ %
)
ÉÉ% &
{
ÑÑ 
Status
ÖÖ 
=
ÖÖ 
input
ÖÖ 
.
ÖÖ 
Status
ÖÖ %
}
ÜÜ 
;
ÜÜ 
var
àà 
obj
àà 
=
àà 
_triboNegocio
àà #
.
àà# $!
AlterarAtivoInativo
àà$ 7
(
àà7 8
id
àà8 :
,
àà: ;
objTribo
àà< D
)
ààD E
;
ààE F
return
ââ 
Accepted
ââ 
(
ââ 
obj
ââ 
)
ââ  
;
ââ  !
}
ää 	
[
ëë 	

HttpDelete
ëë	 
]
ëë 
[
íí 	
Route
íí	 
(
íí 
$str
íí 
)
íí 
]
íí 
[
ìì 	
SwaggerResponse
ìì	 
(
ìì 
(
ìì 
int
ìì 
)
ìì 
HttpStatusCode
ìì ,
.
ìì, -
OK
ìì- /
)
ìì/ 0
]
ìì0 1
[
îî 	
SwaggerResponse
îî	 
(
îî 
(
îî 
int
îî 
)
îî 
HttpStatusCode
îî ,
.
îî, -
NotFound
îî- 5
)
îî5 6
]
îî6 7
public
ïï 
IActionResult
ïï 
Delete
ïï #
(
ïï# $
[
ïï$ %
	FromRoute
ïï% .
]
ïï. /
int
ïï/ 2
id
ïï3 5
)
ïï5 6
{
ññ 	
_triboNegocio
óó 
.
óó 
Deletar
óó !
(
óó! "
id
óó" $
)
óó$ %
;
óó% &
return
òò 
Ok
òò 
(
òò 
)
òò 
;
òò 
}
ôô 	
}
öö 
}õõ ıI
mC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\UnidadeController.cs
	namespace 	
Api
 
. 
Controllers 
{		 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
UnidadeController "
:" #

Controller$ .
{ 
private 
readonly 
UnidadeNegocio '
_unidadeNegocio( 7
;7 8
public 
UnidadeController  
(  !
)! "
{ 	
_unidadeNegocio 
= 
new !
UnidadeNegocio" 0
(0 1
)1 2
;2 3
} 	
[## 	
HttpGet##	 
]## 
[$$ 	
SwaggerResponse$$	 
($$ 
($$ 
int$$ 
)$$ 
HttpStatusCode$$ ,
.$$, -
OK$$- /
,$$/ 0
typeof$$1 7
($$7 8
Unidade$$8 ?
)$$? @
,$$@ A
nameof$$B H
($$H I
HttpStatusCode$$I W
.$$W X
OK$$X Z
)$$Z [
)$$[ \
]$$\ ]
[%% 	
SwaggerResponse%%	 
(%% 
(%% 
int%% 
)%% 
HttpStatusCode%% ,
.%%, -
NotFound%%- 5
)%%5 6
]%%6 7
public&& 
IActionResult&& 
Get&&  
(&&  !
)&&! "
{'' 	
return(( 
Ok(( 
((( 
_unidadeNegocio(( %
.((% &

Selecionar((& 0
(((0 1
)((1 2
)((2 3
;((3 4
})) 	
[33 	
HttpGet33	 
]33 
[44 	
Route44	 
(44 
$str44 
)44 
]44 
[55 	
SwaggerResponse55	 
(55 
(55 
int55 
)55 
HttpStatusCode55 ,
.55, -
OK55- /
,55/ 0
typeof551 7
(557 8
Unidade558 ?
)55? @
,55@ A
nameof55B H
(55H I
HttpStatusCode55I W
.55W X
OK55X Z
)55Z [
)55[ \
]55\ ]
[66 	
SwaggerResponse66	 
(66 
(66 
int66 
)66 
HttpStatusCode66 ,
.66, -
NotFound66- 5
)665 6
]666 7
public77 
IActionResult77 
GetId77 "
(77" #
int77# &
id77' )
)77) *
{88 	
return99 
Ok99 
(99 
_unidadeNegocio99 %
.99% &
SelecionarPorId99& 5
(995 6
id996 8
)998 9
)999 :
;99: ;
}:: 	
[DD 	
HttpGetDD	 
]DD 
[EE 	
RouteEE	 
(EE 
$strEE 
)EE 
]EE 
[FF 	
SwaggerResponseFF	 
(FF 
(FF 
intFF 
)FF 
HttpStatusCodeFF ,
.FF, -
OKFF- /
,FF/ 0
typeofFF1 7
(FF7 8
UnidadeFF8 ?
)FF? @
,FF@ A
nameofFFB H
(FFH I
HttpStatusCodeFFI W
.FFW X
OKFFX Z
)FFZ [
)FF[ \
]FF\ ]
[GG 	
SwaggerResponseGG	 
(GG 
(GG 
intGG 
)GG 
HttpStatusCodeGG ,
.GG, -
NotFoundGG- 5
)GG5 6
]GG6 7
publicHH 
IActionResultHH 
GetNomeHH $
(HH$ %
stringHH% +
nomeHH, 0
)HH0 1
{II 	
returnJJ 
OkJJ 
(JJ 
_unidadeNegocioJJ %
.JJ% &
SelecionarPorNomeJJ& 7
(JJ7 8
nomeJJ8 <
)JJ< =
)JJ= >
;JJ> ?
}KK 	
[UU 	
HttpPostUU	 
]UU 
[VV 	
SwaggerResponseVV	 
(VV 
(VV 
intVV 
)VV 
HttpStatusCodeVV ,
.VV, -
CreatedVV- 4
,VV4 5
typeofVV6 <
(VV< =
UnidadeVV= D
)VVD E
,VVE F
nameofVVG M
(VVM N
HttpStatusCodeVVN \
.VV\ ]
CreatedVV] d
)VVd e
)VVe f
]VVf g
[WW 	
SwaggerResponseWW	 
(WW 
(WW 
intWW 
)WW 
HttpStatusCodeWW ,
.WW, -

BadRequestWW- 7
)WW7 8
]WW8 9
[XX 	
SwaggerResponseXX	 
(XX 
(XX 
intXX 
)XX 
HttpStatusCodeXX ,
.XX, -
InternalServerErrorXX- @
)XX@ A
]XXA B
publicYY 
IActionResultYY 
PostYY !
(YY! "
[YY" #
FromBodyYY# +
]YY+ ,
UnidadeInputYY, 8
inputYY9 >
)YY> ?
{ZZ 	
var[[ 

objUnidade[[ 
=[[ 
new[[  
Unidade[[! (
([[( )
)[[) *
{\\ 
IdPais]] 
=]] 
input]] 
.]] 
IdPais]] %
,]]% &
Nome^^ 
=^^ 
input^^ 
.^^ 
Nome^^ !
,^^! "
EstSigla__ 
=__ 
input__  
.__  !
EstSigla__! )
}`` 
;`` 
varbb 
	idUnidadebb 
=bb 
_unidadeNegociobb +
.bb+ ,
Inserirbb, 3
(bb3 4

objUnidadebb4 >
)bb> ?
;bb? @

objUnidadecc 
.cc 
Idcc 
=cc 
	idUnidadecc %
;cc% &
returndd 
CreatedAtRoutedd !
(dd! "
nameofdd" (
(dd( )
GetIddd) .
)dd. /
,dd/ 0
newdd1 4
{dd5 6
iddd7 9
=dd: ;
	idUnidadedd< E
}ddF G
,ddG H

objUnidadeddI S
)ddS T
;ddT U
}ee 	
[pp 	
HttpPutpp	 
]pp 
[qq 	
Routeqq	 
(qq 
$strqq 
)qq 
]qq 
[rr 	
SwaggerResponserr	 
(rr 
(rr 
intrr 
)rr 
HttpStatusCoderr ,
.rr, -
Acceptedrr- 5
,rr5 6
typeofrr7 =
(rr= >
Unidaderr> E
)rrE F
,rrF G
nameofrrH N
(rrN O
HttpStatusCoderrO ]
.rr] ^
Acceptedrr^ f
)rrf g
)rrg h
]rrh i
[ss 	
SwaggerResponsess	 
(ss 
(ss 
intss 
)ss 
HttpStatusCodess ,
.ss, -

BadRequestss- 7
)ss7 8
]ss8 9
[tt 	
SwaggerResponsett	 
(tt 
(tt 
inttt 
)tt 
HttpStatusCodett ,
.tt, -
InternalServerErrortt- @
)tt@ A
]ttA B
publicuu 
IActionResultuu 
Putuu  
(uu  !
[uu! "
	FromRouteuu" +
]uu+ ,
intuu, /
iduu0 2
,uu2 3
[uu4 5
FromBodyuu5 =
]uu= >
UnidadeInputuu> J
inputuuK P
)uuP Q
{vv 	
varww 

objUnidadeww 
=ww 
newww  
Unidadeww! (
(ww( )
)ww) *
{xx 
IdPaisyy 
=yy 
inputyy 
.yy 
IdPaisyy %
,yy% &
Nomezz 
=zz 
inputzz 
.zz 
Nomezz !
,zz! "
EstSigla{{ 
={{ 
input{{  
.{{  !
EstSigla{{! )
}|| 
;|| 
var~~ 
obj~~ 
=~~ 
_unidadeNegocio~~ %
.~~% &
Alterar~~& -
(~~- .
id~~. 0
,~~0 1

objUnidade~~2 <
)~~< =
;~~= >
return 
Accepted 
( 
obj 
)  
;  !
}
ÄÄ 	
[
ââ 	

HttpDelete
ââ	 
]
ââ 
[
ää 	
Route
ää	 
(
ää 
$str
ää 
)
ää 
]
ää 
[
ãã 	
SwaggerResponse
ãã	 
(
ãã 
(
ãã 
int
ãã 
)
ãã 
HttpStatusCode
ãã ,
.
ãã, -
OK
ãã- /
)
ãã/ 0
]
ãã0 1
[
åå 	
SwaggerResponse
åå	 
(
åå 
(
åå 
int
åå 
)
åå 
HttpStatusCode
åå ,
.
åå, -
NotFound
åå- 5
)
åå5 6
]
åå6 7
public
çç 
IActionResult
çç 
Delete
çç #
(
çç# $
[
çç$ %
	FromRoute
çç% .
]
çç. /
int
çç/ 2
id
çç3 5
)
çç5 6
{
éé 	
_unidadeNegocio
èè 
.
èè 
Deletar
èè #
(
èè# $
id
èè$ &
)
èè& '
;
èè' (
return
êê 
Ok
êê 
(
êê 
)
êê 
;
êê 
}
ëë 	
}
íí 
}ìì ¢r
jC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Controllers\UserController.cs
	namespace 	
Api
 
. 
Controllers 
{ 
[ 
Produces 
( 
$str  
)  !
]! "
[ 
Route 

(
 
$str 
) 
] 
public 

class 
UserController 
:  !

Controller" ,
{ 
private 
readonly 
UserNegocio $
_userNegocio% 1
;1 2
private 
readonly 
LoginNegocio %
_loginNegocio& 3
;3 4
public!! 
UserController!! 
(!! 
)!! 
{"" 	
_userNegocio## 
=## 
new## 
UserNegocio## *
(##* +
)##+ ,
;##, -
_loginNegocio$$ 
=$$ 
new$$ 
LoginNegocio$$  ,
($$, -
)$$- .
;$$. /
}%% 	
[++ 	
HttpGet++	 
]++ 
[,, 	
SwaggerResponse,,	 
(,, 
(,, 
int,, 
),, 
HttpStatusCode,, ,
.,,, -
OK,,- /
,,,/ 0
typeof,,1 7
(,,7 8
User,,8 <
),,< =
,,,= >
nameof,,? E
(,,E F
HttpStatusCode,,F T
.,,T U
OK,,U W
),,W X
),,X Y
],,Y Z
[-- 	
SwaggerResponse--	 
(-- 
(-- 
int-- 
)-- 
HttpStatusCode-- ,
.--, -
NotFound--- 5
)--5 6
]--6 7
public.. 
IActionResult.. 
Get..  
(..  !
)..! "
{// 	
return00 
Ok00 
(00 
_userNegocio00 "
.00" #
SelecionarTodos00# 2
(002 3
)003 4
)004 5
;005 6
}11 	
[77 	
HttpGet77	 
]77 
[88 	
Route88	 
(88 
$str88 
)88 
]88 
[99 	
SwaggerResponse99	 
(99 
(99 
int99 
)99 
HttpStatusCode99 ,
.99, -
OK99- /
,99/ 0
typeof991 7
(997 8
User998 <
)99< =
,99= >
nameof99? E
(99E F
HttpStatusCode99F T
.99T U
OK99U W
)99W X
)99X Y
]99Y Z
[:: 	
SwaggerResponse::	 
(:: 
(:: 
int:: 
):: 
HttpStatusCode:: ,
.::, -
NotFound::- 5
)::5 6
]::6 7
public;; 
IActionResult;; 
	GetAtivos;; &
(;;& '
);;' (
{<< 	
return== 
Ok== 
(== 
_userNegocio== "
.==" #
SelecionarAtivos==# 3
(==3 4
)==4 5
)==5 6
;==6 7
}>> 	
[EE 	
HttpGetEE	 
]EE 
[FF 	
RouteFF	 
(FF 
$strFF 
)FF 
]FF 
[GG 	
SwaggerResponseGG	 
(GG 
(GG 
intGG 
)GG 
HttpStatusCodeGG ,
.GG, -
OKGG- /
,GG/ 0
typeofGG1 7
(GG7 8
UserGG8 <
)GG< =
,GG= >
nameofGG? E
(GGE F
HttpStatusCodeGGF T
.GGT U
OKGGU W
)GGW X
)GGX Y
]GGY Z
[HH 	
SwaggerResponseHH	 
(HH 
(HH 
intHH 
)HH 
HttpStatusCodeHH ,
.HH, -
NotFoundHH- 5
)HH5 6
]HH6 7
publicII 
IActionResultII 
GetIdII "
(II" #
intII# &
idII' )
)II) *
{JJ 	
returnKK 
OkKK 
(KK 
_userNegocioKK "
.KK" #
SelecionarPorIdKK# 2
(KK2 3
idKK3 5
)KK5 6
)KK6 7
;KK7 8
}LL 	
[SS 	
HttpGetSS	 
]SS 
[TT 	
RouteTT	 
(TT 
$strTT 
)TT 
]TT 
[UU 	
SwaggerResponseUU	 
(UU 
(UU 
intUU 
)UU 
HttpStatusCodeUU ,
.UU, -
OKUU- /
,UU/ 0
typeofUU1 7
(UU7 8
UserUU8 <
)UU< =
,UU= >
nameofUU? E
(UUE F
HttpStatusCodeUUF T
.UUT U
OKUUU W
)UUW X
)UUX Y
]UUY Z
[VV 	
SwaggerResponseVV	 
(VV 
(VV 
intVV 
)VV 
HttpStatusCodeVV ,
.VV, -
NotFoundVV- 5
)VV5 6
]VV6 7
publicWW 
IActionResultWW 
GetUserWW $
(WW$ %
stringWW% +
nomeWW, 0
)WW0 1
{XX 	
returnYY 
OkYY 
(YY 
_userNegocioYY "
.YY" #
SelecionarPorNomeYY# 4
(YY4 5
nomeYY5 9
)YY9 :
)YY: ;
;YY; <
}ZZ 	
[aa 	
HttpGetaa	 
]aa 
[bb 	
Routebb	 
(bb 
$strbb  
)bb  !
]bb! "
[cc 	
SwaggerResponsecc	 
(cc 
(cc 
intcc 
)cc 
HttpStatusCodecc ,
.cc, -
OKcc- /
,cc/ 0
typeofcc1 7
(cc7 8
Usercc8 <
)cc< =
,cc= >
nameofcc? E
(ccE F
HttpStatusCodeccF T
.ccT U
OKccU W
)ccW X
)ccX Y
]ccY Z
[dd 	
SwaggerResponsedd	 
(dd 
(dd 
intdd 
)dd 
HttpStatusCodedd ,
.dd, -
NotFounddd- 5
)dd5 6
]dd6 7
publicee 
IActionResultee 
GetPapelee %
(ee% &
intee& )
IdPapelee* 1
)ee1 2
{ff 	
returngg 
Okgg 
(gg 
_userNegociogg "
.gg" #
SelecionarPorPapelgg# 5
(gg5 6
IdPapelgg6 =
)gg= >
)gg> ?
;gg? @
}hh 	
[pp 	
HttpPostpp	 
]pp 
[qq 	
SwaggerResponseqq	 
(qq 
(qq 
intqq 
)qq 
HttpStatusCodeqq ,
.qq, -
Createdqq- 4
,qq4 5
typeofqq6 <
(qq< =
Loginqq= B
)qqB C
,qqC D
nameofqqE K
(qqK L
HttpStatusCodeqqL Z
.qqZ [
Createdqq[ b
)qqb c
)qqc d
]qqd e
[rr 	
SwaggerResponserr	 
(rr 
(rr 
intrr 
)rr 
HttpStatusCoderr ,
.rr, -

BadRequestrr- 7
)rr7 8
]rr8 9
[ss 	
SwaggerResponsess	 
(ss 
(ss 
intss 
)ss 
HttpStatusCodess ,
.ss, -
InternalServerErrorss- @
)ss@ A
]ssA B
publictt 
IActionResulttt 
Posttt !
(tt! "
[tt" #
FromBodytt# +
]tt+ ,
	UserInputtt, 5
Inputtt6 ;
)tt; <
{uu 	
varvv 
objUservv 
=vv 
newvv 
Uservv "
(vv" #
)vv# $
{ww 
Usernamexx 
=xx 
Inputxx  
.xx  !
Usernamexx! )
,xx) *
Senhayy 
=yy 
Inputyy 
.yy 
Senhayy #
,yy# $
IdPapelzz 
=zz 
Inputzz 
.zz  
IdPapelzz  '
,zz' (
Nome{{ 
={{ 
Input{{ 
.{{ 
Nome{{ !
,{{! "
Email|| 
=|| 
Input|| 
.|| 
Email|| #
,||# $
Tel}} 
=}} 
Input}} 
.}} 
Tel}} 
}~~ 
;~~ 
var
ÄÄ 
idUser
ÄÄ 
=
ÄÄ 
_userNegocio
ÄÄ %
.
ÄÄ% &
Inserir
ÄÄ& -
(
ÄÄ- .
objUser
ÄÄ. 5
)
ÄÄ5 6
;
ÄÄ6 7
objUser
ÅÅ 
.
ÅÅ 
ID
ÅÅ 
=
ÅÅ 
idUser
ÅÅ 
;
ÅÅ  
return
ÇÇ 
CreatedAtRoute
ÇÇ !
(
ÇÇ! "
nameof
ÇÇ" (
(
ÇÇ( )
GetId
ÇÇ) .
)
ÇÇ. /
,
ÇÇ/ 0
new
ÇÇ1 4
{
ÇÇ5 6
id
ÇÇ7 9
=
ÇÇ: ;
idUser
ÇÇ< B
}
ÇÇC D
,
ÇÇD E
objUser
ÇÇF M
)
ÇÇM N
;
ÇÇN O
}
ÉÉ 	
[
åå 	
HttpPut
åå	 
]
åå 
[
çç 	
Route
çç	 
(
çç 
$str
çç 
)
çç 
]
çç 
[
éé 	
SwaggerResponse
éé	 
(
éé 
(
éé 
int
éé 
)
éé 
HttpStatusCode
éé ,
.
éé, -
Accepted
éé- 5
,
éé5 6
typeof
éé7 =
(
éé= >
User
éé> B
)
ééB C
,
ééC D
nameof
ééE K
(
ééK L
HttpStatusCode
ééL Z
.
ééZ [
Accepted
éé[ c
)
ééc d
)
ééd e
]
éée f
[
èè 	
SwaggerResponse
èè	 
(
èè 
(
èè 
int
èè 
)
èè 
HttpStatusCode
èè ,
.
èè, -

BadRequest
èè- 7
)
èè7 8
]
èè8 9
[
êê 	
SwaggerResponse
êê	 
(
êê 
(
êê 
int
êê 
)
êê 
HttpStatusCode
êê ,
.
êê, -!
InternalServerError
êê- @
)
êê@ A
]
êêA B
public
ëë 
IActionResult
ëë 
	PutPerfil
ëë &
(
ëë& '
[
ëë' (
	FromRoute
ëë( 1
]
ëë1 2
int
ëë2 5
id
ëë6 8
,
ëë8 9
[
ëë: ;
FromBody
ëë; C
]
ëëC D
	UserInput
ëëD M
input
ëëN S
)
ëëS T
{
íí 	
var
ìì 
objUser
ìì 
=
ìì 
new
ìì 
User
ìì "
(
ìì" #
)
ìì# $
{
îî 
IdPapel
ïï 
=
ïï 
input
ïï 
.
ïï  
IdPapel
ïï  '
,
ïï' (
Nome
ññ 
=
ññ 
input
ññ 
.
ññ 
Nome
ññ !
,
ññ! "
Email
óó 
=
óó 
input
óó 
.
óó 
Email
óó #
,
óó# $
Tel
òò 
=
òò 
input
òò 
.
òò 
Tel
òò 
}
ôô 
;
ôô 
var
õõ 
obj
õõ 
=
õõ 
_userNegocio
õõ "
.
õõ" #"
AlterarPerfilUsuario
õõ# 7
(
õõ7 8
id
õõ8 :
,
õõ: ;
objUser
õõ< C
)
õõC D
;
õõD E
return
úú 
Accepted
úú 
(
úú 
obj
úú 
)
úú  
;
úú  !
}
ùù 	
[
•• 	
HttpPut
••	 
]
•• 
[
¶¶ 	
Route
¶¶	 
(
¶¶ 
$str
¶¶ "
)
¶¶" #
]
¶¶# $
[
ßß 	
SwaggerResponse
ßß	 
(
ßß 
(
ßß 
int
ßß 
)
ßß 
HttpStatusCode
ßß ,
.
ßß, -
Accepted
ßß- 5
,
ßß5 6
typeof
ßß7 =
(
ßß= >
User
ßß> B
)
ßßB C
,
ßßC D
nameof
ßßE K
(
ßßK L
HttpStatusCode
ßßL Z
.
ßßZ [
Accepted
ßß[ c
)
ßßc d
)
ßßd e
]
ßße f
[
®® 	
SwaggerResponse
®®	 
(
®® 
(
®® 
int
®® 
)
®® 
HttpStatusCode
®® ,
.
®®, -

BadRequest
®®- 7
)
®®7 8
]
®®8 9
[
©© 	
SwaggerResponse
©©	 
(
©© 
(
©© 
int
©© 
)
©© 
HttpStatusCode
©© ,
.
©©, -!
InternalServerError
©©- @
)
©©@ A
]
©©A B
public
™™ 
IActionResult
™™ 
PutAtivoInativo
™™ ,
(
™™, -
[
™™- .
	FromRoute
™™. 7
]
™™7 8
int
™™8 ;
id
™™< >
,
™™> ?
[
™™@ A
FromBody
™™A I
]
™™I J
	UserInput
™™J S
input
™™T Y
)
™™Y Z
{
´´ 	
var
¨¨ 
objUser
¨¨ 
=
¨¨ 
new
¨¨ 
User
¨¨ "
(
¨¨" #
)
¨¨# $
{
≠≠ 
Status
ÆÆ 
=
ÆÆ 
input
ÆÆ 
.
ÆÆ 
Status
ÆÆ %
}
ØØ 
;
ØØ 
var
±± 
obj
±± 
=
±± 
_userNegocio
±± "
.
±±" #!
AlterarAtivoInativo
±±# 6
(
±±6 7
id
±±7 9
,
±±9 :
objUser
±±; B
)
±±B C
;
±±C D
return
≤≤ 
Accepted
≤≤ 
(
≤≤ 
obj
≤≤ 
)
≤≤  
;
≤≤  !
}
≥≥ 	
[
∫∫ 	

HttpDelete
∫∫	 
]
∫∫ 
[
ªª 	
Route
ªª	 
(
ªª 
$str
ªª 
)
ªª 
]
ªª 
[
ºº 	
SwaggerResponse
ºº	 
(
ºº 
(
ºº 
int
ºº 
)
ºº 
HttpStatusCode
ºº ,
.
ºº, -
OK
ºº- /
)
ºº/ 0
]
ºº0 1
[
ΩΩ 	
SwaggerResponse
ΩΩ	 
(
ΩΩ 
(
ΩΩ 
int
ΩΩ 
)
ΩΩ 
HttpStatusCode
ΩΩ ,
.
ΩΩ, -
NotFound
ΩΩ- 5
)
ΩΩ5 6
]
ΩΩ6 7
public
ææ 
IActionResult
ææ 
Delete
ææ #
(
ææ# $
[
ææ$ %
	FromRoute
ææ% .
]
ææ. /
int
ææ/ 2
id
ææ3 5
)
ææ5 6
{
øø 	
_userNegocio
¿¿ 
.
¿¿ 
Deletar
¿¿  
(
¿¿  !
id
¿¿! #
)
¿¿# $
;
¿¿$ %
return
¡¡ 
Ok
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 	
}
√√ 
}ƒƒ ≤
bC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Filtros\ErroFiltro.cs
	namespace

 	
Api


 
.

 
Filtros

 
{ 
public 

class 

ErroFiltro 
{ 
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
,4 5
Func6 :
<: ;
Task; ?
>? @
nextA E
)E F
{ 	
try 
{ 
await 
next 
( 
) 
; 
} 
catch 
( 
	Exception 
ex 
)  
{ 
await  
HandleExceptionAsync *
(* +
context+ 2
,2 3
ex4 6
)6 7
;7 8
} 
} 	
private 
static 
Task  
HandleExceptionAsync 0
(0 1
HttpContext1 <
context= D
,D E
	ExceptionF O
	exceptionP Y
)Y Z
{ 	
HttpStatusCode 
code 
;  
switch 
( 
	exception 
) 
{ 
case   "
NaoEncontradoException   +
nfEx  , 0
:  0 1
code!! 
=!! 
HttpStatusCode!! )
.!!) *
NotFound!!* 2
;!!2 3
break"" 
;"" 
case## 
ConflitoException## &
nfEx##' +
:##+ ,
code$$ 
=$$ 
HttpStatusCode$$ )
.$$) *
Conflict$$* 2
;$$2 3
break%% 
;%% 
default&& 
:&& 
code'' 
='' 
HttpStatusCode'' )
.'') *
InternalServerError''* =
;''= >
break(( 
;(( 
})) 
var++ 
result++ 
=++ 
JsonConvert++ $
.++$ %
SerializeObject++% 4
(++4 5
new++5 8
{++9 :
error++; @
=++A B
	exception++C L
.++L M
Message++M T
,++T U
inner++V [
=++\ ]
	exception++^ g
.++g h
InnerException++h v
}++w x
)++x y
;++y z
context,, 
.,, 
Response,, 
.,, 
ContentType,, (
=,,) *
$str,,+ =
;,,= >
context-- 
.-- 
Response-- 
.-- 

StatusCode-- '
=--( )
(--* +
int--+ .
)--. /
code--/ 3
;--3 4
return.. 
context.. 
... 
Response.. #
...# $

WriteAsync..$ .
(... /
result../ 5
)..5 6
;..6 7
}// 	
}00 
}11 Ö
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\LoginInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 

LoginInput 
{		 
public

 
int

 
IdUser

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ‹
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\MembroSquadInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
MembroSquadInput !
{ 
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
IdSquad 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ‹
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\MembroTriboInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
MembroTriboInput !
{		 
public

 
int

 
IdUser

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
int 
IdTribo 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ‹
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\MentorSquadInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
MentorSquadInput !
{		 
public

 
int

 
IdSquad

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ‹
fC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\MentorTriboInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
MentorTriboInput !
{		 
public

 
int

 
IdTribo

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
} 
} –
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\PaisInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
	PaisInput 
{ 
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Sigla 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ë
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\PapelInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 

PapelInput 
{		 
public

 
string

 
Desc

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Sigla 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Nivel 
{ 
get 
; 
set  #
;# $
}% &
} 
} õ
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\SquadInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 

SquadInput 
{		 
public

 
int

 
	IdUnidade

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
IdTribo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Logo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
} 
} È
`C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\TriboInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 

TriboInput 
{		 
public

 
string

 
Logo

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 
bC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\UnidadeInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
UnidadeInput 
{ 
public 
int 
IdPais 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
EstSigla 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 Ã

_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Model\UserInput.cs
	namespace 	
Api
 
. 
Model 
{ 
public 

class 
	UserInput 
{		 
public 
int 
IdPapel 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Tel 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ˘
WC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Program.cs
	namespace 	
Api
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
BuildWebHost 
( 
args 
) 
. 
Run "
(" #
)# $
;$ %
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
=>; =
WebHost 
.  
CreateDefaultBuilder '
(' (
args( ,
), -
. 

UseSetting 
( 
$str +
,+ ,
$str- 3
)3 4
. 

UseStartup 
< 
Startup "
>" #
(# $
)$ %
. %
ConfigureAppConfiguration )
() *
(* +
builderContext+ 9
,9 :
config; A
)A B
=>C E
{ 
var 
env 
= 
builderContext +
.+ ,
HostingEnvironment, >
;> ?
config 
. 
AddJsonFile %
(% &
$str& 8
,8 9
optional: B
:B C
falseD I
,I J
reloadOnChangeK Y
:Y Z
true[ _
)_ `
. 
AddJsonFile #
(# $
$"$ &
appsettings.& 2
{2 3
env3 6
.6 7
EnvironmentName7 F
}F G
.jsonG L
"L M
,M N
optionalO W
:W X
trueY ]
,] ^
reloadOnChange_ m
:m n
trueo s
)s t
;t u
} 
) 
.  
CaptureStartupErrors $
($ %
true% )
)) *
.   
UseIISIntegration   !
(  ! "
)  " #
.!! 
Build!! 
(!! 
)!! 
;!! 
}"" 
}## Ä 
WC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Api\Startup.cs
	namespace 	
Api
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public"" 
IConfiguration"" 
Configuration"" +
{"", -
get"". 1
;""1 2
}""3 4
public(( 
void(( 
ConfigureServices(( %
(((% &
IServiceCollection((& 8
services((9 A
)((A B
{)) 	
services** 
.** 
AddMvc** 
(** 
)** 
;** 
services++ 
.++ 
AddCors++ 
(++ 
)++ 
;++ 
services-- 
.-- 
AddSwaggerGen-- "
(--" #
c--# $
=>--% '
{.. 
c// 
.// 

SwaggerDoc// 
(// 
$str// !
,//! "
new00 
Info00 
{11 
Title22 
=22 
$str22  5
,225 6
Version33 
=33  !
$str33" &
,33& '
Description44 #
=44$ %
$str44& _
,44_ `
Contact55 
=55  !
new55" %
Contact55& -
{66 
Name77  
=77! "
$str77# +
,77+ ,
Url88 
=88  !
$str88" <
}99 
}:: 
):: 
;:: 
var== 
basePath== 
=== 
PlatformServices== /
.==/ 0
Default==0 7
.==7 8
Application==8 C
.==C D
ApplicationBasePath==D W
;==W X
var>> 
xmlPath>> 
=>> 
Path>> "
.>>" #
Combine>># *
(>>* +
basePath>>+ 3
,>>3 4
$str>>5 Q
)>>Q R
;>>R S
c?? 
.?? 
IncludeXmlComments?? $
(??$ %
xmlPath??% ,
)??, -
;??- .
}AA 
)AA 
;AA 
servicesCC 
.CC 
	AddScopedCC 
<CC 

ErroFiltroCC )
>CC) *
(CC* +
)CC+ ,
;CC, -
}DD 	
publicKK 
voidKK 
	ConfigureKK 
(KK 
IApplicationBuilderKK 1
appKK2 5
,KK5 6
IHostingEnvironmentKK7 J
envKKK N
,KKN O
IServiceProviderKKP `
serviceFactoryKKa o
)KKo p
{LL 	
ifMM 
(MM 
envMM 
.MM 
IsDevelopmentMM !
(MM! "
)MM" #
)MM# $
{NN 
appOO 
.OO %
UseDeveloperExceptionPageOO -
(OO- .
)OO. /
;OO/ 0
}PP 
appSS 
.SS 
UseCorsSS 
(SS 
cSS 
=>SS 
{TT 
cUU 
.UU 
AllowAnyHeaderUU  
(UU  !
)UU! "
;UU" #
cVV 
.VV 
AllowAnyMethodVV  
(VV  !
)VV! "
;VV" #
cWW 
.WW 
AllowAnyOriginWW  
(WW  !
)WW! "
;WW" #
}XX 
)XX 
;XX 
appZZ 
.ZZ 

UseSwaggerZZ 
(ZZ 
)ZZ 
;ZZ 
app[[ 
.[[ 
UseSwaggerUI[[ 
([[ 
c[[ 
=>[[ !
{\\ 
c]] 
.]] 
SwaggerEndpoint]] !
(]]! "
$str]]" <
,]]< =
$str]]> T
)]]T U
;]]U V
}^^ 
)^^ 
;^^ 
app`` 
.`` 
UseMvc`` 
(`` 
)`` 
;`` 
}aa 	
}bb 
}cc 