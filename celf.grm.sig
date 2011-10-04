signature Clf_TOKENS =
sig
type ('a,'b) token
type svalue
val APP:  'a * 'a -> (svalue,'a) token
val AFF:  'a * 'a -> (svalue,'a) token
val BANG:  'a * 'a -> (svalue,'a) token
val BACKAFFLOLLI:  'a * 'a -> (svalue,'a) token
val AFFLOLLI:  'a * 'a -> (svalue,'a) token
val LEXISTS:  'a * 'a -> (svalue,'a) token
val LPI:  'a * 'a -> (svalue,'a) token
val NUM: (int) *  'a * 'a -> (svalue,'a) token
val QUERY:  'a * 'a -> (svalue,'a) token
val EOF:  'a * 'a -> (svalue,'a) token
val RPAREN:  'a * 'a -> (svalue,'a) token
val LPAREN:  'a * 'a -> (svalue,'a) token
val BACKARROW:  'a * 'a -> (svalue,'a) token
val ARROW:  'a * 'a -> (svalue,'a) token
val RBRACKET:  'a * 'a -> (svalue,'a) token
val LBRACKET:  'a * 'a -> (svalue,'a) token
val PROJRIGHT:  'a * 'a -> (svalue,'a) token
val PROJLEFT:  'a * 'a -> (svalue,'a) token
val IN:  'a * 'a -> (svalue,'a) token
val EQUAL:  'a * 'a -> (svalue,'a) token
val LET:  'a * 'a -> (svalue,'a) token
val COMMA:  'a * 'a -> (svalue,'a) token
val RANGLE:  'a * 'a -> (svalue,'a) token
val LANGLE:  'a * 'a -> (svalue,'a) token
val LAMBDA:  'a * 'a -> (svalue,'a) token
val EXISTS:  'a * 'a -> (svalue,'a) token
val ONE:  'a * 'a -> (svalue,'a) token
val TENSOR:  'a * 'a -> (svalue,'a) token
val RCURLY:  'a * 'a -> (svalue,'a) token
val LCURLY:  'a * 'a -> (svalue,'a) token
val AMPH:  'a * 'a -> (svalue,'a) token
val BACKLOLLI:  'a * 'a -> (svalue,'a) token
val LOLLI:  'a * 'a -> (svalue,'a) token
val UNDERSCORE:  'a * 'a -> (svalue,'a) token
val DOT:  'a * 'a -> (svalue,'a) token
val COLON:  'a * 'a -> (svalue,'a) token
val PI:  'a * 'a -> (svalue,'a) token
val TYPE:  'a * 'a -> (svalue,'a) token
val ID: (string) *  'a * 'a -> (svalue,'a) token
end
signature Clf_LRVALS=
sig
structure Tokens : Clf_TOKENS
structure ParserData:PARSER_DATA
sharing type ParserData.Token.token = Tokens.token
sharing type ParserData.svalue = Tokens.svalue
end
