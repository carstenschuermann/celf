(*#line 49.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)functor ClfLexFun(structure Tokens: Clf_TOKENS)(*#line 1.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
=
   struct
    structure UserDeclarations =
      struct
(*#line 1.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)(*  Celf
 *  Copyright (C) 2008 Anders Schack-Nielsen and Carsten Schürmann
 *
 *  This file is part of Celf.
 *
 *  Celf is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Celf is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Celf.  If not, see <http://www.gnu.org/licenses/>.
 *)

type pos = int * int
type svalue = Tokens.svalue
type ('a,'b) token = ('a,'b) Tokens.token
type lexresult = (svalue,pos) token
val linepos = ref 1
val linecharpos = ref 0
fun getpos charcount = (!linepos,charcount - !linecharpos)
fun eof () = Tokens.EOF((!linepos,0),(!linepos,0))
fun number (s,p) =
	if s = "1" then Tokens.ONE(p,p)
	else Tokens.NUM(
			case Int.fromString s of
				  SOME n => n
				| NONE => raise Fail"Internal error: lexer on int\n",
			p,p)
fun keyword (s,p) =
	(case s of
		"type" => Tokens.TYPE(p,p)
	  | "Pi" => Tokens.PI(p,p)
	  | "PI" => Tokens.LPI(p,p)
	  | "#1" => Tokens.PROJLEFT(p,p)
	  | "#2" => Tokens.PROJRIGHT(p,p)
	  | "Exists" => Tokens.EXISTS(p,p)
	  | "EXISTS" => Tokens.LEXISTS(p,p)
	  | "let" => Tokens.LET(p,p)
	  | "in" => Tokens.IN(p,p)
	  | "#query" => Tokens.QUERY(p,p)
	  | _ => Tokens.ID(s,p,p))
(*#line 53.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
end (* end of user routines *)
exception LexError (* raised if illegal leaf action tried *)
structure Internal =
	struct

datatype yyfinstate = N of int
type statedata = {fin : yyfinstate list, trans: string}
(* transition & final state table *)
val tab = let
val s = [ 
 (0, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000"
),
 (1, 
"\003\003\003\003\003\003\003\003\003\036\038\003\003\003\003\003\
\\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\
\\036\035\003\004\004\033\032\004\031\030\029\004\028\024\023\004\
\\021\021\021\021\021\021\021\021\021\021\020\004\018\017\016\004\
\\014\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\
\\004\004\004\004\004\004\004\004\004\004\004\013\012\011\003\010\
\\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\008\
\\004\004\004\004\004\004\004\004\004\004\004\007\004\006\004\003\
\\003"
),
 (4, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\005\005\000\005\005\000\000\005\005\000\005\000\005\
\\005\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\000\000\000\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\005\000\005\000\
\\000"
),
 (8, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\005\005\000\005\005\000\000\005\005\000\009\000\005\
\\005\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\000\000\000\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\005\000\005\000\
\\000"
),
 (14, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000"
),
 (18, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\005\005\000\005\005\000\000\005\005\000\019\000\005\
\\005\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\000\000\000\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\005\000\005\000\
\\000"
),
 (21, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\005\005\000\005\005\000\000\005\005\000\005\000\005\
\\022\022\022\022\022\022\022\022\022\022\000\005\005\005\005\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\000\000\000\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\005\000\005\000\
\\000"
),
 (24, 
"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\005\005\000\005\005\000\000\005\005\000\005\000\005\
\\005\005\005\005\005\005\005\005\005\005\000\005\005\005\027\005\
\\026\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\
\\005\005\005\005\005\005\005\005\005\005\005\000\000\000\000\005\
\\000\005\005\005\005\005\005\005\005\005\005\005\005\005\005\025\
\\005\005\005\005\005\005\005\005\005\005\005\000\005\000\005\000\
\\000"
),
 (33, 
"\034\034\034\034\034\034\034\034\034\034\000\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\
\\034"
),
 (36, 
"\000\000\000\000\000\000\000\000\000\037\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000"
),
(0, "")]
fun f x = x 
val s = map f (rev (tl (rev s))) 
exception LexHackingError 
fun look ((j,x)::r, i: int) = if i = j then x else look(r, i) 
  | look ([], i) = raise LexHackingError
fun g {fin=x, trans=i} = {fin=x, trans=look(s,i)} 
in Vector.fromList(map g 
[{fin = [], trans = 0},
{fin = [], trans = 1},
{fin = [], trans = 1},
{fin = [(N 69)], trans = 0},
{fin = [(N 67),(N 69)], trans = 4},
{fin = [(N 67)], trans = 4},
{fin = [(N 25),(N 69)], trans = 0},
{fin = [(N 23),(N 69)], trans = 0},
{fin = [(N 67),(N 69)], trans = 8},
{fin = [(N 13),(N 67)], trans = 4},
{fin = [(N 19),(N 67),(N 69)], trans = 4},
{fin = [(N 41),(N 69)], trans = 0},
{fin = [(N 29),(N 69)], trans = 0},
{fin = [(N 39),(N 69)], trans = 0},
{fin = [(N 53),(N 69)], trans = 14},
{fin = [(N 61)], trans = 0},
{fin = [(N 33),(N 67),(N 69)], trans = 4},
{fin = [(N 37),(N 67),(N 69)], trans = 4},
{fin = [(N 31),(N 67),(N 69)], trans = 18},
{fin = [(N 51),(N 67)], trans = 4},
{fin = [(N 15),(N 69)], trans = 0},
{fin = [(N 64),(N 67),(N 69)], trans = 21},
{fin = [(N 64),(N 67)], trans = 21},
{fin = [(N 17),(N 69)], trans = 0},
{fin = [(N 67),(N 69)], trans = 24},
{fin = [(N 10),(N 67)], trans = 4},
{fin = [(N 58)], trans = 0},
{fin = [(N 48),(N 67)], trans = 4},
{fin = [(N 35),(N 69)], trans = 0},
{fin = [(N 27),(N 67),(N 69)], trans = 4},
{fin = [(N 45),(N 69)], trans = 0},
{fin = [(N 43),(N 69)], trans = 0},
{fin = [(N 21),(N 67),(N 69)], trans = 4},
{fin = [(N 7),(N 69)], trans = 33},
{fin = [(N 7)], trans = 33},
{fin = [(N 55),(N 69)], trans = 0},
{fin = [(N 4),(N 69)], trans = 36},
{fin = [(N 4)], trans = 36},
{fin = [(N 1)], trans = 0}])
end
structure StartStates =
	struct
	datatype yystartstate = STARTSTATE of int

(* start state definitions *)

val INITIAL = STARTSTATE 1;

end
type result = UserDeclarations.lexresult
	exception LexerError (* raised if illegal leaf action tried *)
end

structure YYPosInt : INTEGER = Int
fun makeLexer yyinput =
let	val yygone0= YYPosInt.fromInt ~1
	val yyb = ref "\n" 		(* buffer *)
	val yybl = ref 1		(*buffer length *)
	val yybufpos = ref 1		(* location of next character to use *)
	val yygone = ref yygone0	(* position in file of beginning of buffer *)
	val yydone = ref false		(* eof found yet? *)
	val yybegin = ref 1		(*Current 'start state' for lexer *)

	val YYBEGIN = fn (Internal.StartStates.STARTSTATE x) =>
		 yybegin := x

fun lex () : Internal.result =
let fun continue() = lex() in
  let fun scan (s,AcceptingLeaves : Internal.yyfinstate list list,l,i0) =
	let fun action (i,nil) = raise LexError
	| action (i,nil::l) = action (i-1,l)
	| action (i,(node::acts)::l) =
		case node of
		    Internal.N yyk => 
			(let fun yymktext() = substring(!yyb,i0,i-i0)
			     val yypos = YYPosInt.+(YYPosInt.fromInt i0, !yygone)
			open UserDeclarations Internal.StartStates
 in (yybufpos := i; case yyk of 

			(* Application actions *)

  1 => ((*#line 54.8 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)linepos := (!linepos) + 1; linecharpos := yypos; lex()(*#line 263.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 10 => ((*#line 57.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LOLLI(getpos yypos,getpos yypos)(*#line 265.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 13 => ((*#line 58.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.BACKLOLLI(getpos yypos,getpos yypos)(*#line 267.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 15 => ((*#line 59.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.COLON(getpos yypos,getpos yypos)(*#line 269.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 17 => ((*#line 60.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.DOT(getpos yypos,getpos yypos)(*#line 271.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 19 => ((*#line 61.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.UNDERSCORE(getpos yypos,getpos yypos)(*#line 273.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 21 => ((*#line 62.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.AMPH(getpos yypos,getpos yypos)(*#line 275.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 23 => ((*#line 63.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LCURLY(getpos yypos,getpos yypos)(*#line 277.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 25 => ((*#line 64.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.RCURLY(getpos yypos,getpos yypos)(*#line 279.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 27 => ((*#line 65.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.TENSOR(getpos yypos,getpos yypos)(*#line 281.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 29 => ((*#line 66.8 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LAMBDA(getpos yypos,getpos yypos)(*#line 283.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 31 => ((*#line 67.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LANGLE(getpos yypos,getpos yypos)(*#line 285.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 33 => ((*#line 68.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.RANGLE(getpos yypos,getpos yypos)(*#line 287.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 35 => ((*#line 69.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.COMMA(getpos yypos,getpos yypos)(*#line 289.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 37 => ((*#line 70.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.EQUAL(getpos yypos,getpos yypos)(*#line 291.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 39 => ((*#line 71.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LBRACKET(getpos yypos,getpos yypos)(*#line 293.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 4 => ((*#line 55.11 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)lex()(*#line 295.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 41 => ((*#line 72.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.RBRACKET(getpos yypos,getpos yypos)(*#line 297.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 43 => ((*#line 73.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.LPAREN(getpos yypos,getpos yypos)(*#line 299.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 45 => ((*#line 74.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.RPAREN(getpos yypos,getpos yypos)(*#line 301.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 48 => ((*#line 75.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.ARROW(getpos yypos,getpos yypos)(*#line 303.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 51 => ((*#line 76.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.BACKARROW(getpos yypos,getpos yypos)(*#line 305.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 53 => ((*#line 77.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.AFF(getpos yypos,getpos yypos)(*#line 307.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 55 => ((*#line 78.9 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.BANG(getpos yypos,getpos yypos)(*#line 309.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 58 => ((*#line 79.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.AFFLOLLI(getpos yypos,getpos yypos)(*#line 311.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 61 => ((*#line 80.10 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)Tokens.BACKAFFLOLLI(getpos yypos,getpos yypos)(*#line 313.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| 64 => let val yytext=yymktext() in (*#line 81.12 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)number (yytext,getpos yypos)(*#line 315.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
 end
| 67 => let val yytext=yymktext() in (*#line 82.34 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)keyword (yytext,getpos yypos)(*#line 317.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
 end
| 69 => let val yytext=yymktext() in (*#line 83.7 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)let val (l,c) = getpos(yypos) in
		print ("Lexer Warning: Ignoring illegal symbol ``"^yytext^"'' in line "^
					(Int.toString l)^" pos "^(Int.toString c)^"\n")
		end; lex()(*#line 322.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
 end
| 7 => ((*#line 56.15 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex"*)lex()(*#line 324.1 "/Users/carsten/Dropbox/www.logosphere.org/homes/anders/clf/celf.lex.sml"*)
)
| _ => raise Internal.LexerError

		) end )

	val {fin,trans} = Vector.sub(Internal.tab, s)
	val NewAcceptingLeaves = fin::AcceptingLeaves
	in if l = !yybl then
	     if trans = #trans(Vector.sub(Internal.tab,0))
	       then action(l,NewAcceptingLeaves
) else	    let val newchars= if !yydone then "" else yyinput 1024
	    in if (size newchars)=0
		  then (yydone := true;
		        if (l=i0) then UserDeclarations.eof ()
		                  else action(l,NewAcceptingLeaves))
		  else (if i0=l then yyb := newchars
		     else yyb := substring(!yyb,i0,l-i0)^newchars;
		     yygone := YYPosInt.+(!yygone, YYPosInt.fromInt i0);
		     yybl := size (!yyb);
		     scan (s,AcceptingLeaves,l-i0,0))
	    end
	  else let val NewChar = Char.ord(CharVector.sub(!yyb,l))
		val NewChar = if NewChar<128 then NewChar else 128
		val NewState = Char.ord(CharVector.sub(trans,NewChar))
		in if NewState=0 then action(l,NewAcceptingLeaves)
		else scan(NewState,NewAcceptingLeaves,l+1,i0)
	end
	end
(*
	val start= if substring(!yyb,!yybufpos-1,1)="\n"
then !yybegin+1 else !yybegin
*)
	in scan(!yybegin (* start *),nil,!yybufpos,!yybufpos)
    end
end
  in lex
  end
end
