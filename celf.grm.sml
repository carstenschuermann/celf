functor ClfLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Clf_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
(*#line 1.2 "/Users/rjsimmon/r/celf/celf.grm"*)(*  Celf
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

fun objs2spine objs =
	let fun o2s [] sp = sp
		  | o2s (ob::objs) sp = o2s objs (Syntax.TApp' (ob,sp))
	in o2s objs Syntax.TNil' end

fun getline (line, ch) = line


(*#line 38.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\006\000\031\000\005\000\000\000\
\\001\000\001\000\028\000\002\000\027\000\003\000\026\000\010\000\025\000\
\\013\000\024\000\014\000\023\000\028\000\022\000\033\000\021\000\
\\034\000\020\000\037\000\019\000\038\000\018\000\000\000\
\\001\000\001\000\028\000\002\000\093\000\003\000\026\000\010\000\025\000\
\\013\000\024\000\014\000\023\000\028\000\022\000\033\000\021\000\
\\034\000\020\000\037\000\019\000\038\000\018\000\000\000\
\\001\000\001\000\028\000\003\000\049\000\010\000\025\000\013\000\024\000\
\\014\000\023\000\028\000\022\000\033\000\021\000\034\000\020\000\
\\037\000\019\000\038\000\018\000\000\000\
\\001\000\001\000\036\000\004\000\122\000\006\000\035\000\010\000\034\000\
\\013\000\074\000\015\000\033\000\016\000\032\000\022\000\073\000\
\\023\000\072\000\024\000\071\000\028\000\031\000\029\000\121\000\
\\037\000\070\000\038\000\069\000\000\000\
\\001\000\001\000\036\000\005\000\135\000\006\000\035\000\010\000\034\000\
\\013\000\074\000\015\000\033\000\016\000\032\000\022\000\073\000\
\\023\000\072\000\024\000\071\000\028\000\031\000\037\000\070\000\
\\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\017\000\171\000\022\000\073\000\
\\023\000\072\000\024\000\071\000\028\000\031\000\037\000\070\000\
\\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\018\000\123\000\022\000\073\000\
\\023\000\072\000\024\000\071\000\028\000\031\000\037\000\070\000\
\\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\019\000\087\000\024\000\071\000\
\\028\000\086\000\037\000\070\000\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\021\000\187\000\022\000\073\000\
\\023\000\072\000\024\000\071\000\028\000\031\000\037\000\070\000\
\\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\024\000\071\000\028\000\031\000\
\\037\000\070\000\038\000\069\000\000\000\
\\001\000\001\000\036\000\006\000\035\000\010\000\034\000\015\000\033\000\
\\016\000\032\000\028\000\031\000\000\000\
\\001\000\001\000\060\000\000\000\
\\001\000\001\000\062\000\000\000\
\\001\000\001\000\083\000\013\000\082\000\024\000\081\000\028\000\080\000\
\\037\000\079\000\038\000\078\000\000\000\
\\001\000\001\000\100\000\000\000\
\\001\000\001\000\104\000\006\000\103\000\000\000\
\\001\000\001\000\126\000\000\000\
\\001\000\001\000\127\000\000\000\
\\001\000\004\000\012\000\000\000\
\\001\000\004\000\101\000\000\000\
\\001\000\004\000\108\000\000\000\
\\001\000\004\000\111\000\005\000\110\000\000\000\
\\001\000\004\000\114\000\005\000\113\000\000\000\
\\001\000\004\000\125\000\005\000\124\000\000\000\
\\001\000\004\000\138\000\005\000\137\000\000\000\
\\001\000\005\000\046\000\020\000\045\000\000\000\
\\001\000\005\000\047\000\000\000\
\\001\000\005\000\149\000\000\000\
\\001\000\005\000\150\000\000\000\
\\001\000\005\000\163\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\005\000\166\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\005\000\167\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\005\000\168\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\005\000\172\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\005\000\176\000\007\000\044\000\008\000\043\000\009\000\042\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\006\000\057\000\013\000\056\000\024\000\055\000\028\000\054\000\
\\037\000\053\000\038\000\052\000\000\000\
\\001\000\006\000\102\000\000\000\
\\001\000\007\000\044\000\008\000\043\000\009\000\042\000\011\000\112\000\
\\012\000\041\000\026\000\099\000\027\000\039\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\029\000\109\000\035\000\038\000\
\\036\000\037\000\000\000\
\\001\000\010\000\134\000\000\000\
\\001\000\011\000\131\000\000\000\
\\001\000\011\000\175\000\000\000\
\\001\000\012\000\011\000\013\000\010\000\032\000\009\000\000\000\
\\001\000\013\000\066\000\032\000\065\000\000\000\
\\001\000\018\000\142\000\000\000\
\\001\000\018\000\151\000\000\000\
\\001\000\018\000\158\000\000\000\
\\001\000\020\000\184\000\000\000\
\\001\000\025\000\141\000\000\000\
\\001\000\025\000\157\000\000\000\
\\001\000\025\000\182\000\000\000\
\\001\000\029\000\140\000\000\000\
\\001\000\029\000\156\000\000\000\
\\001\000\029\000\159\000\000\000\
\\001\000\029\000\170\000\000\000\
\\001\000\030\000\000\000\000\000\
\\190\000\000\000\
\\191\000\000\000\
\\192\000\001\000\006\000\031\000\005\000\000\000\
\\193\000\000\000\
\\194\000\000\000\
\\195\000\000\000\
\\196\000\000\000\
\\197\000\000\000\
\\198\000\000\000\
\\199\000\000\000\
\\200\000\000\000\
\\201\000\000\000\
\\202\000\000\000\
\\203\000\000\000\
\\203\000\020\000\063\000\000\000\
\\204\000\000\000\
\\205\000\000\000\
\\206\000\000\000\
\\207\000\000\000\
\\208\000\013\000\074\000\022\000\073\000\023\000\072\000\024\000\071\000\
\\037\000\070\000\038\000\069\000\000\000\
\\209\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\040\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\209\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\210\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\211\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\212\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\213\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\214\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\040\000\
\\035\000\038\000\000\000\
\\214\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\215\000\007\000\044\000\009\000\042\000\012\000\041\000\026\000\099\000\
\\035\000\038\000\000\000\
\\216\000\009\000\042\000\012\000\041\000\000\000\
\\217\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\040\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\217\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\218\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\040\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\218\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\219\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\220\000\000\000\
\\221\000\001\000\036\000\006\000\035\000\010\000\034\000\015\000\033\000\
\\016\000\032\000\028\000\031\000\000\000\
\\222\000\009\000\042\000\012\000\041\000\000\000\
\\223\000\000\000\
\\224\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\225\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\226\000\007\000\044\000\008\000\043\000\009\000\042\000\012\000\041\000\
\\026\000\099\000\027\000\039\000\035\000\038\000\036\000\037\000\000\000\
\\227\000\000\000\
\\228\000\000\000\
\\229\000\000\000\
\\230\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\022\000\073\000\023\000\072\000\
\\024\000\071\000\028\000\031\000\037\000\070\000\038\000\069\000\000\000\
\\231\000\001\000\036\000\006\000\035\000\010\000\034\000\013\000\074\000\
\\015\000\033\000\016\000\032\000\022\000\073\000\023\000\072\000\
\\024\000\071\000\028\000\031\000\037\000\070\000\038\000\069\000\000\000\
\\232\000\000\000\
\\233\000\000\000\
\\234\000\000\000\
\\235\000\000\000\
\\236\000\000\000\
\\237\000\000\000\
\\238\000\000\000\
\\239\000\000\000\
\\240\000\000\000\
\\241\000\000\000\
\\242\000\000\000\
\\243\000\000\000\
\\244\000\000\000\
\\245\000\000\000\
\\246\000\000\000\
\\247\000\000\000\
\\248\000\000\000\
\\249\000\000\000\
\\250\000\000\000\
\\251\000\000\000\
\\252\000\000\000\
\\253\000\000\000\
\\254\000\000\000\
\\255\000\000\000\
\\000\001\018\000\158\000\000\000\
\\001\001\000\000\
\\002\001\000\000\
\\003\001\000\000\
\\004\001\000\000\
\\005\001\000\000\
\\006\001\000\000\
\\007\001\000\000\
\\008\001\000\000\
\\009\001\018\000\142\000\000\000\
\"
val actionRowNumbers =
"\000\000\057\000\059\000\043\000\
\\019\000\058\000\043\000\068\000\
\\067\000\069\000\001\000\043\000\
\\093\000\077\000\026\000\027\000\
\\003\000\003\000\036\000\036\000\
\\003\000\012\000\095\000\003\000\
\\013\000\071\000\075\000\044\000\
\\076\000\011\000\011\000\014\000\
\\008\000\112\000\106\000\003\000\
\\003\000\003\000\002\000\003\000\
\\003\000\003\000\003\000\011\000\
\\061\000\060\000\099\000\015\000\
\\100\000\020\000\037\000\016\000\
\\036\000\036\000\129\000\131\000\
\\021\000\039\000\022\000\038\000\
\\023\000\003\000\003\000\066\000\
\\065\000\107\000\118\000\011\000\
\\011\000\010\000\109\000\108\000\
\\117\000\004\000\007\000\024\000\
\\017\000\018\000\014\000\014\000\
\\121\000\123\000\114\000\041\000\
\\008\000\040\000\082\000\081\000\
\\085\000\083\000\073\000\070\000\
\\094\000\086\000\080\000\079\000\
\\005\000\003\000\025\000\003\000\
\\132\000\133\000\134\000\052\000\
\\049\000\045\000\003\000\101\000\
\\003\000\003\000\092\000\002\000\
\\003\000\078\000\028\000\029\000\
\\119\000\120\000\046\000\110\000\
\\003\000\011\000\011\000\003\000\
\\124\000\125\000\053\000\050\000\
\\047\000\105\000\054\000\004\000\
\\014\000\063\000\084\000\003\000\
\\003\000\030\000\135\000\130\000\
\\036\000\031\000\097\000\032\000\
\\089\000\074\000\033\000\062\000\
\\064\000\010\000\055\000\006\000\
\\103\000\034\000\126\000\122\000\
\\014\000\115\000\042\000\090\000\
\\035\000\003\000\136\000\137\000\
\\003\000\003\000\002\000\051\000\
\\111\000\104\000\011\000\127\000\
\\128\000\048\000\003\000\098\000\
\\091\000\096\000\087\000\072\000\
\\116\000\102\000\011\000\088\000\
\\009\000\008\000\113\000\056\000"
val gotoT =
"\
\\012\000\002\000\013\000\001\000\014\000\187\000\000\000\
\\000\000\
\\012\000\002\000\013\000\005\000\000\000\
\\016\000\006\000\000\000\
\\000\000\
\\000\000\
\\016\000\011\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\015\000\002\000\014\000\003\000\013\000\004\000\012\000\000\000\
\\016\000\027\000\000\000\
\\005\000\028\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\046\000\004\000\012\000\000\000\
\\003\000\048\000\004\000\012\000\000\000\
\\010\000\049\000\000\000\
\\010\000\056\000\000\000\
\\003\000\057\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\003\000\059\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\015\000\062\000\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\073\000\000\000\
\\005\000\074\000\000\000\
\\008\000\075\000\000\000\
\\005\000\066\000\006\000\083\000\007\000\082\000\000\000\
\\000\000\
\\000\000\
\\003\000\086\000\004\000\012\000\000\000\
\\003\000\087\000\004\000\012\000\000\000\
\\003\000\088\000\004\000\012\000\000\000\
\\001\000\090\000\003\000\089\000\004\000\012\000\000\000\
\\003\000\092\000\004\000\012\000\000\000\
\\003\000\093\000\004\000\012\000\000\000\
\\003\000\094\000\004\000\012\000\000\000\
\\003\000\095\000\004\000\012\000\000\000\
\\005\000\096\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\103\000\000\000\
\\010\000\105\000\011\000\104\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\114\000\003\000\113\000\004\000\012\000\000\000\
\\002\000\115\000\003\000\113\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\116\000\000\000\
\\005\000\117\000\000\000\
\\005\000\066\000\007\000\118\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\008\000\126\000\000\000\
\\008\000\128\000\009\000\127\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\131\000\006\000\130\000\007\000\082\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\003\000\134\000\004\000\012\000\000\000\
\\000\000\
\\003\000\137\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\141\000\004\000\012\000\000\000\
\\000\000\
\\003\000\142\000\004\000\012\000\000\000\
\\003\000\143\000\004\000\012\000\000\000\
\\000\000\
\\001\000\145\000\003\000\144\000\004\000\012\000\000\000\
\\003\000\146\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\000\000\
\\000\000\
\\002\000\150\000\003\000\113\000\004\000\012\000\000\000\
\\005\000\151\000\000\000\
\\005\000\152\000\000\000\
\\003\000\153\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\008\000\158\000\000\000\
\\000\000\
\\000\000\
\\003\000\159\000\004\000\012\000\000\000\
\\003\000\160\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\163\000\011\000\162\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\167\000\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\008\000\172\000\009\000\171\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\175\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\003\000\176\000\004\000\012\000\000\000\
\\003\000\177\000\004\000\012\000\000\000\
\\001\000\179\000\003\000\178\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\181\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\183\000\004\000\012\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\184\000\000\000\
\\000\000\
\\005\000\066\000\007\000\065\000\000\000\
\\005\000\066\000\006\000\186\000\007\000\082\000\000\000\
\\000\000\
\\000\000\
\"
val numstates = 188
val numrules = 76
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int*int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit | NUM of unit ->  (int) | ID of unit ->  (string) | NumOpt of unit ->  (int option) | Number of unit ->  (int) | Program of unit ->  ( ( int * Syntax.decl )  list) | DeclList of unit ->  ( ( int * Syntax.decl )  list) | Decl of unit ->  (Syntax.decl) | TPatternPair of unit ->  (Syntax.tpattern*Syntax.tpattern) | TPattern of unit ->  (Syntax.tpattern) | OPatternPair of unit ->  (Syntax.opattern*Syntax.opattern) | OPattern of unit ->  (Syntax.opattern) | MonadObj of unit ->  (Syntax.monadObj) | ExpObj of unit ->  (Syntax.expObj) | Obj of unit ->  (Syntax.obj) | AtomicType of unit ->  (string*Syntax.obj list) | UnifiedType of unit ->  (Parse.unifiedType) | AsyncType of unit ->  (Syntax.asyncType) | Kind of unit ->  (Syntax.kind)
end
type svalue = MlyValue.svalue
type result =  ( int * Syntax.decl )  list
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn _ => false
val preferred_change : (term list * term list) list = 
nil
val noShift = 
fn (T 29) => true | _ => false
val showTerminal =
fn (T 0) => "ID"
  | (T 1) => "TYPE"
  | (T 2) => "PI"
  | (T 3) => "COLON"
  | (T 4) => "DOT"
  | (T 5) => "UNDERSCORE"
  | (T 6) => "LOLLI"
  | (T 7) => "BACKLOLLI"
  | (T 8) => "AMPH"
  | (T 9) => "LCURLY"
  | (T 10) => "RCURLY"
  | (T 11) => "TENSOR"
  | (T 12) => "ONE"
  | (T 13) => "EXISTS"
  | (T 14) => "LAMBDA"
  | (T 15) => "LANGLE"
  | (T 16) => "RANGLE"
  | (T 17) => "COMMA"
  | (T 18) => "LET"
  | (T 19) => "EQUAL"
  | (T 20) => "IN"
  | (T 21) => "PROJLEFT"
  | (T 22) => "PROJRIGHT"
  | (T 23) => "LBRACKET"
  | (T 24) => "RBRACKET"
  | (T 25) => "ARROW"
  | (T 26) => "BACKARROW"
  | (T 27) => "LPAREN"
  | (T 28) => "RPAREN"
  | (T 29) => "EOF"
  | (T 30) => "QUERY"
  | (T 31) => "NUM"
  | (T 32) => "LPI"
  | (T 33) => "LEXISTS"
  | (T 34) => "AFFLOLLI"
  | (T 35) => "BACKAFFLOLLI"
  | (T 36) => "BANG"
  | (T 37) => "AFF"
  | (T 38) => "APP"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn _ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 38) $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33) $$ (T 32) $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26) $$ (T 25) $$ (T 24) $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18) $$ (T 17) $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11) $$ (T 10) $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ (T 4) $$ (T 3) $$ (T 2) $$ (T 1)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.DeclList DeclList1, DeclList1left, DeclList1right)) :: rest671)) => let val  result = MlyValue.Program (fn _ => let val  (DeclList as DeclList1) = DeclList1 ()
 in ((*#line 70.14 "/Users/rjsimmon/r/celf/celf.grm"*) DeclList (*#line 624.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 13, ( result, DeclList1left, DeclList1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.DeclList DeclList1, _, DeclList1right)) :: ( _, ( MlyValue.Decl Decl1, Decl1left, _)) :: rest671)) => let val  result = MlyValue.DeclList (fn _ => let val  (Decl as Decl1) = Decl1 ()
 val  (DeclList as DeclList1) = DeclList1 ()
 in ((*#line 73.19 "/Users/rjsimmon/r/celf/celf.grm"*) (getline Decl1left, Decl) :: DeclList (*#line 630.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 12, ( result, Decl1left, DeclList1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.Decl Decl1, Decl1left, Decl1right)) :: rest671)) => let val  result = MlyValue.DeclList (fn _ => let val  (Decl as Decl1) = Decl1 ()
 in ((*#line 74.19 "/Users/rjsimmon/r/celf/celf.grm"*) [(getline Decl1left, Decl)] (*#line 637.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 12, ( result, Decl1left, Decl1right), rest671)
end
|  ( 3, ( ( _, ( _, _, DOT1right)) :: ( _, ( MlyValue.Kind Kind1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  (ID as ID1) = ID1 ()
 val  (Kind as Kind1) = Kind1 ()
 in ((*#line 77.46 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.ConstDecl(ID,0,Syntax.Ki Kind) (*#line 643.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, ID1left, DOT1right), rest671)
end
|  ( 4, ( ( _, ( _, _, DOT1right)) :: ( _, ( MlyValue.AsyncType AsyncType1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  (ID as ID1) = ID1 ()
 val  (AsyncType as AsyncType1) = AsyncType1 ()
 in ((*#line 78.46 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.ConstDecl(ID,0,Syntax.Ty AsyncType) (*#line 650.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, ID1left, DOT1right), rest671)
end
|  ( 5, ( ( _, ( _, _, DOT1right)) :: ( _, ( MlyValue.AsyncType AsyncType1, _, _)) :: _ :: _ :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  (ID as ID1) = ID1 ()
 val  (AsyncType as AsyncType1) = AsyncType1 ()
 in ((*#line 79.46 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.TypeAbbrev(ID,AsyncType) (*#line 657.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, ID1left, DOT1right), rest671)
end
|  ( 6, ( ( _, ( _, _, DOT1right)) :: ( _, ( MlyValue.Obj Obj1, _, _)) :: _ :: ( _, ( MlyValue.AsyncType AsyncType1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  (ID as ID1) = ID1 ()
 val  (AsyncType as AsyncType1) = AsyncType1 ()
 val  (Obj as Obj1) = Obj1 ()
 in ((*#line 80.46 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.ObjAbbrev(ID,AsyncType,Obj) (*#line 664.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, ID1left, DOT1right), rest671)
end
|  ( 7, ( ( _, ( _, _, DOT1right)) :: ( _, ( MlyValue.AsyncType AsyncType1, _, _)) :: ( _, ( MlyValue.Number Number1, _, _)) :: ( _, ( MlyValue.NumOpt NumOpt3, _, _)) :: ( _, ( MlyValue.NumOpt NumOpt2, _, _)) :: ( _, ( MlyValue.NumOpt NumOpt1, _, _)) :: ( _, ( _, QUERY1left, _)) :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  NumOpt1 = NumOpt1 ()
 val  NumOpt2 = NumOpt2 ()
 val  NumOpt3 = NumOpt3 ()
 val  (Number as Number1) = Number1 ()
 val  (AsyncType as AsyncType1) = AsyncType1 ()
 in ((*#line 82.5 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Query(NumOpt1,NumOpt2,NumOpt3,Number,AsyncType) (*#line 672.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, QUERY1left, DOT1right), rest671)
end
|  ( 8, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.Number (fn _ => ((*#line 85.9 "/Users/rjsimmon/r/celf/celf.grm"*) 1 (*#line 682.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 14, ( result, ONE1left, ONE1right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.NUM NUM1, NUM1left, NUM1right)) :: rest671)) => let val  result = MlyValue.Number (fn _ => let val  (NUM as NUM1) = NUM1 ()
 in ((*#line 86.9 "/Users/rjsimmon/r/celf/celf.grm"*) NUM (*#line 686.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 14, ( result, NUM1left, NUM1right), rest671)
end
|  ( 10, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.NumOpt (fn _ => ((*#line 89.12 "/Users/rjsimmon/r/celf/celf.grm"*) SOME 1 (*#line 692.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 15, ( result, ONE1left, ONE1right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.NUM NUM1, NUM1left, NUM1right)) :: rest671)) => let val  result = MlyValue.NumOpt (fn _ => let val  (NUM as NUM1) = NUM1 ()
 in ((*#line 90.12 "/Users/rjsimmon/r/celf/celf.grm"*) SOME NUM (*#line 696.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 15, ( result, NUM1left, NUM1right), rest671)
end
|  ( 12, ( ( _, ( _, TENSOR1left, TENSOR1right)) :: rest671)) => let val  result = MlyValue.NumOpt (fn _ => ((*#line 91.12 "/Users/rjsimmon/r/celf/celf.grm"*) NONE (*#line 702.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 15, ( result, TENSOR1left, TENSOR1right), rest671)
end
|  ( 13, ( ( _, ( _, TYPE1left, TYPE1right)) :: rest671)) => let val  result = MlyValue.Kind (fn _ => ((*#line 94.38 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Type' (*#line 706.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 0, ( result, TYPE1left, TYPE1right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.Kind Kind1, _, Kind1right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, PI1left, _)) :: rest671)) => let val  result = MlyValue.Kind (fn _ => let val  (ID as ID1) = ID1 ()
 val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 val  (Kind as Kind1) = Kind1 ()
 in ((*#line 95.38 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.KPi'(SOME ID,Parse.unif2async UnifiedType,Kind) (*#line 710.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 0, ( result, PI1left, Kind1right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.Kind Kind1, _, Kind1right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.Kind (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 val  (Kind as Kind1) = Kind1 ()
 in ((*#line 96.38 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.KPi'(NONE,Parse.unif2async UnifiedType,Kind) (*#line 718.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 0, ( result, UnifiedType1left, Kind1right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.Kind Kind1, _, Kind1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, PI1left, _)) :: rest671)) => let val  result = MlyValue.Kind (fn _ => let val  (ID as ID1) = ID1 ()
 val  (Kind as Kind1) = Kind1 ()
 in ((*#line 97.38 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.KPi'(SOME ID,Syntax.newTVar(),Kind) (*#line 725.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 0, ( result, PI1left, Kind1right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.AtomicType (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 100.33 "/Users/rjsimmon/r/celf/celf.grm"*) (ID,[]) (*#line 732.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 3, ( result, ID1left, ID1right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.Obj Obj1, _, Obj1right)) :: ( _, ( MlyValue.AtomicType AtomicType1, AtomicType1left, _)) :: rest671)) => let val  result = MlyValue.AtomicType (fn _ => let val  (AtomicType as AtomicType1) = AtomicType1 ()
 val  (Obj as Obj1) = Obj1 ()
 in ((*#line 101.33 "/Users/rjsimmon/r/celf/celf.grm"*) let val (a,s) = AtomicType in (a,Obj::s) end (*#line 738.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 3, ( result, AtomicType1left, Obj1right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, UnifiedType1right)) :: rest671)) => let val  result = MlyValue.AsyncType (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 104.17 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.unif2async UnifiedType (*#line 745.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 1, ( result, UnifiedType1left, UnifiedType1right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 107.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.lolli(UnifiedType1,UnifiedType2) (*#line 751.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 108.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.lolli(UnifiedType2,UnifiedType1) (*#line 758.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 109.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.affLolli(UnifiedType1,UnifiedType2) (*#line 765.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 110.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.affLolli(UnifiedType2,UnifiedType1) (*#line 772.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 111.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.arrow(UnifiedType1,UnifiedType2) (*#line 779.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 112.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.arrow(UnifiedType2,UnifiedType1) (*#line 786.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 26, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 113.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.addProd(UnifiedType1,UnifiedType2) (*#line 793.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 27, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, PI1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (ID as ID1) = ID1 ()
 val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 114.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.tPi(ID,UnifiedType1,UnifiedType2) (*#line 800.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, PI1left, UnifiedType2right), rest671)
end
|  ( 28, ( ( _, ( MlyValue.UnifiedType UnifiedType1, _, UnifiedType1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, PI1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (ID as ID1) = ID1 ()
 val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 115.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.tPi'(ID,UnifiedType) (*#line 808.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, PI1left, UnifiedType1right), rest671)
end
|  ( 29, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.TPattern TPattern1, _, _)) :: ( _, ( _, LPI1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (TPattern as TPattern1) = TPattern1 ()
 val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 117.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.tLPi(TPattern,UnifiedType1,UnifiedType2) (*#line 815.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, LPI1left, UnifiedType2right), rest671)
end
|  ( 30, ( ( _, ( _, _, RCURLY1right)) :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: ( _, ( _, LCURLY1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 118.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.monad UnifiedType (*#line 823.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, LCURLY1left, RCURLY1right), rest671)
end
|  ( 31, ( ( _, ( MlyValue.AtomicType AtomicType1, AtomicType1left, AtomicType1right)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (AtomicType as AtomicType1) = AtomicType1 ()
 in ((*#line 119.45 "/Users/rjsimmon/r/celf/celf.grm"*) let val (a,s) = AtomicType
	                                            in Parse.Neg(Syntax.TAtomic'(a,objs2spine s)) end (*#line 829.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, AtomicType1left, AtomicType1right), rest671)
end
|  ( 32, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, UnifiedType1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 121.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.tensor(UnifiedType1,UnifiedType2) (*#line 836.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, UnifiedType1left, UnifiedType2right), rest671)
end
|  ( 33, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => ((*#line 122.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.one (*#line 843.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 2, ( result, ONE1left, ONE1right), rest671)
end
|  ( 34, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, EXISTS1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (ID as ID1) = ID1 ()
 val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 123.49 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.exists(ID,UnifiedType1,UnifiedType2) (*#line 847.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, EXISTS1left, UnifiedType2right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.UnifiedType UnifiedType1, _, UnifiedType1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, EXISTS1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (ID as ID1) = ID1 ()
 val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 124.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.exists'(ID,UnifiedType) (*#line 855.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, EXISTS1left, UnifiedType1right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.UnifiedType UnifiedType2, _, UnifiedType2right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.TPattern TPattern1, _, _)) :: ( _, ( _, LEXISTS1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (TPattern as TPattern1) = TPattern1 ()
 val  UnifiedType1 = UnifiedType1 ()
 val  UnifiedType2 = UnifiedType2 ()
 in ((*#line 126.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.lexists(TPattern,UnifiedType1,UnifiedType2) (*#line 862.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, LEXISTS1left, UnifiedType2right), rest671)
end
|  ( 37, ( ( _, ( MlyValue.UnifiedType UnifiedType1, _, UnifiedType1right)) :: ( _, ( _, AFF1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 127.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.aff UnifiedType (*#line 870.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, AFF1left, UnifiedType1right), rest671)
end
|  ( 38, ( ( _, ( MlyValue.UnifiedType UnifiedType1, _, UnifiedType1right)) :: ( _, ( _, BANG1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 128.45 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.bang UnifiedType (*#line 876.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, BANG1left, UnifiedType1right), rest671)
end
|  ( 39, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.UnifiedType (fn _ => let val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 in ((*#line 129.45 "/Users/rjsimmon/r/celf/celf.grm"*) UnifiedType (*#line 882.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.Obj Obj1, _, Obj1right)) :: _ :: ( _, ( MlyValue.UnifiedType UnifiedType1, _, _)) :: _ :: ( _, ( MlyValue.OPattern OPattern1, _, _)) :: ( _, ( _, LAMBDA1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (OPattern as OPattern1) = OPattern1 ()
 val  (UnifiedType as UnifiedType1) = UnifiedType1 ()
 val  (Obj as Obj1) = Obj1 ()
 in ((*#line 132.47 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.lamConstr(OPattern,UnifiedType,Obj) (*#line 888.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LAMBDA1left, Obj1right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.Obj Obj1, _, Obj1right)) :: _ :: ( _, ( MlyValue.OPattern OPattern1, _, _)) :: ( _, ( _, LAMBDA1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (OPattern as OPattern1) = OPattern1 ()
 val  (Obj as Obj1) = Obj1 ()
 in ((*#line 133.44 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.LLam'(OPattern,Obj) (*#line 896.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LAMBDA1left, Obj1right), rest671)
end
|  ( 42, ( ( _, ( _, _, RANGLE1right)) :: ( _, ( MlyValue.Obj Obj2, _, _)) :: _ :: ( _, ( MlyValue.Obj Obj1, _, _)) :: ( _, ( _, LANGLE1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  Obj1 = Obj1 ()
 val  Obj2 = Obj2 ()
 in ((*#line 134.44 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.AddPair'(Obj1,Obj2) (*#line 903.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LANGLE1left, RANGLE1right), rest671)
end
|  ( 43, ( ( _, ( _, _, RCURLY1right)) :: ( _, ( MlyValue.ExpObj ExpObj1, _, _)) :: ( _, ( _, LCURLY1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (ExpObj as ExpObj1) = ExpObj1 ()
 in ((*#line 135.44 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Monad' ExpObj (*#line 910.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LCURLY1left, RCURLY1right), rest671)
end
|  ( 44, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 136.44 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.headToObj(Syntax.Const(ID)) (*#line 916.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, ID1left, ID1right), rest671)
end
|  ( 45, ( ( _, ( MlyValue.MonadObj MonadObj1, _, MonadObj1right)) :: ( _, ( MlyValue.Obj Obj1, Obj1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 val  (MonadObj as MonadObj1) = MonadObj1 ()
 in ((*#line 137.44 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.app(Obj,MonadObj) (*#line 922.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, Obj1left, MonadObj1right), rest671)
end
|  ( 46, ( ( _, ( _, _, PROJLEFT1right)) :: ( _, ( MlyValue.Obj Obj1, Obj1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 138.44 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.projLeft Obj (*#line 929.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, Obj1left, PROJLEFT1right), rest671)
end
|  ( 47, ( ( _, ( _, _, PROJRIGHT1right)) :: ( _, ( MlyValue.Obj Obj1, Obj1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 139.44 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.projRight Obj (*#line 935.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, Obj1left, PROJRIGHT1right), rest671)
end
|  ( 48, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.Obj Obj1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 140.44 "/Users/rjsimmon/r/celf/celf.grm"*) Obj (*#line 941.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 49, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.AsyncType AsyncType1, _, _)) :: _ :: ( _, ( MlyValue.Obj Obj1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 val  (AsyncType as AsyncType1) = AsyncType1 ()
 in ((*#line 141.44 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Constraint'(Obj,AsyncType) (*#line 947.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 50, ( ( _, ( _, UNDERSCORE1left, UNDERSCORE1right)) :: rest671)) => let val  result = MlyValue.Obj (fn _ => ((*#line 142.44 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.blank() (*#line 954.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 4, ( result, UNDERSCORE1left, UNDERSCORE1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.ExpObj ExpObj1, _, ExpObj1right)) :: _ :: ( _, ( MlyValue.Obj Obj1, _, _)) :: _ :: _ :: ( _, ( MlyValue.OPattern OPattern1, _, _)) :: _ :: ( _, ( _, LET1left, _)) :: rest671)) => let val  result = MlyValue.ExpObj (fn _ => let val  (OPattern as OPattern1) = OPattern1 ()
 val  (Obj as Obj1) = Obj1 ()
 val  (ExpObj as ExpObj1) = ExpObj1 ()
 in ((*#line 145.52 "/Users/rjsimmon/r/celf/celf.grm"*) Parse.letredex(OPattern,Obj,ExpObj) (*#line 958.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, LET1left, ExpObj1right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.MonadObj MonadObj1, MonadObj1left, MonadObj1right)) :: rest671)) => let val  result = MlyValue.ExpObj (fn _ => let val  (MonadObj as MonadObj1) = MonadObj1 ()
 in ((*#line 146.52 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Mon'(MonadObj) (*#line 966.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, MonadObj1left, MonadObj1right), rest671)
end
|  ( 53, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.ExpObj ExpObj1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.ExpObj (fn _ => let val  (ExpObj as ExpObj1) = ExpObj1 ()
 in ((*#line 147.52 "/Users/rjsimmon/r/celf/celf.grm"*) ExpObj (*#line 972.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 54, ( ( _, ( _, _, RBRACKET1right)) :: ( _, ( MlyValue.MonadObj MonadObj2, _, _)) :: _ :: ( _, ( MlyValue.MonadObj MonadObj1, _, _)) :: ( _, ( _, LBRACKET1left, _)) :: rest671)) => let val  result = MlyValue.MonadObj (fn _ => let val  MonadObj1 = MonadObj1 ()
 val  MonadObj2 = MonadObj2 ()
 in ((*#line 150.47 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.DepPair'(MonadObj1,MonadObj2) (*#line 978.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, LBRACKET1left, RBRACKET1right), rest671)
end
|  ( 55, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.MonadObj (fn _ => ((*#line 151.47 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.One' (*#line 985.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 6, ( result, ONE1left, ONE1right), rest671)
end
|  ( 56, ( ( _, ( MlyValue.Obj Obj1, Obj1left, Obj1right)) :: rest671)) => let val  result = MlyValue.MonadObj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 152.47 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Down'(Obj) (*#line 989.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, Obj1left, Obj1right), rest671)
end
|  ( 57, ( ( _, ( MlyValue.Obj Obj1, _, Obj1right)) :: ( _, ( _, AFF1left, _)) :: rest671)) => let val  result = MlyValue.MonadObj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 153.47 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Affi'(Obj) (*#line 995.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, AFF1left, Obj1right), rest671)
end
|  ( 58, ( ( _, ( MlyValue.Obj Obj1, _, Obj1right)) :: ( _, ( _, BANG1left, _)) :: rest671)) => let val  result = MlyValue.MonadObj (fn _ => let val  (Obj as Obj1) = Obj1 ()
 in ((*#line 154.47 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.Bang'(Obj) (*#line 1001.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, BANG1left, Obj1right), rest671)
end
|  ( 59, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => ((*#line 157.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.POne' (*#line 1007.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 7, ( result, ONE1left, ONE1right), rest671)
end
|  ( 60, ( ( _, ( _, _, RBRACKET1right)) :: ( _, ( MlyValue.OPatternPair OPatternPair1, _, _)) :: ( _, ( _, LBRACKET1left, _)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => let val  (OPatternPair as OPatternPair1) = OPatternPair1 ()
 in ((*#line 158.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PDepTensor' OPatternPair (*#line 1011.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, LBRACKET1left, RBRACKET1right), rest671)
end
|  ( 61, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 159.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PDown' ID (*#line 1017.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, ID1left, ID1right), rest671)
end
|  ( 62, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: ( _, ( _, AFF1left, _)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 160.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PAffi' ID (*#line 1023.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, AFF1left, ID1right), rest671)
end
|  ( 63, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: ( _, ( _, BANG1left, _)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 161.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PBang' ID (*#line 1029.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, BANG1left, ID1right), rest671)
end
|  ( 64, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.OPattern OPattern1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.OPattern (fn _ => let val  (OPattern as OPattern1) = OPattern1 ()
 in ((*#line 162.36 "/Users/rjsimmon/r/celf/celf.grm"*) OPattern (*#line 1035.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 65, ( ( _, ( MlyValue.OPatternPair OPatternPair1, _, OPatternPair1right)) :: _ :: ( _, ( MlyValue.OPattern OPattern1, OPattern1left, _)) :: rest671)) => let val  result = MlyValue.OPatternPair (fn _ => let val  (OPattern as OPattern1) = OPattern1 ()
 val  (OPatternPair as OPatternPair1) = OPatternPair1 ()
 in ((*#line 165.33 "/Users/rjsimmon/r/celf/celf.grm"*) (OPattern, Syntax.PDepTensor' OPatternPair) (*#line 1041.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, OPattern1left, OPatternPair1right), rest671)
end
|  ( 66, ( ( _, ( MlyValue.OPattern OPattern2, _, OPattern2right)) :: _ :: ( _, ( MlyValue.OPattern OPattern1, OPattern1left, _)) :: rest671)) => let val  result = MlyValue.OPatternPair (fn _ => let val  OPattern1 = OPattern1 ()
 val  OPattern2 = OPattern2 ()
 in ((*#line 166.33 "/Users/rjsimmon/r/celf/celf.grm"*) (OPattern1, OPattern2) (*#line 1048.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, OPattern1left, OPattern2right), rest671)
end
|  ( 67, ( ( _, ( _, ONE1left, ONE1right)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => ((*#line 169.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.POne' (*#line 1055.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 9, ( result, ONE1left, ONE1right), rest671)
end
|  ( 68, ( ( _, ( _, _, RBRACKET1right)) :: ( _, ( MlyValue.TPatternPair TPatternPair1, _, _)) :: ( _, ( _, LBRACKET1left, _)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => let val  (TPatternPair as TPatternPair1) = TPatternPair1 ()
 in ((*#line 170.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PDepTensor' TPatternPair (*#line 1059.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 9, ( result, LBRACKET1left, RBRACKET1right), rest671)
end
|  ( 69, ( ( _, ( _, UNDERSCORE1left, UNDERSCORE1right)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => ((*#line 171.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PDown' () (*#line 1065.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 9, ( result, UNDERSCORE1left, UNDERSCORE1right), rest671)
end
|  ( 70, ( ( _, ( _, _, UNDERSCORE1right)) :: ( _, ( _, AFF1left, _)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => ((*#line 172.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PAffi' () (*#line 1069.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 9, ( result, AFF1left, UNDERSCORE1right), rest671)
end
|  ( 71, ( ( _, ( _, _, UNDERSCORE1right)) :: ( _, ( _, BANG1left, _)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => ((*#line 173.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PBang' NONE (*#line 1073.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
))
 in ( LrTable.NT 9, ( result, BANG1left, UNDERSCORE1right), rest671)
end
|  ( 72, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: ( _, ( _, BANG1left, _)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 174.36 "/Users/rjsimmon/r/celf/celf.grm"*) Syntax.PBang' (SOME ID) (*#line 1077.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 9, ( result, BANG1left, ID1right), rest671)
end
|  ( 73, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.TPattern TPattern1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.TPattern (fn _ => let val  (TPattern as TPattern1) = TPattern1 ()
 in ((*#line 175.36 "/Users/rjsimmon/r/celf/celf.grm"*) TPattern (*#line 1083.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 9, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 74, ( ( _, ( MlyValue.TPatternPair TPatternPair1, _, TPatternPair1right)) :: _ :: ( _, ( MlyValue.TPattern TPattern1, TPattern1left, _)) :: rest671)) => let val  result = MlyValue.TPatternPair (fn _ => let val  (TPattern as TPattern1) = TPattern1 ()
 val  (TPatternPair as TPatternPair1) = TPatternPair1 ()
 in ((*#line 178.33 "/Users/rjsimmon/r/celf/celf.grm"*) (TPattern, Syntax.PDepTensor' TPatternPair) (*#line 1089.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 10, ( result, TPattern1left, TPatternPair1right), rest671)
end
|  ( 75, ( ( _, ( MlyValue.TPattern TPattern2, _, TPattern2right)) :: _ :: ( _, ( MlyValue.TPattern TPattern1, TPattern1left, _)) :: rest671)) => let val  result = MlyValue.TPatternPair (fn _ => let val  TPattern1 = TPattern1 ()
 val  TPattern2 = TPattern2 ()
 in ((*#line 179.33 "/Users/rjsimmon/r/celf/celf.grm"*) (TPattern1, TPattern2) (*#line 1096.1 "/Users/rjsimmon/r/celf/celf.grm.sml"*)
)
end)
 in ( LrTable.NT 10, ( result, TPattern1left, TPattern2right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.Program x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : Clf_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(ParserData.MlyValue.ID (fn () => i),p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(ParserData.MlyValue.VOID,p1,p2))
fun PI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(ParserData.MlyValue.VOID,p1,p2))
fun DOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(ParserData.MlyValue.VOID,p1,p2))
fun UNDERSCORE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(ParserData.MlyValue.VOID,p1,p2))
fun LOLLI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(ParserData.MlyValue.VOID,p1,p2))
fun BACKLOLLI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(ParserData.MlyValue.VOID,p1,p2))
fun AMPH (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(ParserData.MlyValue.VOID,p1,p2))
fun LCURLY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(ParserData.MlyValue.VOID,p1,p2))
fun RCURLY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(ParserData.MlyValue.VOID,p1,p2))
fun TENSOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(ParserData.MlyValue.VOID,p1,p2))
fun ONE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(ParserData.MlyValue.VOID,p1,p2))
fun EXISTS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(ParserData.MlyValue.VOID,p1,p2))
fun LAMBDA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(ParserData.MlyValue.VOID,p1,p2))
fun LANGLE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(ParserData.MlyValue.VOID,p1,p2))
fun RANGLE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(ParserData.MlyValue.VOID,p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(ParserData.MlyValue.VOID,p1,p2))
fun EQUAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(ParserData.MlyValue.VOID,p1,p2))
fun PROJLEFT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(ParserData.MlyValue.VOID,p1,p2))
fun PROJRIGHT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(ParserData.MlyValue.VOID,p1,p2))
fun LBRACKET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(ParserData.MlyValue.VOID,p1,p2))
fun RBRACKET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(ParserData.MlyValue.VOID,p1,p2))
fun ARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(ParserData.MlyValue.VOID,p1,p2))
fun BACKARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(ParserData.MlyValue.VOID,p1,p2))
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(ParserData.MlyValue.VOID,p1,p2))
fun QUERY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(ParserData.MlyValue.VOID,p1,p2))
fun NUM (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(ParserData.MlyValue.NUM (fn () => i),p1,p2))
fun LPI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(ParserData.MlyValue.VOID,p1,p2))
fun LEXISTS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(ParserData.MlyValue.VOID,p1,p2))
fun AFFLOLLI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(ParserData.MlyValue.VOID,p1,p2))
fun BACKAFFLOLLI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(ParserData.MlyValue.VOID,p1,p2))
fun BANG (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(ParserData.MlyValue.VOID,p1,p2))
fun AFF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(ParserData.MlyValue.VOID,p1,p2))
fun APP (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(ParserData.MlyValue.VOID,p1,p2))
end
end
