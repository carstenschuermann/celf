structure SimpleDB = struct

open Syntax
structure T = ClfTerms

fun transA (typA: AsyncType.t) = 
  case AsyncType.prj typA of 
    TLPi (_, typS, typA) => T.Lolli' (transS typS, transA typA)
  | AddProd (typA1, typA2) => T.With' (transA typA1, transA typA2)
  | TMonad typS => T.Monad' (transS typS)
  | TAtomic (a, _) => T.Atom' (Symbol.symbol a)
  | TAbbrev (_, typA) => transA typA

and transS (typS: SyncType.t) = 
  case SyncType.prj typS of 
    LExists (_, typS1, typS2) => T.Tensor' (transS typS1, transS typS2)
  | TOne => T.One'
  | TDown typA => T.Down' (T.Lin', transA typA)
  | TAffi typA => T.Down' (T.Aff', transA typA)
  | TBang typA => T.Down' (T.Per', transA typA)

fun add dec = 
  let val print = print in
    case dec of
      ConstDecl (a, num_implicit_pis, Ki _) => 
        let 
          val x = Symbol.symbol a
        in
          print ("==SimpleDB: Type Declaration " ^ a ^ "==\n") 
          ; ClfTables.assertTyp x
        end
    | ConstDecl (c, num_implicit_pis, Ty typA) => 
        let 
          val x = Symbol.symbol c
          val ty = transA typA
        in 
          print ("==SimpleDB: Constant Declaration ")
          ; print (c ^ ": " ^ T.strNeg ty ^ "==\n")
          ; ClfTables.assertCon (x, ty)
        end
    | TypeAbbrev _ => () (* Nothing to do *)
    | ObjAbbrev _ => () (* Nothing to do *)
    | Query _ => () (* Nothing to do *)
  end

end
