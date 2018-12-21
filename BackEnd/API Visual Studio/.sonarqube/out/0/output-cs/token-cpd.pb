†
nC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Excecoes\ConflitoException.cs
	namespace 	
Dominio
 
. 
Excecoes 
{ 
[ 
Serializable 
] 
public 

class 
ConflitoException "
:# $
	Exception% .
{		 
public

 
ConflitoException

  
(

  !
)

! "
{ 	
} 	
public 
ConflitoException  
(  !
int! $
id% '
)' (
{ 	
} 	
public 
ConflitoException  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
message8 ?
)? @
{ 	
} 	
} 
} â
rC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Excecoes\DadoInvalidoException.cs
	namespace 	
Dominio
 
. 
Excecoes 
{ 
public 

class !
DadoInvalidoException &
:& '
	Exception( 1
{ 
public !
DadoInvalidoException $
($ %
)% &
{ 	
}		 	
public !
DadoInvalidoException $
($ %
int% (
id) +
)+ ,
{ 	
} 	
public !
DadoInvalidoException $
($ %
string% +
message, 3
)3 4
:5 6
base7 ;
(; <
message< C
)C D
{ 	
} 	
} 
} Ÿ
sC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Excecoes\NaoEncontradoException.cs
	namespace 	
Dominio
 
. 
Excecoes 
{ 
[ 
Serializable 
] 
public 

class "
NaoEncontradoException '
:( )
	Exception* 3
{		 
public

 "
NaoEncontradoException

 %
(

% &
)

& '
{ 	
} 	
public "
NaoEncontradoException %
(% &
int& )
id* ,
), -
{ 	
} 	
public "
NaoEncontradoException %
(% &
string& ,
message- 4
)4 5
:6 7
base8 <
(< =
message= D
)D E
{ 	
} 	
} 
} î
YC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Login.cs
	namespace 	
Dominio
 
{ 
public 

class 
Login 
{ 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Username		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Senha

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
} 
} õ
XC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Mapa.cs
	namespace 	
Dominio
 
{ 
public 

class 
Mapa 
{ 
}

 
} Å
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\MembroSquad.cs
	namespace 	
Dominio
 
{ 
public 

class 
MembroSquad 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
IdSquad 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 Å
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\MembroTribo.cs
	namespace 	
Dominio
 
{ 
public 

class 
MembroTribo 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} Å
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\MentorSquad.cs
	namespace 	
Dominio
 
{ 
public 

class 
MentorSquad 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} Å
_C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\MentorTribo.cs
	namespace 	
Dominio
 
{ 
public 

class 
MentorTribo 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} ¹
XC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Pais.cs
	namespace 	
Dominio
 
{ 
public 

class 
Pais 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nome 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Sigla 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 Ñ
YC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Papel.cs
	namespace 	
Dominio
 
{ 
public 

class 
Papel 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} „	
YC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Squad.cs
	namespace 	
Dominio
 
{ 
public 

class 
Squad 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} Ò
YC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Tribo.cs
	namespace 	
Dominio
 
{ 
public 

class 
Tribo 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
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
} Ù
[C:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\Unidade.cs
	namespace 	
Dominio
 
{ 
public 

class 
Unidade 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
IdPais 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
EstSigla 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 µ
XC:\Users\mamaral\Documents\GIT PROJECTS\Scopio\BackEnd\API Visual Studio\Dominio\User.cs
	namespace 	
Dominio
 
{ 
public 

class 
User 
{ 
public		 
int		 
ID		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
int

 
IdPapel
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
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Tel 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Senha 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 