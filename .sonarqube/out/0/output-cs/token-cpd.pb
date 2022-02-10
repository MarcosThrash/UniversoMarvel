ò
[C:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Controllers\HomeController.cs
	namespace

 	
InformacoesMarvel


 
.

 
Controllers

 '
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
Route	 
( 
$str &
)& '
]' (
public   
IActionResult   
Error   "
(  " #
int  # &
id  ' )
)  ) *
{!! 	
var"" 
	modelErro"" 
="" 
new"" 
ErrorViewModel""  .
("". /
)""/ 0
;""0 1
if$$ 
($$ 
id$$ 
==$$ 
$num$$ 
)$$ 
{%% 
	modelErro&& 
.&& 
Mensagem&& "
=&&# $
$str&&% l
;&&l m
	modelErro'' 
.'' 
Titulo''  
=''! "
$str''# 5
;''5 6
	modelErro(( 
.(( 
ErroCode(( "
=((# $
id((% '
;((' (
})) 
else** 
if** 
(** 
id** 
==** 
$num** 
)** 
{++ 
	modelErro,, 
.,, 
Mensagem,, "
=,,# $
$str-- l
;--l m
	modelErro.. 
... 
Titulo..  
=..! "
$str..# @
;..@ A
	modelErro// 
.// 
ErroCode// "
=//# $
id//% '
;//' (
}00 
else11 
if11 
(11 
id11 
==11 
$num11 
)11 
{22 
	modelErro33 
.33 
Mensagem33 "
=33# $
$str44 z
;44z {
	modelErro55 
.55 
Titulo55  
=55! "
$str55# @
;55@ A
	modelErro66 
.66 
ErroCode66 "
=66# $
id66% '
;66' (
}77 
else88 
if88 
(88 
id88 
==88 
$num88 
)88 
{99 
	modelErro:: 
.:: 
Mensagem:: "
=::# $
$str::% N
;::N O
	modelErro;; 
.;; 
Titulo;;  
=;;! "
$str;;# 2
;;;2 3
	modelErro<< 
.<< 
ErroCode<< "
=<<# $
id<<% '
;<<' (
}== 
else>> 
{?? 
return@@ 

StatusCode@@ !
(@@! "
$num@@" %
)@@% &
;@@& '
}AA 
returnCC 
ViewCC 
(CC 
$strCC 
,CC  
	modelErroCC! *
)CC* +
;CC+ ,
}DD 	
}EE 
}FF „
[C:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Controllers\MainController.cs
	namespace		 	
InformacoesMarvel		
 
.		 
Controllers		 '
{

 
public 

class 
MainController 
:  !

Controller" ,
{ 
	protected 
bool #
VerificaErrosNoResponse .
(. /
ErroResponse/ ;
erro< @
)@ A
{ 	
if 
( 
erro 
!= 
null 
) 
{ 

ModelState 
. 
AddModelError (
(( )
string) /
./ 0
Empty0 5
,5 6
erro7 ;
.; <
Code< @
)@ A
;A B
return 
true 
; 
} 
return 
false 
; 
} 	
} 
} §#
cC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Controllers\MarvelComicsController.cs
	namespace 	
InformacoesMarvel
 
. 
Controllers '
{		 
public

 

class

 "
MarvelComicsController

 '
:

( )
MainController

* 8
{ 
private 
readonly 
IMarvelService '
_servicoMarvel( 6
;6 7
public "
MarvelComicsController %
(% &
IMarvelService& 4
servicoMarvel5 B
)B C
{ 	
_servicoMarvel 
= 
servicoMarvel *
;* +
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
int/ 2
limit3 8
=9 :
$num; =
,= >
int? B
offsetC I
=J K
$numL M
)M N
{ 	
var 
result 
= 
await 
_servicoMarvel -
.- .
Comics. 4
(4 5
limit5 :
,: ;
offset< B
)B C
;C D#
VerificaErrosNoResponse #
(# $
result$ *
.* +
ErrosReponse+ 7
)7 8
;8 9
return 
View 
( 
result 
. 
Values %
)% &
;& '
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Comic) .
(. /
int/ 2
id3 5
)5 6
{ 	
var 
result 
= 
await 
_servicoMarvel -
.- .
Comic. 3
(3 4
id4 6
)6 7
;7 8#
VerificaErrosNoResponse #
(# $
result$ *
.* +
ErrosReponse+ 7
)7 8
;8 9
return 
View 
( 
result 
. 
Value $
)$ %
;% &
} 	
public!! 
async!! 
Task!! 
<!! 
IActionResult!! '
>!!' (
IndexPersonagens!!) 9
(!!9 :
)!!: ;
{"" 	
var## 
result## 
=## 
await## 
_servicoMarvel## -
.##- .
TotalPersonagens##. >
(##> ?
)##? @
;##@ A
ViewData$$ 
[$$ 
$str$$ '
]$$' (
=$$) *
result$$+ 1
;$$1 2
return%% 
View%% 
(%% 
)%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
Personagens(() 4
(((4 5
int((5 8
limit((9 >
=((> ?
$num((? A
,((A B
int((C F
offset((G M
=((M N
$num((N O
)((O P
{)) 	
var** 
result** 
=** 
await** 
_servicoMarvel** -
.**- .
Personagens**. 9
(**9 :
limit**: ?
,**? @
offset**A G
)**G H
;**H I#
VerificaErrosNoResponse++ #
(++# $
result++$ *
.++* +
ErrosReponse+++ 7
)++7 8
;++8 9
return,, 
PartialView,, 
(,, 
$str,, 8
,,,8 9
result,,: @
.,,@ A
Values,,A G
),,G H
;,,H I
}-- 	
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (

Personagem//) 3
(//3 4
int//4 7
id//8 :
)//: ;
{00 	
var11 
result11 
=11 
await11 
_servicoMarvel11 -
.11- .

Personagem11. 8
(118 9
id119 ;
)11; <
;11< =#
VerificaErrosNoResponse22 #
(22# $
result22$ *
.22* +
ErrosReponse22+ 7
)227 8
;228 9
return33 
View33 
(33 
result33 
.33 
Value33 $
)33$ %
;33% &
}44 	
}55 
}66 ô
WC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Extensions\AppSettings.cs
	namespace 	
InformacoesMarvel
 
. 

Extensions &
{ 
public 

class 
AppSettings 
{		 
public

 
string

 
MarvelBaseUrl

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 
MarvelChavePublica (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
MarvelChavePrivada (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ¯
bC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Extensions\CustomRequestException.cs
	namespace 	
InformacoesMarvel
 
. 

Extensions &
{ 
public		 

class		 "
CustomRequestException		 '
:		( )
	Exception		* 3
{

 
public 
HttpStatusCode 

StatusCode (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public "
CustomRequestException %
(% &
)& '
{' (
}) *
public "
CustomRequestException %
(% &
HttpStatusCode& 4

statusCode5 ?
)? @
{ 	

StatusCode 
= 

statusCode #
;# $
} 	
} 
} ﬂ
_C:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Extensions\ExceptionMiddleware.cs
	namespace 	
InformacoesMarvel
 
. 

Extensions &
{ 
public		 

class		 
ExceptionMiddleware		 $
{

 
private 
readonly 
RequestDelegate (
_next) .
;. /
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
)7 8
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
httpContext2 =
)= >
{ 	
try 
{ 
await 
_next 
( 
httpContext '
)' (
;( )
} 
catch 
( "
CustomRequestException )
ex* ,
), -
{ '
HandleRequestExceptionAsync +
(+ ,
httpContext, 7
,7 8
ex9 ;
); <
;< =
} 
} 	
private 
void '
HandleRequestExceptionAsync 0
(0 1
HttpContext1 <
httpContext= H
,H I"
CustomRequestExceptionJ `
exa c
)c d
{   	
httpContext!! 
.!! 
Response!!  
.!!  !

StatusCode!!! +
=!!, -
(!!. /
int!!/ 2
)!!2 3
ex!!3 5
.!!5 6

StatusCode!!6 @
;!!@ A
}"" 	
}## 
}$$ ä
aC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Extensions\SummaryViewComponente.cs
	namespace 	
InformacoesMarvel
 
. 

Extensions &
{ 
public		 

class		  
SummaryViewComponent		 %
:		& '
ViewComponent		( 5
{

 
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
)< =
{ 	
return 
View 
( 
) 
; 
} 	
} 
} õ
PC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Models\ComicsVM.cs
	namespace 	
InformacoesMarvel
 
. 
Models "
{ 
public 

class 
ComicsVM 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Titulo 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
List		 
<		 
string		 
>		 
	Criadores		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
List

 
<

 
PersonagemVM

  
>

  !
Personagens

" -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public 
string 

ImagemPath  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
QuantidadeDePaginas &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
List 
< 
string 
> 
	Descricao %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
ResourceURI !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˘
VC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Models\ErrorViewModel.cs
	namespace 	
InformacoesMarvel
 
. 
Models "
{ 
public 

class 
ErrorViewModel 
{ 
public 
int 
ErroCode 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Titulo 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Mensagem		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} ÿ
TC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Models\PersonagemVM.cs
	namespace 	
InformacoesMarvel
 
. 
Models "
{ 
public 

class 
PersonagemVM 
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
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
string 

ImagemPath  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
ComicsVM 
> 
Comics $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ß

HC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Program.cs
	namespace

 	
InformacoesMarvel


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Ø
WC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\IMarvelService.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
{		 
public

 

	interface

 
IMarvelService

 #
{ 
Task 
< 
ResponseResult 
< 
ComicsVM $
>$ %
>% &
Comic' ,
(, -
int- 0
id1 3
)3 4
;4 5
Task 
< 
ResponseResult 
< 
ComicsVM $
>$ %
>% &
Comics' -
(- .
int. 1
limit2 7
,7 8
int9 <
offset= C
)C D
;D E
Task 
< 
ResponseResult 
< 
PersonagemVM (
>( )
>) *
ComicsPersonagens+ <
(< =
int= @
idComicA H
)H I
;I J
Task 
< 
ResponseResult 
< 
PersonagemVM (
>( )
>) *

Personagem+ 5
(5 6
int6 9
id: <
)< =
;= >
Task 
< 
ResponseResult 
< 
PersonagemVM (
>( )
>) *
Personagens+ 6
(6 7
int7 :
limit; @
,@ A
intB E
offsetF L
)L M
;M N
Task 
< 
ResponseResult 
< 
ComicsVM $
>$ %
>% &
PersonagensComics' 8
(8 9
int9 <
idPersonagem= I
)I J
;J K
Task 
< 
int 
> 
TotalPersonagens "
(" #
)# $
;$ %
} 
} ˆi
VC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\MarvelService.cs
	namespace

 	
InformacoesMarvel


 
.

 
Servico

 #
{ 
public 

class 
MarvelService 
: 
MarvelServiceBase  1
,1 2
IMarvelService3 A
{ 
public 
readonly 

HttpClient "
_httpClient# .
;. /
private 
readonly 
IOptions !
<! "
AppSettings" -
>- .
	_settings/ 8
;8 9
public 
MarvelService 
( 

HttpClient '

httpClient( 2
,2 3
IOptions4 <
<< =
AppSettings= H
>H I
settingsJ R
)R S
{ 	

httpClient 
. 
BaseAddress "
=# $
new% (
Uri) ,
(, -
settings- 5
.5 6
Value6 ;
.; <
MarvelBaseUrl< I
)I J
;J K
_httpClient 
= 

httpClient $
;$ %
	_settings 
= 
settings  
;  !
} 	
public 
async 
Task 
< 
ResponseResult (
<( )
ComicsVM) 1
>1 2
>2 3
Comic4 9
(9 :
int: =
id> @
)@ A
{ 	
var 
response 
= 
await  
_httpClient! ,
., -
GetAsync- 5
(5 6
$"6 8
$str8 J
{J K
idK M
}M N
$strN O
{O P
GerarAutenticacaoP a
(a b
	_settingsb k
)k l
}l m
"m n
)n o
;o p
if 
( 
! 
TratarErrosResponse $
($ %
response% -
)- .
). /
return 
new 
ResponseResult )
<) *
ComicsVM* 2
>2 3
(3 4
await4 9'
DeserializarObjetosResponse: U
<U V
ErroResponseV b
>b c
(c d
responsed l
)l m
)m n
;n o
var 
dados 
= 
await '
DeserializarObjetosResponse 9
<9 :
Root: >
>> ?
(? @
response@ H
)H I
;I J
var!! 
comic!! 
=!! 
new!! 
ResponseResult!! *
<!!* +
ComicsVM!!+ 3
>!!3 4
(!!4 5
CriarComicVM!!5 A
(!!A B
dados!!B G
)!!G H
)!!H I
;!!I J
var## 
listaDePersonagens## "
=### $
await##% *
ComicsPersonagens##+ <
(##< =
comic##= B
.##B C
Value##C H
.##H I
Id##I K
)##K L
;##L M
comic%% 
.%% 
Value%% 
.%% 
Personagens%% #
=%%$ %
listaDePersonagens%%& 8
.%%8 9
Values%%9 ?
;%%? @
return'' 
comic'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
ResponseResult** (
<**( )
ComicsVM**) 1
>**1 2
>**2 3
Comics**4 :
(**: ;
int**; >
limit**? D
,**D E
int**F I
offset**J P
)**P Q
{++ 	
var,, 
response,, 
=,, 
await,,  
_httpClient,,! ,
.,,, -
GetAsync,,- 5
(,,5 6
$",,6 8
$str,,8 I
{,,I J
	Paginacao,,J S
(,,S T
limit,,T Y
,,,Y Z
offset,,[ a
),,a b
},,b c
{,,c d
GerarAutenticacao,,d u
(,,u v
	_settings,,v 
)	,, Ä
}
,,Ä Å
"
,,Å Ç
)
,,Ç É
;
,,É Ñ
if.. 
(.. 
!.. 
TratarErrosResponse.. $
(..$ %
response..% -
)..- .
)... /
return// 
new// 
ResponseResult// )
<//) *
ComicsVM//* 2
>//2 3
(//3 4
await//4 9'
DeserializarObjetosResponse//: U
<//U V
ErroResponse//V b
>//b c
(//c d
response//d l
)//l m
)//m n
;//n o
var11 
dados11 
=11 
await11 '
DeserializarObjetosResponse11 9
<119 :
Root11: >
>11> ?
(11? @
response11@ H
)11H I
;11I J
return33 
new33 
ResponseResult33 %
<33% &
ComicsVM33& .
>33. /
(33/ 0
CriaListaComicsVM330 A
(33A B
dados33B G
)33G H
)33H I
;33I J
}44 	
public66 
async66 
Task66 
<66 
ResponseResult66 (
<66( )
PersonagemVM66) 5
>665 6
>666 7
ComicsPersonagens668 I
(66I J
int66J M
idComic66N U
)66U V
{77 	
var88 
response88 
=88 
await88  
_httpClient88! ,
.88, -
GetAsync88- 5
(885 6
$"886 8
$str888 J
{88J K
idComic88K R
}88R S
$str88S _
{88_ `
GerarAutenticacao88` q
(88q r
	_settings88r {
)88{ |
}88| }
"88} ~
)88~ 
;	88 Ä
if:: 
(:: 
!:: 
TratarErrosResponse:: $
(::$ %
response::% -
)::- .
)::. /
return;; 
new;; 
ResponseResult;; )
<;;) *
PersonagemVM;;* 6
>;;6 7
(;;7 8
await;;8 ='
DeserializarObjetosResponse;;> Y
<;;Y Z
ErroResponse;;Z f
>;;f g
(;;g h
response;;h p
);;p q
);;q r
;;;r s
var== 
dados== 
=== 
await== '
DeserializarObjetosResponse== 9
<==9 :
Root==: >
>==> ?
(==? @
response==@ H
)==H I
;==I J
return>> 
new>> 
ResponseResult>> %
<>>% &
PersonagemVM>>& 2
>>>2 3
(>>3 4!
CriaListaPersonagemVM>>4 I
(>>I J
dados>>J O
)>>O P
)>>P Q
;>>Q R
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ResponseResultAA (
<AA( )
PersonagemVMAA) 5
>AA5 6
>AA6 7

PersonagemAA8 B
(AAB C
intAAC F
idAAG I
)AAI J
{BB 	
varCC 
responseCC 
=CC 
awaitCC  
_httpClientCC! ,
.CC, -
GetAsyncCC- 5
(CC5 6
$"CC6 8
$strCC8 N
{CCN O
idCCO Q
}CCQ R
$strCCR S
{CCS T
GerarAutenticacaoCCT e
(CCe f
	_settingsCCf o
)CCo p
}CCp q
"CCq r
)CCr s
;CCs t
ifEE 
(EE 
!EE 
TratarErrosResponseEE $
(EE$ %
responseEE% -
)EE- .
)EE. /
returnFF 
newFF 
ResponseResultFF )
<FF) *
PersonagemVMFF* 6
>FF6 7
(FF7 8
awaitFF8 ='
DeserializarObjetosResponseFF> Y
<FFY Z
ErroResponseFFZ f
>FFf g
(FFg h
responseFFh p
)FFp q
)FFq r
;FFr s
varHH 
dadosHH 
=HH 
awaitHH '
DeserializarObjetosResponseHH 9
<HH9 :
RootHH: >
>HH> ?
(HH? @
responseHH@ H
)HHH I
;HHI J
varJJ 
	resultadoJJ 
=JJ 
newJJ 
ResponseResultJJ  .
<JJ. /
PersonagemVMJJ/ ;
>JJ; <
(JJ< =
CriarPersonagemVMJJ= N
(JJN O
dadosJJO T
)JJT U
)JJU V
;JJV W
varLL 
listaDeComicsLL 
=LL 
awaitLL  %
PersonagensComicsLL& 7
(LL7 8
	resultadoLL8 A
.LLA B
ValueLLB G
.LLG H
IdLLH J
)LLJ K
;LLK L
	resultadoNN 
.NN 
ValueNN 
.NN 
ComicsNN "
=NN# $
listaDeComicsNN% 2
.NN2 3
ValuesNN3 9
;NN9 :
returnPP 
	resultadoPP 
;PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
ResponseResultSS (
<SS( )
PersonagemVMSS) 5
>SS5 6
>SS6 7
PersonagensSS8 C
(SSC D
intSSD G
limitSSH M
,SSM N
intSSO R
offsetSSS Y
)SSY Z
{TT 	
varUU 
responseUU 
=UU 
awaitUU  
_httpClientUU! ,
.UU, -
GetAsyncUU- 5
(UU5 6
$"UU6 8
$strUU8 M
{UUM N
	PaginacaoUUN W
(UUW X
limitUUX ]
,UU] ^
offsetUU_ e
)UUe f
}UUf g
{UUg h
GerarAutenticacaoUUh y
(UUy z
	_settings	UUz É
)
UUÉ Ñ
}
UUÑ Ö
"
UUÖ Ü
)
UUÜ á
;
UUá à
ifWW 
(WW 
!WW 
TratarErrosResponseWW $
(WW$ %
responseWW% -
)WW- .
)WW. /
returnXX 
newXX 
ResponseResultXX )
<XX) *
PersonagemVMXX* 6
>XX6 7
(XX7 8
awaitXX8 ='
DeserializarObjetosResponseXX> Y
<XXY Z
ErroResponseXXZ f
>XXf g
(XXg h
responseXXh p
)XXp q
)XXq r
;XXr s
varZZ 
dadosZZ 
=ZZ 
awaitZZ '
DeserializarObjetosResponseZZ 9
<ZZ9 :
RootZZ: >
>ZZ> ?
(ZZ? @
responseZZ@ H
)ZZH I
;ZZI J
return[[ 
new[[ 
ResponseResult[[ %
<[[% &
PersonagemVM[[& 2
>[[2 3
([[3 4!
CriaListaPersonagemVM[[4 I
([[I J
dados[[J O
)[[O P
)[[P Q
;[[Q R
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
ResponseResult^^ (
<^^( )
ComicsVM^^) 1
>^^1 2
>^^2 3
PersonagensComics^^4 E
(^^E F
int^^F I
idPersonagem^^J V
)^^V W
{__ 	
var`` 
response`` 
=`` 
await``  
_httpClient``! ,
.``, -
GetAsync``- 5
(``5 6
$"``6 8
$str``8 N
{``N O
idPersonagem``O [
}``[ \
$str``\ d
{``d e
GerarAutenticacao``e v
(``v w
	_settings	``w Ä
)
``Ä Å
}
``Å Ç
"
``Ç É
)
``É Ñ
;
``Ñ Ö
ifbb 
(bb 
!bb 
TratarErrosResponsebb $
(bb$ %
responsebb% -
)bb- .
)bb. /
returncc 
newcc 
ResponseResultcc )
<cc) *
ComicsVMcc* 2
>cc2 3
(cc3 4
awaitcc4 9'
DeserializarObjetosResponsecc: U
<ccU V
ErroResponseccV b
>ccb c
(ccc d
responseccd l
)ccl m
)ccm n
;ccn o
varee 
dadosee 
=ee 
awaitee '
DeserializarObjetosResponseee 9
<ee9 :
Rootee: >
>ee> ?
(ee? @
responseee@ H
)eeH I
;eeI J
returngg 
newgg 
ResponseResultgg %
<gg% &
ComicsVMgg& .
>gg. /
(gg/ 0
CriaListaComicsVMgg0 A
(ggA B
dadosggB G
)ggG H
)ggH I
;ggI J
}hh 	
publicjj 
asyncjj 
Taskjj 
<jj 
intjj 
>jj 
TotalPersonagensjj /
(jj/ 0
)jj0 1
{kk 	
varll 
responsell 
=ll 
awaitll  
_httpClientll! ,
.ll, -
GetAsyncll- 5
(ll5 6
$"ll6 8
$strll8 M
{llM N
	PaginacaollN W
(llW X
$numllX Y
,llY Z
$numll[ \
)ll\ ]
}ll] ^
{ll^ _
GerarAutenticacaoll_ p
(llp q
	_settingsllq z
)llz {
}ll{ |
"ll| }
)ll} ~
;ll~ 
varmm 
dadosmm 
=mm 
awaitmm '
DeserializarObjetosResponsemm 9
<mm9 :
Rootmm: >
>mm> ?
(mm? @
responsemm@ H
)mmH I
;mmI J
returnnn 
dadosnn 
.nn 
Datann 
.nn 
Totalnn #
;nn# $
}oo 	
}qq 
}rr Ö]
ZC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\MarvelServiceBase.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
{ 
public 

abstract 
class 
MarvelServiceBase +
:, -
Service. 5
{ 
	protected 
string 
GerarAutenticacao *
(* +
IOptions+ 3
<3 4
AppSettings4 ?
>? @
settingsA I
)I J
{ 	
var 
md5 
= 
MD5 
. 
Create  
(  !
)! "
;" #
var 
data 
= 
DateTime 
.  
Now  #
.# $
ToShortDateString$ 5
(5 6
)6 7
;7 8
var 
dadosACriptografar "
=# $
$"% '
{' (
data( ,
}, -
{- .
settings. 6
.6 7
Value7 <
.< =
MarvelChavePrivada= O
}O P
{P Q
settingsQ Y
.Y Z
ValueZ _
._ `
MarvelChavePublica` r
}r s
"s t
;t u
var 

inputBytes 
= 
System #
.# $
Text$ (
.( )
Encoding) 1
.1 2
ASCII2 7
.7 8
GetBytes8 @
(@ A
dadosACriptografarA S
)S T
;T U
var 
	hashBytes 
= 
md5 
.  
ComputeHash  +
(+ ,

inputBytes, 6
)6 7
;7 8
StringBuilder 
sb 
= 
new "
StringBuilder# 0
(0 1
)1 2
;2 3
for 
( 
int 
i 
= 
$num 
; 
i 
< 
	hashBytes  )
.) *
Length* 0
;0 1
i2 3
++3 5
)5 6
{ 
sb 
. 
Append 
( 
	hashBytes #
[# $
i$ %
]% &
.& '
ToString' /
(/ 0
$str0 4
)4 5
)5 6
;6 7
} 
return 
$" 
$str 
{ 
data 
} 
$str &
{& '
settings' /
./ 0
Value0 5
.5 6
MarvelChavePublica6 H
}H I
$strI O
{O P
sbP R
.R S
ToStringS [
([ \
)\ ]
.] ^
ToLower^ e
(e f
)f g
}g h
"h i
;i j
} 	
	protected!! 
List!! 
<!! 
ComicsVM!! 
>!!  
CriaListaComicsVM!!! 2
(!!2 3
Root!!3 7
dados!!8 =
)!!= >
{"" 	
var## 
comicsVm## 
=## 
new## 
List## #
<### $
ComicsVM##$ ,
>##, -
(##- .
)##. /
;##/ 0
foreach$$ 
($$ 
var$$ 
item$$ 
in$$  
dados$$! &
.$$& '
Data$$' +
.$$+ ,
Results$$, 3
)$$3 4
{%% 
comicsVm&& 
.&& 
Add&& 
(&& 
new'' 
ComicsVM''  
{(( 
Id)) 
=)) 
item)) !
.))! "
Id))" $
,))$ %
Titulo** 
=**  
item**! %
.**% &
Title**& +
,**+ ,
	Criadores++ !
=++" #
item++$ (
.++( )
Creators++) 1
.++1 2
Items++2 7
.++7 8
Select++8 >
(++> ?
c++? @
=>++A C
$"++D F
{++F G
c++G H
.++H I
Name++I M
}++M N
$str++N P
"++P Q
)++Q R
.++R S
ToList++S Y
(++Y Z
)++Z [
,++[ \

ImagemPath,, "
=,,# $
$",,% '
{,,' (
item,,( ,
.,,, -
	Thumbnail,,- 6
.,,6 7
Path,,7 ;
},,; <
$str,,< =
{,,= >
item,,> B
.,,B C
	Thumbnail,,C L
.,,L M
	Extension,,M V
},,V W
",,W X
,,,X Y
QuantidadeDePaginas-- +
=--, -
item--. 2
.--2 3
	PageCount--3 <
,--< =
	Descricao.. !
=.." #
item..$ (
...( )
TextObjects..) 4
...4 5
Select..5 ;
(..; <
t..< =
=>..> @
$"..A C
{..C D
t..D E
...E F
Text..F J
}..J K
$str..K M
"..M N
)..N O
...O P
ToList..P V
(..V W
)..W X
}// 
)00 
;00 
}11 
return22 
comicsVm22 
;22 
}33 	
	protected55 
ComicsVM55 
CriarComicVM55 '
(55' (
Root55( ,
dados55- 2
)552 3
{66 	
var77 
comicsVm77 
=77 
new77 
ComicsVM77 '
(77' (
)77( )
;77) *
foreach88 
(88 
var88 
item88 
in88  
dados88! &
.88& '
Data88' +
.88+ ,
Results88, 3
)883 4
{99 
comicsVm:: 
.:: 
Id:: 
=:: 
item:: "
.::" #
Id::# %
;::% &
comicsVm;; 
.;; 
Titulo;; 
=;;  !
item;;" &
.;;& '
Title;;' ,
;;;, -
comicsVm<< 
.<< 
	Criadores<< "
=<<# $
item<<% )
.<<) *
Creators<<* 2
.<<2 3
Items<<3 8
.<<8 9
Select<<9 ?
(<<? @
c<<@ A
=><<B D
$"<<E G
{<<G H
c<<H I
.<<I J
Name<<J N
}<<N O
$str<<O Q
"<<Q R
)<<R S
.<<S T
ToList<<T Z
(<<Z [
)<<[ \
;<<\ ]
comicsVm== 
.== 

ImagemPath== #
===$ %
$"==& (
{==( )
item==) -
.==- .
	Thumbnail==. 7
.==7 8
Path==8 <
}==< =
$str=== >
{==> ?
item==? C
.==C D
	Thumbnail==D M
.==M N
	Extension==N W
}==W X
"==X Y
;==Y Z
comicsVm>> 
.>> 
QuantidadeDePaginas>> ,
=>>- .
item>>/ 3
.>>3 4
	PageCount>>4 =
;>>= >
comicsVm?? 
.?? 
	Descricao?? "
=??# $
item??% )
.??) *
TextObjects??* 5
.??5 6
Select??6 <
(??< =
t??= >
=>??? A
$"??B D
{??D E
t??E F
.??F G
Text??G K
}??K L
$str??L N
"??N O
)??O P
.??P Q
ToList??Q W
(??W X
)??X Y
;??Y Z
}@@ 
returnAA 
comicsVmAA 
;AA 
}BB 	
	protectedDD 
ListDD 
<DD 
PersonagemVMDD #
>DD# $!
CriaListaPersonagemVMDD% :
(DD: ;
RootDD; ?
dadosDD@ E
)DDE F
{EE 	
varFF 
comicsVmFF 
=FF 
newFF 
ListFF #
<FF# $
PersonagemVMFF$ 0
>FF0 1
(FF1 2
)FF2 3
;FF3 4
foreachGG 
(GG 
varGG 
itemGG 
inGG  
dadosGG! &
.GG& '
DataGG' +
.GG+ ,
ResultsGG, 3
)GG3 4
{HH 
comicsVmII 
.II 
AddII 
(II 
newJJ 
PersonagemVMJJ $
{KK 
IdLL 
=LL 
itemLL !
.LL! "
IdLL" $
,LL$ %
NomeMM 
=MM 
itemMM #
.MM# $
NameMM$ (
,MM( )
	DescricaoNN !
=NN" #
itemNN$ (
.NN( )
DescriptionNN) 4
,NN4 5

ImagemPathOO "
=OO# $
itemOO% )
.OO) *
	ThumbnailOO* 3
.OO3 4
PathOO4 8
+OO9 :
$strOO; >
+OO? @
itemOOA E
.OOE F
	ThumbnailOOF O
.OOO P
	ExtensionOOP Y
}PP 
)QQ 
;QQ 
}RR 
returnSS 
comicsVmSS 
;SS 
}TT 	
	protectedVV 
PersonagemVMVV 
CriarPersonagemVMVV 0
(VV0 1
RootVV1 5
dadosVV6 ;
)VV; <
{WW 	
varXX 

personagemXX 
=XX 
newXX  
PersonagemVMXX! -
(XX- .
)XX. /
;XX/ 0
foreachYY 
(YY 
varYY 
itemYY 
inYY  
dadosYY! &
.YY& '
DataYY' +
.YY+ ,
ResultsYY, 3
)YY3 4
{ZZ 

personagem[[ 
.[[ 
Id[[ 
=[[ 
item[[  $
.[[$ %
Id[[% '
;[[' (

personagem\\ 
.\\ 
Nome\\ 
=\\  !
item\\" &
.\\& '
Name\\' +
;\\+ ,

personagem]] 
.]] 
	Descricao]] $
=]]% &
item]]' +
.]]+ ,
Description]], 7
;]]7 8

personagem^^ 
.^^ 

ImagemPath^^ %
=^^& '
item^^( ,
.^^, -
	Thumbnail^^- 6
.^^6 7
Path^^7 ;
+^^< =
$str^^> A
+^^B C
item^^D H
.^^H I
	Thumbnail^^I R
.^^R S
	Extension^^S \
;^^\ ]
}__ 
varaa 
comicsaa 
=aa 
dadosaa 
.aa 
Dataaa #
.aa# $
Resultsaa$ +
.aa+ ,
FirstOrDefaultaa, :
(aa: ;
)aa; <
.aa< =
Comicsaa= C
.aaC D
ItemsaaD I
;aaI J

personagembb 
.bb 
Comicsbb 
=bb 
newbb  #
Listbb$ (
<bb( )
ComicsVMbb) 1
>bb1 2
(bb2 3
)bb3 4
;bb4 5
foreachcc 
(cc 
varcc 
itemcc 
incc  
comicscc! '
)cc' (
{dd 

personagemee 
.ee 
Comicsee !
.ee! "
Addee" %
(ee% &
newff 
ComicsVMff  
{gg 
Titulohh 
=hh  
itemhh! %
.hh% &
Namehh& *
,hh* +
ResourceURIii #
=ii$ %
itemii& *
.ii* +
ResourceURIii+ 6
}jj 
)kk 
;kk 
}ll 
returnnn 

personagemnn 
;nn 
}oo 	
	protectedqq 
stringqq 
	Paginacaoqq "
(qq" #
intqq# &
limitqq' ,
,qq, -
intqq. 1
offsetqq2 8
)qq8 9
{rr 	
returnss 
$"ss 
$strss 
{ss 
limitss "
}ss" #
$strss# +
{ss+ ,
offsetss, 2
}ss2 3
$strss3 4
"ss4 5
;ss5 6
}tt 	
}uu 
}vv ı
PC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\Service.cs
	namespace		 	
InformacoesMarvel		
 
.		 
Servico		 #
{

 
public 

abstract 
class 
Service !
{ 
public 
bool 
TratarErrosResponse '
(' (
HttpResponseMessage( ;
httpResponseMessage< O
)O P
{ 	
switch 
( 
( 
int 
) 
httpResponseMessage ,
., -

StatusCode- 7
)7 8
{ 
case 
$num 
: 
case 
$num 
: 
case 
$num 
: 
case 
$num 
: 
throw 
new "
CustomRequestException 4
(4 5
httpResponseMessage5 H
.H I

StatusCodeI S
)S T
;T U
case 
$num 
: 
return 
false  
;  !
} 
httpResponseMessage 
.  #
EnsureSuccessStatusCode  7
(7 8
)8 9
;9 :
return 
true 
; 
} 	
public 
async 
Task 
< 
T 
> '
DeserializarObjetosResponse 8
<8 9
T9 :
>: ;
(; <
HttpResponseMessage< O
responseMesnageP _
)_ `
{   	
var!! 
options!! 
=!! 
new!! !
JsonSerializerOptions!! 3
{!!4 5'
PropertyNameCaseInsensitive!!6 Q
=!!R S
true!!T X
}!!Y Z
;!!Z [
return"" 
JsonSerializer"" !
.""! "
Deserialize""" -
<""- .
T"". /
>""/ 0
(""0 1
await""1 6
responseMesnage""7 F
.""F G
Content""G N
.""N O
ReadAsStringAsync""O `
(""` a
)""a b
,""b c
options""d k
)""k l
;""l m
}## 	
}$$ 
}%% Ë]
aC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\ServicoMarvelModels\Data.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
.# $
ServicoMarvelModels$ 7
{ 
public 

class 
Item 
{		 
public

 
string

 
ResourceURI

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class 
Creators 
{ 
public 
int 
	Available 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
CollectionURI #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
List 
< 
Item 
> 
Items 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Returned 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 

Characters 
{ 
public 
int 
	Available 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
CollectionURI #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
List 
< 
Item 
> 
Items 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Returned 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
Series 
{   
public!! 
int!! 
	Available!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public"" 
string"" 
CollectionURI"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
public## 
List## 
<## 
Item## 
>## 
Items## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
int$$ 
Returned$$ 
{$$ 
get$$ !
;$$! "
set$$# &
;$$& '
}$$( )
}%% 
public'' 

class'' 
Comics'' 
{(( 
public)) 
int)) 
	Available)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public** 
string** 
CollectionURI** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
public++ 
List++ 
<++ 
Item++ 
>++ 
Items++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public,, 
int,, 
Returned,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
}-- 
public// 

class// 
Events// 
{00 
public11 
int11 
	Available11 
{11 
get11 "
;11" #
set11$ '
;11' (
}11) *
public22 
string22 
CollectionURI22 #
{22$ %
get22& )
;22) *
set22+ .
;22. /
}220 1
public33 
List33 
<33 
Item33 
>33 
Items33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
public44 
int44 
Returned44 
{44 
get44 !
;44! "
set44# &
;44& '
}44( )
}55 
public77 

class77 
OriginalIssue77 
{88 
public99 
string99 
ResourceURI99 !
{99" #
get99$ '
;99' (
set99) ,
;99, -
}99. /
public:: 
string:: 
Name:: 
{:: 
get::  
;::  !
set::" %
;::% &
}::' (
};; 
public== 

class== 

TextObject== 
{>> 
public?? 
string?? 
Type?? 
{?? 
get??  
;??  !
set??" %
;??% &
}??' (
public@@ 
string@@ 
Language@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicAA 
stringAA 
TextAA 
{AA 
getAA  
;AA  !
setAA" %
;AA% &
}AA' (
}BB 
publicDD 

classDD 
ResultDD 
{EE 
publicFF 
intFF 
IdFF 
{FF 
getFF 
;FF 
setFF  
;FF  !
}FF" #
publicGG 
stringGG 
TitleGG 
{GG 
getGG !
;GG! "
setGG# &
;GG& '
}GG( )
publicHH 
stringHH 
NameHH 
{HH 
getHH  
;HH  !
setHH" %
;HH% &
}HH' (
publicII 
stringII 
ResourceURIII !
{II" #
getII$ '
;II' (
setII) ,
;II, -
}II. /
publicJJ 
StoriesJJ 
StoriesJJ 
{JJ  
getJJ! $
;JJ$ %
setJJ& )
;JJ) *
}JJ+ ,
publicKK 
stringKK 
DescriptionKK !
{KK" #
getKK$ '
;KK' (
setKK) ,
;KK, -
}KK. /
publicLL 
ListLL 
<LL 

TextObjectLL 
>LL 
TextObjectsLL  +
{LL, -
getLL. 1
;LL1 2
setLL3 6
;LL6 7
}LL8 9
publicMM 
intMM 
	PageCountMM 
{MM 
getMM "
;MM" #
setMM$ '
;MM' (
}MM) *
publicNN 
stringNN 
TypeNN 
{NN 
getNN  
;NN  !
setNN" %
;NN% &
}NN' (
publicOO 
stringOO 
ModifiedOO 
{OO  
getOO! $
;OO$ %
setOO& )
;OO) *
}OO+ ,
publicPP 
	ThumbnailPP 
	ThumbnailPP "
{PP# $
getPP% (
;PP( )
setPP* -
;PP- .
}PP/ 0
publicQQ 
ListQQ 
<QQ 
UrlQQ 
>QQ 
UrlsQQ 
{QQ 
getQQ  #
;QQ# $
setQQ% (
;QQ( )
}QQ* +
publicRR 
CreatorsRR 
CreatorsRR  
{RR! "
getRR# &
;RR& '
setRR( +
;RR+ ,
}RR- .
publicSS 

CharactersSS 

CharactersSS $
{SS% &
getSS' *
;SS* +
setSS, /
;SS/ 0
}SS1 2
publicTT 
SeriesTT 
SeriesTT 
{TT 
getTT "
;TT" #
setTT$ '
;TT' (
}TT) *
publicUU 
ComicsUU 
ComicsUU 
{UU 
getUU "
;UU" #
setUU$ '
;UU' (
}UU) *
publicVV 
EventsVV 
EventsVV 
{VV 
getVV "
;VV" #
setVV$ '
;VV' (
}VV) *
publicWW 
OriginalIssueWW 
OriginalIssueWW *
{WW+ ,
getWW- 0
;WW0 1
setWW2 5
;WW5 6
}WW7 8
}XX 
publicZZ 

classZZ 
DataZZ 
{[[ 
public\\ 
int\\ 
Offset\\ 
{\\ 
get\\ 
;\\  
set\\! $
;\\$ %
}\\& '
public]] 
int]] 
Limit]] 
{]] 
get]] 
;]] 
set]]  #
;]]# $
}]]% &
public^^ 
int^^ 
Total^^ 
{^^ 
get^^ 
;^^ 
set^^  #
;^^# $
}^^% &
public__ 
int__ 
Count__ 
{__ 
get__ 
;__ 
set__  #
;__# $
}__% &
public`` 
List`` 
<`` 
Result`` 
>`` 
Results`` #
{``$ %
get``& )
;``) *
set``+ .
;``. /
}``0 1
}aa 
publiccc 

classcc 
Urlcc 
{dd 
publicee 
stringee 
Typeee 
{ee 
getee  
;ee  !
setee" %
;ee% &
}ee' (
publicff 
stringff 
Uriff 
{ff 
getff 
;ff  
setff! $
;ff$ %
}ff& '
}gg 
publicii 

classii 
	Thumbnailii 
{jj 
publickk 
stringkk 
Pathkk 
{kk 
getkk  
;kk  !
setkk" %
;kk% &
}kk' (
publicll 
stringll 
	Extensionll 
{ll  !
getll" %
;ll% &
setll' *
;ll* +
}ll, -
publicmm 
stringmm 
PathCompletomm "
{mm# $
getmm% (
;mm( )
}mm* +
publicoo 
	Thumbnailoo 
(oo 
)oo 
{pp 	
PathCompletoqq 
=qq 
$"qq 
{qq 
Pathqq "
}qq" #
{qq# $
	Extensionqq$ -
}qq- .
"qq. /
;qq/ 0
}rr 	
}ss 
publicuu 

classuu 
Storiesuu 
{vv 
publicww 
intww 
	Availableww 
{ww 
getww "
;ww" #
setww$ '
;ww' (
}ww) *
publicxx 
intxx 
Returnedxx 
{xx 
getxx !
;xx! "
setxx# &
;xx& '
}xx( )
publicyy 
stringyy 
CollectionURIyy #
{yy$ %
getyy& )
;yy) *
setyy+ .
;yy. /
}yy0 1
publiczz 
Listzz 
<zz 
Itemzz 
>zz 
Itemszz 
{zz  !
getzz" %
;zz% &
setzz' *
;zz* +
}zz, -
}{{ 
public}} 

class}} 

Parametros}} 
{~~ 
public 
string 
Offset 
{ 
get "
;" #
set$ '
;' (
}) *
public
ÄÄ 
string
ÄÄ 
Limit
ÄÄ 
{
ÄÄ 
get
ÄÄ !
;
ÄÄ! "
set
ÄÄ# &
;
ÄÄ& '
}
ÄÄ( )
public
ÅÅ 
string
ÅÅ 
Autorizacao
ÅÅ !
{
ÅÅ" #
get
ÅÅ$ '
;
ÅÅ' (
set
ÅÅ) ,
;
ÅÅ, -
}
ÅÅ. /
}
ÇÇ 
}ÑÑ ü
iC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\ServicoMarvelModels\ErroResponse.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
.# $
ServicoMarvelModels$ 7
{ 
public 

class 
ErroResponse 
{		 
public

 
string

 
Code
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
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} „
kC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\ServicoMarvelModels\ResponseResult.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
.# $
ServicoMarvelModels$ 7
{ 
public 

class 
ResponseResult 
<  
T  !
>! "
{ 
public 
List 
< 
T 
> 
Values 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
T		 
Value		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
ErroResponse

 
ErrosReponse

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
ResponseResult 
( 
List "
<" #
T# $
>$ %
values& ,
), -
{ 	
Values 
= 
values 
; 
} 	
public 
ResponseResult 
( 
T 
value  %
)% &
{ 	
Value 
= 
value 
; 
} 	
public 
ResponseResult 
( 
ErroResponse *
erroReponse+ 6
)6 7
{ 	
ErrosReponse 
= 
erroReponse &
;& '
} 	
} 
} ú
aC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Servico\ServicoMarvelModels\Root.cs
	namespace 	
InformacoesMarvel
 
. 
Servico #
.# $
ServicoMarvelModels$ 7
{ 
public 

class 
Root 
{		 
public

 
int

 
Code

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	Copyright 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
AttributionText %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
AttributionHTML %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Etag 
{ 
get  
;  !
set" %
;% &
}' (
public 
Data 
Data 
{ 
get 
; 
set  #
;# $
}% &
} 
} ’$
HC:\Users\Marcos\source\repos\UniversoMarvel\InformacoesMarvel\Startup.cs
	namespace 	
InformacoesMarvel
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IWebHostEnvironment *
env+ .
). /
{ 	
var 
builder 
= 
new  
ConfigurationBuilder 2
(2 3
)3 4
. 
SetBasePath 
( 
env  
.  !
ContentRootPath! 0
)0 1
. 
AddJsonFile 
( 
$str /
,/ 0
true1 5
,5 6
true7 ;
); <
. 
AddJsonFile 
( 
$" 
$str +
{+ ,
env, /
./ 0
EnvironmentName0 ?
}? @
$str@ E
"E F
,F G
trueH L
,L M
trueN R
)R S
. #
AddEnvironmentVariables (
(( )
)) *
;* +
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
builder 
. 
AddUserSecrets &
<& '
Startup' .
>. /
(/ 0
)0 1
;1 2
} 
Configuration 
= 
builder #
.# $
Build$ )
() *
)* +
;+ ,
}   	
public"" 
IConfiguration"" 
Configuration"" +
{"", -
get"". 1
;""1 2
}""3 4
public%% 
void%% 
ConfigureServices%% %
(%%% &
IServiceCollection%%& 8
services%%9 A
)%%A B
{&& 	
services'' 
.'' #
AddControllersWithViews'' ,
('', -
)''- .
;''. /
services)) 
.)) 
AddHttpClient)) "
<))" #
MarvelService))# 0
>))0 1
())1 2
)))2 3
;))3 4
services** 
.** 
	AddScoped** 
<** 
IMarvelService** -
,**- .
MarvelService**/ <
>**< =
(**= >
)**> ?
;**? @
services,, 
.,, 
	Configure,, 
<,, 
AppSettings,, *
>,,* +
(,,+ ,
Configuration,,, 9
),,9 :
;,,: ;
}-- 	
public00 
void00 
	Configure00 
(00 
IApplicationBuilder00 1
app002 5
,005 6
IWebHostEnvironment007 J
env00K N
)00N O
{11 	
if33 
(33 
env33 
.33 
IsDevelopment33 !
(33! "
)33" #
)33# $
{44 
app55 
.55 %
UseDeveloperExceptionPage55 -
(55- .
)55. /
;55/ 0
}66 
else77 
{88 
app99 
.99 
UseExceptionHandler99 '
(99' (
$str99( 3
)993 4
;994 5
app:: 
.:: +
UseStatusCodePagesWithRedirects:: 3
(::3 4
$str::4 ?
)::? @
;::@ A
app;; 
.;; 
UseHsts;; 
(;; 
);; 
;;; 
}<< 
app?? 
.?? 
UseHsts?? 
(?? 
)?? 
;?? 
appAA 
.AA 
UseHttpsRedirectionAA #
(AA# $
)AA$ %
;AA% &
appBB 
.BB 
UseStaticFilesBB 
(BB 
)BB  
;BB  !
appDD 
.DD 

UseRoutingDD 
(DD 
)DD 
;DD 
appFF 
.FF 
UseAuthorizationFF  
(FF  !
)FF! "
;FF" #
appHH 
.HH 
UseMiddlewareHH 
<HH 
ExceptionMiddlewareHH 1
>HH1 2
(HH2 3
)HH3 4
;HH4 5
appKK 
.KK 
UseEndpointsKK 
(KK 
	endpointsKK &
=>KK' )
{LL 
	endpointsMM 
.MM 
MapControllerRouteMM ,
(MM, -
nameNN 
:NN 
$strNN #
,NN# $
patternOO 
:OO 
$strOO E
)OOE F
;OOF G
}PP 
)PP 
;PP 
}QQ 	
}RR 
}SS 